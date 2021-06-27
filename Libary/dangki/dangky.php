<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto|Roboto+Condensed|Roboto+Slab" rel="stylesheet">
    <link rel="stylesheet" href="../style.css">
    <link rel="stylesheet" href="Input.html">
    <title>Account - Wohoo Libary</title>
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
        </ul>
    </nav>

    <div id="searchbox">
        <input type="text" placeholder="Search">
    </div>
    <main>
        <div>
            <center>
                <form method="post" action="dangky.php">
                    <table>
                        <caption>
                            <h2 class="page-heading">Đăng ký thành viên</h2>
                        </caption>
                        <tr>
                            <td><b>Họ và tên:</b></td>
                            <td><input type="text" placeholder="Nhập họ và tên" name="hoten" required></td>
                        </tr>
                        <tr>
                            <td><b>Tên đăng nhập:</b></td>
                            <td><input type="text" placeholder="Nhập tên đăng nhập" name="username" required></td>
                        </tr>

                        <tr>
                            <td><b>Mật khẩu:</b></td>
                            <td><input type="password" placeholder="Nhập mật khẩu" name="password" required></td>
                        </tr>

                        <tr>
                            <td><b>Ngày sinh:</b></td>
                            <td><input type="date" name="ngsinh" required></td>
                        </tr>
                        <tr>
                            <td><b>Email:</b></td>
                            <td><input type="text" placeholder="Nhập email" name="email" required></td>
                        </tr>
                        <tr>
                            <td><b>Số điện thoại:</b></td>
                            <td><input type="text" placeholder="Nhập số điện thoại" name="phone" required></td>
                        </tr>
                    </table>
                    <button type="submit" name="dangky" value="Đăng Ký" style="background-color: green;">Đăng ký</button>
                    <?php require 'xuly.php'; ?>
                </form>
            </center>
        </div>

        <footer>
            <div id="left-footer">
                <h3>Quick Links</h3>
                <p>
                <ul>
                    <li>
                        <a href="../index.html">Home</a>
                    </li>
                    <li>
                        <a href="../about.html">About</a>
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
    </main>
</body>

</html>