<?php
$pdo = new PDO('mysql:host=localhost;port=3306;dbname=qltv', 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$ngaytra = date("y-m-d");
$id = $_POST['id'];
$statement = $pdo->prepare("UPDATE `phieumuon` SET `ngaytra`='2021-6-30' where book_id=:id");
$statement->bindValue(':id', $id);
$statement->execute();

$statement1 = $pdo->prepare("UPDATE `books` SET `status`='Available' WHERE id=:id");
$statement1->bindValue(':id', $id);
$statement1->execute();

header('location: dsSachAdmin.php');
