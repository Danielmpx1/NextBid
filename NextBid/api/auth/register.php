<?php

header('Content-Type: application/json');
/**@var PDO $pdo */
require_once "../../config/db.php";
require_once '../../includes/UserManager.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['status' => 'error', 'message' => 'Método não permitido.']);
    exit;
}

$userMgr = new UserManager($pdo);
    $name = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_SPECIAL_CHARS);
    $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
    $password = $_POST['password'] ??'';
    $gender = $_POST['gender'] ?? ''; //Masculino, feminino ou algum pokemon
    $age = (int)$_POST['age'] ?? 0;
    $bio = filter_input(INPUT_POST, 'bio', FILTER_SANITIZE_SPECIAL_CHARS) ?? '';

    $xpInicial = rand(10, 50);

   if (!$name || !$email || strlen($password) < 8) {
       echo json_encode(['satus' => 'error', 'message' => 'Dados inválidos ou password Fraca.']);
       exit;
   }
   try {
       $sucesso = $userMgr->register($name, $email, $password, $gender, $age, $bio, $xpInicial);
       if (!$sucesso) {
           echo json_encode([
               'satus' => 'Sucesso',
               'message' => 'Utilizador registado com sucesso! Parabéns recebeste '. $xpInicial . 'XP de bónus.']);
           exit;
       }

} catch (Exception $e) {
       http_response_code(400);
       echo json_encode(['satus' => 'error', 'message' => 'Erro: Verifique o email em uso.']);
   }