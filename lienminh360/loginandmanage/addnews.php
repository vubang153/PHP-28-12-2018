<?php
include("connect.php");
$tieude = $_POST["tieude"];
$noidung = $_POST["noidung"];
$tacgia = $_POST["tacgia"];
$ngaytao = $_POST["ngaytao"];
$sql  = "insert into tinmoi(tieude,noidung,tacgia,ngaytao) values('$tieude','$noidung','$tacgia','CURDATE()')";
mysqli_query($conn,$sql);
header("location: listnewsmanage.php");
?>