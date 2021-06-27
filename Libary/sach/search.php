<?php

$pdo = new PDO('mysql:host=localhost;port=3306;dbname=qltv', 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$bookname = $_POST['book_name'] ?? NULL;
if (!$bookname) {
    header('location: ../index.php');
    exit();
}
$tmp = $pdo->prepare('SELECT title from books where title=:title');
$tmp->bindValue(':title', $bookname);
$tmp->execute();
$checkbook = $tmp->fetchAll(PDO::FETCH_ASSOC);

if (empty($checkbook)) {
    echo "Không tìm thấy sách";
}
$statement = $pdo->prepare('SELECT id, title, category, thumbnailUrl, author_name,shortDescription from books join categories lo on lo.book_id = books.id join authors tg on tg.book_id = books.id where title=:title');
$statement->bindValue(':title', $bookname);
$statement->execute();

$books = $statement->fetchAll(PDO::FETCH_ASSOC);

?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="app.css" rel="stylesheet" />
    <title>Sach</title>
</head>

<body>
    <h1>Danh Sách Sách</h1>
    </p>
    </p>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Hình ảnh</th>
                <th scope="col">Tên Sách</th>
                <th scope="col">Tác Giả</th>
                <th scope="col">Thế loại</th>
                <th scope="col">Mô tả </th>
                <th scope="col">Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($books as $i => $book) { ?>
                <tr>
                    <th scope="row"><?php echo $i + 1 ?></th>
                    <td>
                        <?php if ($book['thumbnailUrl']) : ?>
                            <img src="<?php echo $book['thumbnailUrl'] ?>" alt="<?php echo $book['title'] ?>" class="product-img">
                        <?php endif; ?>
                    </td>
                    <td><?php echo $book['title'] ?></td>
                    <td><?php echo $book['author_name'] ?></td>
                    <td><?php echo $book['category'] ?></td>
                    <td><?php echo $book["shortDescription"] ?></td>
                    <td>

                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</body>

</html>