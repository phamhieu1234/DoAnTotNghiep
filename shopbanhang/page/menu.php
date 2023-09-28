<div class="menu">
<div>
<a href="index.php">
    <img  class ="mySlider"src="photo/hshop.png" width="180px" height="80px" >
</a>
       </div>
       <ul class="list_menu">
           <li><a href="index.php">Trang Chủ</a></li>
           <li><a href="index1.php">Giới thiệu</a></li>
           <li><a href="./indexs.php?quanly=danhmucsp&id=1">Sản phẩm</a></li>
            <li><a href="chitiet.php?quanly=tintuc">Chính sách</a></li>
       </ul>
       <div>
       <a style="text-decoration: none;" class="giohang_css" href="./chitiet.php?quanly=giohang"><i style="color:red;" class="fas fa-cart-plus fa-2x"></i>
       <?php
    if(isset($_SESSION['dangky'])){
    ?>  
       <?php
                        if(isset($_SESSION['cart'])){
                            $soluongsanpham=0; 
                            foreach($_SESSION['cart'] as $cart_item){
                            $soluongsanpham+=$cart_item['soluong'];}
                            ?><?php  echo '  <span style="color:white;" class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">'.$soluongsanpham?>
 <?php 
 }
 ?>
<?php   
}else{
}      
?>  
</a>  
</div>
</div>
  
 