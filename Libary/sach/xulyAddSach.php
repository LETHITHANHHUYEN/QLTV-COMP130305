<?php

require_once "function.php";

$pdo = new PDO('mysql:host=localhost;dbname=qltv', 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$errors = [];


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  
    $status='Available';
    $bname = $_POST['tensach'];
    $auth = $_POST['tacgia'];
    $categ = $_POST['maloai'];
    $sd = $_POST['shortdes'];
    $ld = $_POST['longdes'];
    $pages = $_POST['page'];
    $images = $_POST['url'];
    $id =randomstring(8);

        $statement = $pdo->prepare("INSERT INTO `books` (`id`, `title`, `pagec`, `thumbnailUrl`, `shortDescription`, `longDescription`, `status`) VALUES (:id,:bname,:pages,:images,:sd,:ld,:st);");
        $statement->bindValue(':id', $id,PDO::PARAM_STR);
        $statement->bindValue(':bname', $bname,PDO::PARAM_STR);
        $statement->bindValue(':pages', $pages,PDO::PARAM_INT);
        $statement->bindValue(':images', $images,PDO::PARAM_STR);
        $statement->bindValue(':sd', $sd,PDO::PARAM_STR);
        $statement->bindValue(':ld', $ld,PDO::PARAM_STR);
        $statement->bindValue(':st', $status,PDO::PARAM_STR);

        $statement->execute();

       $statement2= $pdo->prepare("INSERT INTO authors (book_id, author_name) VALUES (:id,:aname)");
        $statement2->bindValue(':id', $id);
        $statement2->bindValue(':aname', $auth);

        $statement2->execute();

        $statement3= $pdo->prepare("INSERT INTO categories (book_id, category) VALUES (:id,:category)");
        $statement3->bindValue(':id', $id);
        $statement3->bindValue(':category', $categ);

        $statement3->execute();

        header('Location: ThemSach.php');

}
