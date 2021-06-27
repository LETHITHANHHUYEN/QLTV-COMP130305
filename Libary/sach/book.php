<!DOCTYPE html>
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
</head>

<body>
    <div id="slideout-menu">
        <ul>
            <li>
                <a href="../index.php">Home</a>
            </li>
            <li>
                <a href="../about.php">About</a>
            </li>
            <li>
                <a href="../user.php">
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
            <a href="index.php">
                <img src="../img/logo.png" alt="">
            </a>
        </div>
        <div id="menu-icon">
            <i class="fas fa-bars"></i>
        </div>
        <ul>
            <li>
                <a class="active" href="../index.php">Home</a>
            </li>
            <li>
                <a href="../about.php">About</a>
            </li>
            <li>
                <div id="user-icon">
                    <a href="../user.php">
                        <i class="fas fa-user"></i>
                    </a>
                </div>
            </li>
            <li>
                <div id="search-icon">
                    <i class="fas fa-search"></i>
                </div>
            </li>
        </ul>
    </nav> <br><br><br><br>
    <div>
        <?php
        try {
            $pdo = new PDO('mysql:host=localhost;port=3306;dbname=qltv', 'root', '');
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $id = $_POST['id'] ?? NULL;

            if (!$id) {
                header('Location: dsSach.php');
                exit();
            }

            $statement = $pdo->prepare("SELECT *, author_name, category from books join categories lo on lo.book_id = books.id join authors tg on tg.book_id = books.id where id =:id");
            $statement->bindValue(':id', $id);
            $statement->execute();
            $book = $statement->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        } ?>

        <tbody>
            <h3 style="text-align: center;">CHI TIẾT SÁCH</h3>
            <?php foreach ($book as $i => $sach) { ?>
                <div style="text-align: center;">
                    <div>
                        <?php if ($sach['thumbnailUrl']) : ?>
                            <img src="<?php echo $sach['thumbnailUrl'] ?>" alt="<?php echo $sach['title'] ?>" class="product-img">
                        <?php endif; ?>
                    </div>
                    <div><?php echo $sach['title'] ?></div>
                    <div><?php echo $sach['author_name'] ?></div>
                    <div><?php echo $sach['category'] ?></div>
                    <div><?php echo $sach['status'] ?></div>
                    <div><?php echo $sach["shortDescription"] ?></div>
                    <div><?php echo $sach['longDescription'] ?></div>
                </div>
            <?php } ?>
        </tbody>
    </div>
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

    <script src="main.js"></script>
</body>

</html>