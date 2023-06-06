<?php
include('./conexao.php');

$nome = $_POST['nome'];
$email = $_POST['email'];
$senha = $_post['senha'];


$sql = "INSERT INTO usuario(nome,email,senha)
    values('$nome','$email','$senha')";
if ($conn->multi_query($sql) === TRUE) {
    echo "Novos registros criados com sucesso<br>";
} else {
    echo "Erro: " . $sql . "<br>" . $conn->error . "<br>";
}