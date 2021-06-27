<?php
try{
$pdo = new PDO('mysql:host=localhost;port=3306;dbname=qltv', 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


$id = $_POST['id'] ?? NULL;

if(!$id){
    header('Location: hienthisach.php');
    exit();
}

$statement1 = $pdo->prepare('DELETE FROM authors WHERE book_id=:id');
$statement2 = $pdo->prepare('DELETE FROM categories WHERE book_id=:id');
$statement3 = $pdo->prepare('DELETE FROM books WHERE id=:id');

$statement1->bindValue(':id', $id);
$statement2->bindValue(':id', $id);
$statement3->bindValue(':id', $id);

$statement1->execute();
$statement2->execute();
$statement3->execute();

header("Location: hienthisach.php");
}
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}
