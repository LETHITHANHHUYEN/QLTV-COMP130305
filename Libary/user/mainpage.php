<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
    <link href="../sach/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="../main.js">
    <link rel="stylesheet" href="../footer.css">
    <link href="../style.css" rel="stylesheet" />
    <title>Wohoo Libary</title>
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
            <a href="../index.html">
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
        <form action="../sach/search.php" method="POST">
            <input type="text" placeholder="Search Here" name="book_name">
        </form>
    </div>

    <div id="banner">
        <h1>Wohoo Libary</h1><br>
        <h3>Knowleage is future</h3>
    </div><br>
    <div style="text-align: center;">
        <?php
        session_start();
        if (!isset($_SESSION['username'])) {
            header("location:../user.php");
        } else {
            echo "welcome " . $_SESSION['username'];
        }
        ?>
    </div>

    <div>
        <button style="text-align: center;font-size: 24px;float:left; border-radius: 10px; position:relative"><a href="../sach/dsSachUser.php">ALL BOOKS</a></button>
    </div><br><br>
    <footer>
        <div id="left-footer">
            <h3>Quick Links</h3>
            <p>
            <ul>
                <li>
                    <a href="index.html">Home</a>
                </li>
                <li>
                    <a href="about.html">About</a>
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