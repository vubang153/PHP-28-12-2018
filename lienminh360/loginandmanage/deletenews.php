<?php include("connect.php");
	$id = $_GET['id'];
	$sql = "delete from tinmoi where stt = $id";
	mysqli_query($conn, $sql);
	header("location: listnewsmanage.php");
?>