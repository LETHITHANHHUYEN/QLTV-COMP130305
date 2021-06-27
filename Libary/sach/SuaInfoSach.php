<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="style.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>
    <?php
    header('Content-Type: text/html; charset=utf-8');
    $conn = mysqli_connect('localhost', 'root', '', 'qltv') or die('Lỗi kết nối');
    mysqli_set_charset($conn, "utf8");
    #//$sql = "SELECT * from books";
    // Dùng isset để kiểm tra Form
    if (isset($_POST['suasach'])) {
        //lấy dữ liệu trên form vào biến
        $id = $_POST['id'];
        $title = $_POST['title'];
        $isbn = $_POST['isbn'];
        $pageCount = $_POST['pageCount'];
        $publishedDate = $_POST['publishedDate'];
        $thumbnailUrl = $_POST['thumbnailUrl'];
        $shortDescription = $_POST['shortDescription'];
        $longDescription = $_POST['longDescription'];
        $status = $_POST['status'];
        $category_id = $_POST['category_id'];
        $author_id = $_POST['author_id'];
        if (empty($id)) {
            echo "Không được bỏ trống";
        };
        $sql = "SELECT * from books where id = '$id'";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            $link = "UPDATE books SET title = ' $title  ', isbn = '  $isbn  ', pageCount = '  $pageCount ', publishedDate = ' $publishedDate  ', thumbnailUrl = ' $thumbnailUrl  ', shortDescription = ' $shortDescription  ', longDescription = '  $longDescription ', status = ' $status ' WHERE id = '$id '";
            echo '<script language="javascript">alert("Sửa thông tin sách thành công!"); window.location="SuaInfoSach.php";</script>';
            if (mysqli_query($conn, $link)) {
                echo "ID Sách: " . $_POST['id'] . "<br/>";
                echo "Tên Sách: " . $_POST['title'] . "<br/>";
                echo "Mã số sách: " . $_POST['isbn'] . "<br/>";
                echo "Số trang: " . $_POST['pageCount'] . "<br/>";
                echo "Nguồn: " . $_POST['thumbnaillUrl'] . "<br/>";
                echo "Ngày đăng: " . $_POST['publishedDate'] . "<br/>";
                echo "Mô tả " . $_POST['shortDescription'] . "<br/>";
                echo "Nội dung: " . $_POST['longDescription'] . "<br/>";
                echo "Tình Trạng Sách: " . $_POST['status'] . "<br/>";
            } else {
                echo '<script language="javascript">alert("Có lỗi trong quá trình xử lý"); window.location="SuaInfoSach.php";</script>';
            }
        }
    } ?>
    <form method="post" action="SuaInfoSach.php" class="form">

        <h2 style="text-align: center;">Sửa Thông Tin Sách</h2>
        ID Sách: <input type="text" name="id" value="" required /><br />
        Tên Sách: <input type="text" name="title" value="" required /><br />
        Mã số sách:<input type="text" name="isbn" value="" required /><br />
        Số trang:<input type="text" name="pageCount" value="" required /><br />
        Ngày đăng:<input type="date" name="publishedDate" value="" required /><br />
        Nguồn:<input type="link" name="thumbnailUrl" value="" /><br />
        Mô tả:<input type="text" name="shortDescription" value="" required /><br />
        Nội dung chi tiết:<br>
        <textarea name="longDescription" rows="5" cols="40%"></textarea><br>
        Tình trạng: <select name="status">
            <option value="PUBLISH">Còn Sách</option>
            <option value="PRIVATE">Hết Sách</option>
        </select> </br><br>
        <button type="submit" name="suasach" value="" style=" background-color:red ;width: 50%;font-size:40;color:white;border-radius: 8px;"> Sửa Thông Tin Sách </button>

    </form>
</body>

</html>