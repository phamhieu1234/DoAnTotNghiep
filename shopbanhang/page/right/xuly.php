<?php
if(isset($_GET['code'])){
    $code = $_GET['code'];
    
    // Thực hiện kết nối CSDL và truy vấn cập nhật trạng thái
    $sql_update="UPDATE tbl_cart SET cart_status = 2 WHERE code_cart = '$code'";
		$query = mysqli_query($mysqli,$sql_update);
    
    // Sau khi cập nhật thành công, chuyển hướng người dùng về trang trước hoặc trang khác
    header('Location:chitiet.php?quanly=donhang');
    // Thay thế 'previous_page.php' bằng URL của trang bạn muốn chuyển hướng đến
}
?>