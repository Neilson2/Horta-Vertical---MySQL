<?php
$servername = "root@localhost";
$username = "root";
$password = "";
$dbname = "HortaVertical";

// Criando a conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar a conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

echo "Conectado com sucesso!";
?>
