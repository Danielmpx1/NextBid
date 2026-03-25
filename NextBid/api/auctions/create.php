<?php

/** @var PDO $pdo */
header('Content-Type: application/json');
require_once '../../config/db.php';
require_once '../../includes/AuctionManager.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    exit(Json_encode(['status' => 'error', 'message' => 'método POST exigido']));
}

$userId = (int)$_POST['userId'] ?? 0;
$token = $_POST['token'] ?? '';

if ($userId <= 0 ||empty($token)) {
    exit(Json_encode(['status' => 'error', 'message' => 'Utilizador não autenticado']));
}

$uploadDir = '../../uploads/products';
if (!is_dir($uploadDir)) mkdir($uploadDir, 0777, true);

$imageName =  time() . '_' . $_FILES['image']['name'];
$uploadFile = $uploadDir .  basename($imageName);

if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadFile)) {
    exit(Json_encode(['status' => 'error', 'message' => 'errom ao carregar iamgem.']));
}

$auctionMgr = new AuctionManager($pdo);

$data = [
    'userId' => $userId,
    'name' => $_POST['name'],
    'description' => $_POST['description'],
    'condition' => $_POST['condition'],
    'startPrice' => $_POST['startPrice'],
    'location' => $_POST['location'],
    'latitude' => $_POST['latitude'],
    'longitude' => $_POST['longitude'],
    'categoryId' => $_POST['categoryId'],
    'ends_at' => $_POST['ends_at'],

];

$proctID = $auctionMgr->createAuction($data);

if ($proctID) {

    $auctionMgr->addProductImage($proctID, 'uploads/products/' . $imageName);
    echo json_encode(['status' => 'success', 'message' => 'Leilão criado!', 'id' => $proctID]);
} else {
    echo json_encode(['status' => 'error', 'message' => 'Falha ao criar leilão.']);

}
