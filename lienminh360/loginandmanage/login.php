<?php session_start(); ?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>	
<body>
<?php
	$username = $_POST['txtusername'];
	$password = $_POST['txtpassword'];
	
	$con = mysqli_connect('localhost', 'root', '', 'lienminh360');
	$sql = "select * from account where username = '$username' and password = '$password'";
	
	$recordset = mysqli_query($con, $sql);
	
	if(mysqli_num_rows($recordset) > 0) {
		$_SESSION['tendangnhap'] = $username;	
		header('location:index.php');
	} else {
		echo 'Đăng nhập thất bại';	
	}
?>
</body>
</html>