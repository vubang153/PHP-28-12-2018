<?php include("connect.php");
$id = $_POST["stt"];
$tieude = $_POST["tieude"];
$noidung = $_POST["noidung"];
$tacgia = $_POST["tacgia"];
$sql = "update tinmoi set tieude = '$tieude', noidung = '$noidung',tacgia = '$tacgia' where stt = $id";
mysqli_query($conn,$sql);
header("location: listnewsmanage.php");
?>