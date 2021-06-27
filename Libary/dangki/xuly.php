
<?php
header('Content-Type: text/html; charset=utf-8');
// Kết nối cơ sở dữ liệu
$conn = mysqli_connect('localhost', 'root', '', 'qltv') or die('Lỗi kết nối');
mysqli_set_charset($conn, "utf8");
// Dùng isset để kiểm tra Form
if (isset($_POST['dangky'])) {
    $hoten = trim($_POST['hoten']);
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);
    $ngsinh = trim($_POST['ngsinh']);
    $email = trim($_POST['email']);
    $phone = trim($_POST['phone']);


    if (empty($hoten)) {
        array_push($errors, "Name is required");
    }
    if (empty($username)) {
        array_push($errors, "Username is required");
    }
    if (empty($ngsinh)) {
        array_push($errors, "DOB is required");
    }
    if (empty($email)) {
        array_push($errors, "Email is required");
    }
    if (empty($phone)) {
        array_push($errors, "Phone is required");
    }
    if (empty($password)) {
        array_push($errors, "Password is required");
    }

    // Kiểm tra username hoặc email có bị trùng hay không
    $sql = "SELECT * FROM thanhvien WHERE username = '$username' OR email = '$email'";

    // Thực thi câu truy vấn
    $result = mysqli_query($conn, $sql);

    // Nếu kết quả trả về lớn hơn 0 thì nghĩa là username hoặc email đã tồn tại trong CSDL
    if (mysqli_num_rows($result) > 0) {
        echo '<script language="javascript">alert("Bị trùng tên hoặc chưa nhập tên!"); window.location="dangky.php";</script>';

        // Dừng chương trình
        die();
    } else {
        $sql = "INSERT INTO thanhvien (username, password, hoten, ngsinh, email, phone) VALUES ('$username','$password','$hoten','$ngsinh','$email','$phone')";
        echo '<script language="javascript">alert("Đăng ký thành công!"); window.location="user.html";</script>';

        if (mysqli_query($conn, $sql)) {
            echo "Họ và tên: " . $_POST['hoten'] . "<br/>";
            echo "Tên đăng nhập: " . $_POST['username'] . "<br/>";
            echo "Mật khẩu: " . $_POST['password'] . "<br/>";
            echo "Ngày sinh: " . $_POST['ngsinh'] . "<br/>";
            echo "Email đăng nhập: " . $_POST['email'] . "<br/>";
            echo "Số điện thoại: " . $_POST['phone'] . "<br/>";
        } else {
            echo '<script language="javascript">alert("Có lỗi trong quá trình xử lý"); window.location="user.html";</script>';
        }
    }
}
