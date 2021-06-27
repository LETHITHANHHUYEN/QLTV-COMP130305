<?php

session_start();

// Kết nối cơ sở dữ liệu
$conn = mysqli_connect('localhost', 'root', '', 'qltv') or die('Lỗi kết nối');
mysqli_set_charset($conn, "utf8");

if (isset($_POST['dangnhap'])) {
	$username = trim($_POST['user']);
	$password = trim($_POST['pass']);
	if (empty($username)) {
		array_push($errors, "Username is required");
	}
	if (empty($password)) {
		array_push($errors, "Password is required");
	}

	$sql = "SELECT * FROM thanhvien WHERE username = '$username' AND password = '$password'";

	// Thực thi câu truy vấn
	$result = mysqli_query($conn, $sql);
	$row  = mysqli_fetch_array($result);
	//
	if (mysqli_num_rows($result) > 0) {
		if ($row['type'] == 0) {
			$_SESSION["username"] = $row['username'];
			$_SESSION["password"] = $row['password'];
			header("location:../admin.php");
		} else {
			$_SESSION["username"] = $row['username'];
			$_SESSION["password"] = $row['password'];
			header("location:../user/mainpage.php");
		}
	} else {
		echo '<script language="javascript">alert("Đăng nhập không thành công"); window.location="../user.html";</script>';
	}
}
