<?php

class UserManager
{
    private PDO $pdo;
    public function __construct(PDO $pdo){
        $this->pdo = $pdo;
    }
        public function register( string $name, string $email, string $password, string $gender, int $age, string $bio, int $xp)
        {
            $hash = password_hash($password, PASSWORD_BCRYPT);

            $sql = "INSERT INTO users (usr_name, usr_email, usr_password, usr_gender, usr_age, usr_bio, usr_xp, usr_role)
                    VALUES (:name, :email, :password, :gender, :age, :bio, :xp, :role)";

            $stmt = $this->pdo->prepare($sql);

            return $stmt->execute([
                'name' => $name,
                'email' => $email,
                'password' => $hash,
                'xp' => $xp,
                'gender' => $gender,
                'age'  => $age,
                'bio'  => $bio,
            ]);

        }
        public function login(string $email, string $password){
        $sql = "SELECT * FROM users WHERE email = :email";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$email]);
        $user = $stmt->fetch();

        if ($user && password_verify($password, $user['usr_password'])) {
            try{
                $token = bin2hex(random_bytes(32));
                return ["Estado" => 'successo', "token" => $token,
                    'user' => [
                        'id' => $user['usr_id'],
                        'name' => $user['usr_name'],
                    ]
                ];

            } catch (\Exception $e) {
                return ['status' => 'error', 'message' => 'Erro ao gerar Token'];
            }
        }

        return ['status' => 'error', 'message' => 'Credencias inválidas'];
        }
}
