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
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="navbar.css">
    <link rel="stylesheet" href="footer.css">
    <link rel="stylesheet" href="../style.css">
    <title>Sach</title>
</head>

<body>
    <div id="slideout-menu">
        <ul>
            <li>
                <a href="./index.html">Home</a>
            </li>
            <li>
                <a href="./about.html">About</a>
            </li>
            <li>
                <a href="./user.html">
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
            <a href="./index.html">
                <img src="img/logo.png" alt="">
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
                <a href="./about.html">About</a>
            </li>
            <li>
                <div id="user-icon">
                    <a href="./user.html">
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
    <main>
        <div id="banner">
            <h1>Wohoo Libary</h1><br>
            <h3>Knowledge is future</h3>
        </div><br>
        <div text-align: center; background:crimson; color: white; border-color: black;>
            <h1 style="background-color: crimson; color:white; border-color:black; text-align: center;">Trang ADMIN</h1>
        </div><br>
        <div id="right-footer">
            <button style="font-size:large;background-color:white;font-family:Time new roman;text-align:center" class="btn btn-sm btn-success"><a href="./sach/dsSachAdmin.php">ALL BOOKS </a></button>
            <button style="font-size:large;background-color:white;font-family:Time new roman;text-align:center" class="btn btn-sm btn-success"><a href="./sach/ThemSach.php">THÊM SÁCH </a></button>
            <button style="font-size:large;background-color:white;font-family:Time new roman;text-align:center" class="btn btn-sm btn-success"><a href="./sach/SuaInfoSach.php">SỬA THÔNG TIN SÁCH </a></button>
        </div><br><br>
        <footer>
            <div id="left-footer">
                <h3>Quick Links</h3>
                <p>
                <ul>
                    <li>
                        <a href="./index.html">Home</a>
                    </li>
                    <li>
                        <a href="./about.html">About</a>
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
</body>

</html>