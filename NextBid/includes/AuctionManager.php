<?php

// Lógica de criação de produtos e cenas das imagens vasi ficar aqui

class AuctionManager{
    private PDO $pdo;
    public function __construct(PDO $pdo){
        $this->pdo = $pdo;
    }

    public function createAuction(array $data) : int|bool{
        $sql = "INSERT INTO products (
                    prd_name, prd_description, cat_id, prd_condition, 
                    prd_start_price, prd_location, prd_latitude, 
                    prd_longitude, prd_ends_at, usr_id
                ) VALUES (
                    :name, :desc, :cat, :cond, :price, :loc, :lat, :lng, :ends, :uid
                )";

        $stmt = $this->pdo->prepare($sql);
        $res = $stmt->execute([
            ':name' => $data['name'],
            ':desc' => $data['description'],
            ':cat' => $data['category'],
            ':cond' => $data['condition'],
            ':price' => $data['price'],
            ':loc' => $data['location'],
            ':lat' => $data['lat'],
            ':lng' => $data['lng'],
            ':ends' => $data['ends'],
            ':uid' => $data['uid']
        ]);

        return $res ? (int) $this->pdo->lastInsertId() : false;
    }


    publi function addProductImage(int $productId, String $path) : bool{
        $sql = "INSERT INTO product_images (img_path, prd_id) Values (?, ?)";
        return  $this->pdo->prepare($sql)->execute([$path, $productId]);
    }
}

