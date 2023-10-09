<?php
$sql_chitiet = "SELECT tbl_sanpham.*, tbl_danhmuc.*, (
    SELECT SUM(tbl_cart_details.soluongmua) 
    FROM tbl_cart_details 
    WHERE tbl_sanpham.id_sanpham = tbl_cart_details.id_sanpham
) AS total_quantity
FROM tbl_sanpham
LEFT JOIN tbl_danhmuc ON tbl_sanpham.id_danhmuc = tbl_danhmuc.id_danhmuc
WHERE tbl_sanpham.id_sanpham = '$_GET[id]'
ORDER BY tbl_sanpham.id_sanpham DESC LIMIT 1";

   $query_chitiet= mysqli_query($mysqli,$sql_chitiet);
  while($row_chitiet=mysqli_fetch_array( $query_chitiet)){

    $soluongcon = 0;
    $soluongcon = $row_chitiet['soluong'] - $row_chitiet['total_quantity'];
?>	
<div class="col-md-6 table-responsive">
<nav class="navbar navbar-light ">
  <div style="float: left;" class="container-fluid">
    <span class="navbar-brand mb-0 h1">Danh mục: <?php echo $row_chitiet['tendanhmuc'] ?></span>
  </div>
</nav>
</div>
<form method="POST" action="page/right/themgiohang.php?idsanpham=<?php echo $row_chitiet['id_sanpham'] ?>">
<div class="wrapper_chitiet">
<div class="hinhanh_sanpham">
<img width="50%" src="admin/modules/quanlysp/uploads/<?php echo $row_chitiet['hinhanh'] ?>">
</div>
<div class="chitiet_sanpham">

<h3 class="ten_sanpham"><?php echo $row_chitiet['tensanpham'] ?></h3>
<ul style="display: flex; list-style-type: none; margin: 0px; padding: 0px;margin-bottom:15px;">
				<li style="color: orange; font-size: 13pt; padding-top: 2px; margin-right: 5px;">5.0</li>
				<li style="color: orange; padding: 2px;">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
				<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
				</svg>
				</li>
				<li style="color: orange; padding: 2px;">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
				<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
				</svg>
				</li>
				<li style="color: orange; padding: 2px;">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
				<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
				</svg>
				</li>
				<li style="color: orange; padding: 2px;">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
				 <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
				</svg>
				</li>
				<li style="color: orange; padding: 2px;">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
				<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
				</svg>
				</li>
				<li style="margin-left: 20px; border-left: solid #dad7d7 1px; font-size: 13pt; padding-top: 3px; padding-left: 20px;"><?php if($row_chitiet['total_quantity']==0){ echo "0"; }else{ echo $row_chitiet['total_quantity'] ; }?> Đã Bán</li>
				</ul>
<p class="ma_soluong_size">Mã sản phẩm: <?php echo $row_chitiet['masp'] ?></p>
<p class="ma_soluong_size">Số lượng còn: <?php echo $soluongcon ?></p>
<p class="gia_sanpham"><?php echo number_format($row_chitiet['giasp']).'đ'?></p>
<p class="giamgia_sanpham"> <?php echo number_format($row_chitiet['giamgia']).'đ'?></p>

<div class="clear"></div>

<?php
    if(isset($_SESSION['dangky']) && $soluongcon != 0){
    ?>

<input class="mua" type="submit" name="muangay" value="Mua ngay">
<button type="submit" name="themgiohangs"><i class="fas fa-cart-plus"></i></button>

<?php 
    }elseif($soluongcon == 0){
?>
<p><a href=""> 
<input class="mua" type="button" value="Sản phẩm đã hết"></a>
<?php 
    }else{
 ?>
    <p><a href="chitiet.php?quanly=dangnhap"> 
<input class="mua" type="button" value="Đăng nhập để mua ngay"></a>
<?php
    }
    ?>
</div>

<div class="clear"></div>
<p class="ma_noidung">CHI TIẾT SẢN PHẨM :<br> <p class="noidung_size"> <?php echo $row_chitiet['noidung'] ?></p></p>

</div>
</form>
<?php }?>
<script type="text/javascript">
	function addMoreCart(delta) {
		num = parseInt($('[name=num]').val())
		num += delta
		if(num < 1) num = 1;
		$('[name=num]').val(num)
	}

	function fixCartNum() {
		$('[name=num]').val(Math.abs($('[name=num]').val()))
	}
</script>
<div class="clear"></div>

<?php

   $sql_pro = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc= tbl_danhmuc.id_danhmuc ORDER BY tbl_sanpham.id_sanpham DESC LIMIT  5";
   $query_pro= mysqli_query($mysqli,$sql_pro);
?>
    <p style="font-size: 30px;font-family: Arial, Helvetica, sans-serif; text-align: center;">SẢN PHẨM LIÊN QUAN</p>
    <div class="sanphamlienquan">
<a style="float: right;text-decoration: none; color:#3f56aa;margin-top:-20px;" href="indexs.php?quanly=danhmucsp&id=1"> Xem thêm >></a>
           <ul class="product_list">
           <?php 
            while($row = mysqli_fetch_array($query_pro)){
        ?>

                 <li>
                  
                   <div class="khoi">
                   <a href="chitiet.php?quanly=sanpham&id=<?php echo $row['id_sanpham']?>">

                   <img src="admin/modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>" ></a>
                   <div class="khoi3">
<form method="POST" action="page/right/themgiohang.php?idsanpham=<?php echo $row['id_sanpham'] ?>">
                       
                  <button type="submit" name="themgiohang"><i class="fas fa-shopping-cart"></i></button>
               </form>

               <a href="chitiet.php?quanly=sanpham&id=<?php echo $row['id_sanpham']?>">

                  <button class="khoi2" ><i class="fas fa-eye "></i></button></a>
                
                  

            
                  </div>
     
                   <a href="chitiet.php?quanly=sanpham&id=<?php echo $row['id_sanpham']?>">
                   <p class="title_product"><?php echo $row['tensanpham'] ?></p>
                 
                   <p class="giamgia_sp"><?php echo number_format($row['giamgia']).'₫'?></p>
                   </div>

               </li>
       <?php } ?>
              
           </ul>
            </a>
           </div>
<div class="clear"></div>
