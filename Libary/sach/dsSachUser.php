<?php

$pdo = new PDO('mysql:host=localhost;port=3306;dbname=qltv', 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$statement = $pdo->prepare("SELECT id, title, category, thumbnailUrl, author_name,shortDescription, status from books join categories lo on lo.book_id = books.id join authors tg on tg.book_id = books.id GROUP BY books.id");
$statement->execute();
$books = $statement->fetchAll(PDO::FETCH_ASSOC);

$statement1 = $pdo->prepare("select category from categories GROUP BY category  ");
$statement1->execute();
$categories = $statement1->fetchAll(PDO::FETCH_ASSOC);
?>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
    <link href="../style.css" rel="stylesheet" />
    <link rel="stylesheet" href="../navbar.css">
    <link rel="stylesheet" href="../footer.css">
    <title>Sach</title>
</head>

<body>
    <div id="slideout-menu">
        <ul>
            <li>
                <a href="../index.html">Home</a>
            </li>
            <li>
                <a href="../about.html">About</a>
            </li>
            <li>
                <a href="../user.html">
                    <i class="fas fa-user"></i>
                </a>
            </li>
            <li>
                <input type="text" placeholder="Search">
            </li>
        </ul>
    </div>

    <nav>
        <div id="logo-img">
            <a href="index.html">
                <img src="../img/logo.png" alt="">
            </a>
        </div>
        <div id="menu-icon">
            <i class="fas fa-bars"></i>
        </div>
        <ul>
            <li>
                <a class="active" href="../index.html">Home</a>
            </li>
            <li>
                <a href="../about.html">About</a>
            </li>
            <li>
                <div id="user-icon">
                    <a href="../user.html">
                        <i class="fas fa-user"></i>
                    </a>
                </div>
            </li>
            <li>
                <div id="search-icon">
                    <i class="fas fa-search"></i>
                </div>
            </li>
            <li>
                <div>
                    <a style="float:right; color:white" href="../dangnhap/dangxuat.php">Đăng Xuất</a>
                </div>
            </li>
        </ul>
    </nav>

    <div id="searchbox">
        <form action="./search.php" method="POST">
            <input type="text" placeholder="Search Here" name="book_name">
        </form>
    </div>
    <div>
        <h1 style="text-align: center; background-color: crimson; color:white">
            LIST BOOKS
        </h1>
    </div>

    <main>
        <table class="table">
            <thead>
                <tr>
                    <th style="border-color:firebrick" scope="col">#</th>
                    <th style="border-color:firebrick" scope="col">Hình ảnh</th>
                    <th style="border-color:firebrick" scope="col">Tên Sách</th>
                    <th style="border-color:firebrick" scope="col">Tác Giả</th>
                    <th style="border-color:firebrick" scope="col">Thế loại</th>
                    <th style="border-color:firebrick" scope="col">Mô tả </th>
                    <th style="border-color:firebrick" scope="col">Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($books as $i => $book) { ?>
                    <tr>
                        <th style="border-color:firebrick" scope="row"><?php echo $i + 1 ?></th>
                        <td style="border-color:firebrick">
                            <?php if ($book['thumbnailUrl']) : ?>
                                <img src="<?php echo $book['thumbnailUrl'] ?>" alt="<?php echo $book['title'] ?>" class="product-img">
                            <?php endif; ?>
                        </td>
                        <td style="border-color:firebrick; font-size: large; color:darkslateblue"><?php echo $book['title'] ?></td>
                        <td style="border-color:firebrick; font-style:italic; color:indianred"><?php echo $book['author_name'] ?></td>
                        <td style="border-color:firebrick"><?php echo $book['category'] ?></td>
                        <td style="border-color:firebrick"><?php echo $book["shortDescription"] ?></td>
                        <td style="border-color:firebrick">
                            <form method="post" action="./book.php" style="display: inline-block">
                                <input type="hidden" name="id" value="<?php echo $book['id'] ?>" />
                                <button type="submit" class="btn btn-sm btn-outline-danger">Chi tiết sách</button>
                            </form>
                            <?php
                            if ($book['status'] == "Available") { ?>
                                <form method="post" action="muonsach.php" style="display: inline-block">
                                    <input type="hidden" name="id" value="<?php echo $book['id'] ?>" />
                                    <button type="submit" class="btn btn-sm btn-outline-primary" ?>Mượn sách</button>
                                </form>
                        </td>
                    <?php } ?>
                    </tr>
                <?php } ?>
            </tbody>
        </table><br>
        <footer>
            <div id="left-footer">
                <h3>Quick Links</h3>
                <p>
                <ul>
                    <li>
                        <a href="index.php">Home</a>
                    </li>
                    <li>
                        <a href="about.php">About</a>
                    </li>
                    <li>
                        <a href="#">Privacy Policy</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
                </p>
            </div>

            <div id="right-footer">
                <h3>Follow us on</h3>
                <div id="social-media-footer">
                    <ul>
                        <li>
                            <a href="#">
                                <i class="fab fa-facebook"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-github"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <p>This website is developed by do NOT drop</p>
            </div>
        </footer>

    </main>

    <script src="main.js"></script>
</body>>

</html>