<?php
$mysqli = new mysqli("localhost","root","","banhangg");

// Check connection
if ($mysqli->connect_errno) {
  echo "Lỗi kết nối mysqli " . $mysqli->connect_error;
  exit();
}
?>