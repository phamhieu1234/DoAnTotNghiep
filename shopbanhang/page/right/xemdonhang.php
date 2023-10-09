
<?php
// Đảm bảo biến $code tồn tại và không rỗng
// Kiểm tra xem tham số 'code_cart' đã được truyền qua URL hay chưa
if (isset($_GET['code'])) {
  $code = mysqli_real_escape_string($mysqli, $_GET['code']);

  // Lấy giá trị của tham số 'code_cart' và xử lý để ngăn chặn SQL injection
	
  $sql_lietke_dh = "SELECT * FROM tbl_cart_details
  INNER JOIN tbl_sanpham ON tbl_cart_details.id_sanpham = tbl_sanpham.id_sanpham

  INNER JOIN tbl_cart ON tbl_cart_details.code_cart = tbl_cart.code_cart
  INNER JOIN tbl_dangky ON tbl_cart.id_khachhang = tbl_dangky.id_dangky
  WHERE tbl_cart_details.code_cart = '".$code."'
  ORDER BY tbl_cart_details.id_cart_details ASC";


  // Thực hiện truy vấn SQL và kiểm tra kết quả
  $query_lietke_dh = mysqli_query($mysqli, $sql_lietke_dh);
}
if (isset($_POST['phanhoi'])) {
  // Lấy nội dung phản hồi từ form
  $noidung = mysqli_real_escape_string($mysqli, $_POST['noidung']);
  $code = $_GET['code'];

  // Truy vấn SQL để lấy id_dangky từ tbl_dangky


  $id_khachhang = $_SESSION['id_khachhang'];


      // Chèn nội dung phản hồi và id_dangky vào bảng tbl_hoanhang trong cơ sở dữ liệu
      $insert_feedback_sql = "INSERT INTO tbl_hoanhang (id_khachhang, code_cart, noidung,status_lh) VALUES ('$id_khachhang', '$code', '$noidung',1)";
      $insert_feedback_query = mysqli_query($mysqli, $insert_feedback_sql);

      if ($insert_feedback_query) {
          header('Location:chitiet.php?quanly=camon');
         
      } else {
          echo " " . mysqli_error($mysqli);
      }
  } else {
      echo " " . mysqli_error($mysqli);
  }



?>
 <div class="row" style="margin-top: 20px;">
	<div class="col-md-12 table-responsive">
		<h3 class="the_h">Xem đơn hàng</h3>
    <table class="table table-bordered table-hover" style="margin-top: 20px;">
    <thead>
  <tr >
    <th>Mã đơn hàng</th>
    <th>Tên sản phẩm</th>
    <th>Hình ảnh</th>
    <th>Số lượng</th>
    <th>Mã sp</th>
  
   
  </tr>
    </thead>
  <?php

  while($row = mysqli_fetch_array($query_lietke_dh)){

  ?>
  <tr style="text-align: center;">
 
    <td><?php echo $row['code_cart'] ?></td>
    <td><?php echo $row['tensanpham'] ?></td>
    <td><img style="width:50px;max-height:80px;" src = "admin/modules/quanlysp/uploads/<?php echo $row['hinhanh'];  ?>"></td>

    <td><?php echo $row['soluongmua'] ?></td>
    <td><?php echo $row['masp'] ?></td>



  </tr>
  <?php
  } 
  ?>

</table>

		</div>
