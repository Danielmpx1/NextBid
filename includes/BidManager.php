<?php

class BidManager {
    private PDO $pdo;

    public function __construct(PDO $pdo) {
        $this->pdo = $pdo;
    }

    public function placeBid(int $userId, int $productId, float $amount): array {
        $stmt = $this->pdo->prepare("SELECT prd_start_price, usr_id, prd_status FROM products WHERE prd_id = ?");
        $stmt->execute([$productId]);
        $product = $stmt->fetch();

        if (!$product || $product['prd_status'] !== 'active') {
            return ['status' => 'error', 'message' => 'Este leilão já não está ativo.'];
        }

        if ($product['usr_id'] == $userId) {
            return ['status' => 'error', 'message' => 'Não podes licitar no teu próprio leilão.'];
        }

        $stmt = $this->pdo->prepare("SELECT MAX(bid_amount) as max_bid FROM bids WHERE prd_id = ?");
        $stmt->execute([$productId]);
        $currentMax = $stmt->fetch()['max_bid'];

        $minimoNecessario = $currentMax ?? $product['prd_start_price'];

        if ($amount <= $minimoNecessario) {
            return ['status' => 'error', 'message' => 'A tua licitação deve ser superior a ' . number_format($minimoNecessario, 2) . '€'];
        }

        $sql = "INSERT INTO bids (bid_amount, usr_id, prd_id) VALUES (?, ?, ?)";
        $this->pdo->prepare($sql)->execute([$amount, $userId, $productId]);

        require_once 'functions.php';
        atribuirXPAleatorio($this->pdo, $userId);

        return ['status' => 'success', 'message' => 'Licitação aceite! Ganhaste XP.'];
    }
}

