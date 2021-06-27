<?php
session_start();

$pdo = new PDO('mysql:host=localhost;port=3306;dbname=qltv', 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);




$id = $_POST['id'];
$username = $_SESSION['username'];
$ngaymuon = date("y-m-d");
$ngaytra = date('y-m-d', strtotime('next month'));
$tinhtrang = "Đang mượn";

$tmp = $pdo->prepare("SELECT username from thanhvien where username=:username");
$tmp->bindValue(':username', $username);
$tmp->execute();
$checkuser = $tmp->fetchAll(PDO::FETCH_ASSOC);
if (empty($checkuser)) {
    echo "<script>alert('Xin hãy đăng nhập');  window.location='../index.html';  </script>";
    exit();
}

$statement = $pdo->prepare("INSERT INTO phieumuon(`user`, `book_id`, `ngaymuon`, `ngaytra`, `tinhtrang`) VALUES (:user,:id,:nm,:nt,:tinhtrang)");
$statement->bindValue(':user', $username);
$statement->bindValue(':id', $id);
$statement->bindValue(':nm', $ngaymuon);
$statement->bindValue(':nt', $ngaytra);
$statement->bindValue(':tinhtrang', $tinhtrang);
$statement->execute();

$statement1 = $pdo->prepare("UPDATE `books` SET `status` = 'Unavailable' WHERE `books`.`id` = :id");
$statement1->bindValue(':id', $id);
$statement1->execute();
header('location: hienthisachuser.php');
