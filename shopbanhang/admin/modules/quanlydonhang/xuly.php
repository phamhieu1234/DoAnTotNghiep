<?php
	
    require('../../../carbon/autoload.php');
	include('../../config/config.php');
	use Carbon\Carbon;
    use Carbon\CarbonInterval;
    $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();
    if(isset($_GET['code']) && isset($_GET['status'])){
        $code_cart = $_GET['code'];
        $status = $_GET['status'];
    
        // Cập nhật trạng thái cart_status trong cơ sở dữ liệu
        if($status == 'moi'){
            $sql_update = "UPDATE tbl_cart SET cart_status = 0 WHERE code_cart = '$code_cart'";
        } elseif($status == 'danggiao'){
            $sql_update = "UPDATE tbl_cart SET cart_status = 2 WHERE code_cart = '$code_cart'";
        }
    
        $query = mysqli_query($mysqli, $sql_update);

		//thong ke doanh thu
        $sql_lietke_dh = "SELECT * FROM tbl_cart_details,tbl_sanpham WHERE tbl_cart_details.id_sanpham=tbl_sanpham.id_sanpham AND tbl_cart_details.code_cart='$code_cart' ORDER BY tbl_cart_details.id_cart_details DESC";
        $query_lietke_dh = mysqli_query($mysqli,$sql_lietke_dh);

        $sql_thongke = "SELECT * FROM tbl_thongke WHERE ngaydat='$now'"; 
        $query_thongke = mysqli_query($mysqli,$sql_thongke);
        $soluongmua = 0;
        $doanhthu = 0;
        $loinhuans=0;
        $gianhap = 0;
        while($row = mysqli_fetch_array($query_lietke_dh)){
              $soluongmuas += $soluongmua + $row['soluongmua'];
              $doanhthus= $doanhthu +  $soluongmuas * $row['giamgia'];
             $gianhaps = $gianhap+ $soluongmuas * $row['gianhap'];
             $loinhuans = $doanhthus - $gianhaps;
        }

        if(mysqli_num_rows($query_thongke)==0){
                $soluongban = $soluongmuas ;
                $doanhthu = $doanhthus;
                $gianhap = $gianhaps;
                $loinhuan = $loinhuans;
                $donhang = 1;
                $sql_update_thongke = mysqli_query($mysqli,"INSERT INTO tbl_thongke (ngaydat,soluongban,doanhthu,gianhap,donhang,loinhuan) VALUE('$now','$soluongban','$doanhthu','$gianhap','$donhang','$loinhuan')" );
        }elseif(mysqli_num_rows($query_thongke)!=0){
            while($row_tk = mysqli_fetch_array($query_thongke)){
                $soluongban = $row_tk['soluongban']+$soluongmuas;
                $doanhthuss = $row_tk['doanhthu']+$doanhthus;
                $gianhaps = $row_tk['gianhap'] +  $gianhaps;
                $loinhuan = $doanhthuss - $gianhaps;
                $donhang = $row_tk['donhang']+1;
                $sql_update_thongke = mysqli_query($mysqli,"UPDATE tbl_thongke SET soluongban='$soluongban',doanhthu='$doanhthuss',gianhap = '$gianhaps',loinhuan = '$loinhuan' ,donhang='$donhang' WHERE ngaydat='$now'" );
            }
        }
		header('Location:../../index.php?action=quanlydonhang&query=lietke');
	} else {
        $id = $_GET['idcart'];
    
        // Xóa dữ liệu từ tbl_cart và tbl_cart_details sử dụng DELETE JOIN
        $sql_xoa = "DELETE tbl_cart, tbl_cart_details FROM tbl_cart
                    INNER JOIN tbl_cart_details 
                    ON tbl_cart.code_cart = tbl_cart_details.code_cart 
                    WHERE tbl_cart.code_cart = '".$id."'";
    
        mysqli_query($mysqli, $sql_xoa);
    
        header('Location:../../index.php?action=quanlydonhang&query=lietke');
    }
    ?>
    