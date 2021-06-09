<?php session_start(); ?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>QUẢN LÝ CSDL</title>
<style type="text/css" media="screen">
	body {
	margin:  0px;
	padding: 0px;
	font-family: Roboto,Arial,Helvetica;
	background-image: url("https://hdqwalls.com/download/udyr-league-of-legends-qhd-1366x768.jpg")
}

#wrapperphandau {
	height: 234px;
	width: 1164px;
	margin: auto;
	font-size: 100%;
}
.headerphandau {
	width: 1164px;
	height: 131px;
}
#logophandau {
	float: left;
}
#chuyennhuongphandau {
	margin-top: 10px;
	float: right;
}
#menuphandau {
	width: 100%;
	height: 86px;
	background-color: black;
}
#menuphandau li {
  color: #000;
  display: inline-block;
  width: 220px;
  height: 40px;
  line-height: 40px;
  margin-left: 40px;
}
#menuphandau a {
  text-decoration: none;
  color: white;
  display: block;
  font-weight: bold;
}
#menuphandau a:hover {
  background: #8B8B8B;
}
li a {
	text-align: center;
}
#searchbarphandau {
	float: right;
	margin-top: 9px;
	margin-right: 8px;
}

</style>
</head>
<body>
	<div id="background">
		<div id="wrapperphandau">
			<div class="headerphandau">
				<div>
					<a href="../main/test.php"><img id="logophandau" src="../img/systemlogo/logo.png"></a>
					<img id="chuyennhuongphandau" src="../img/systemlogo/chuyennhuong.jpg">
				</div>
			</div>
			<div id="menuphandau">
					<ul>
						<li><a href="../main/test.php">TRANG CHỦ</a></li>
						<li><a href="../loginandmanage/formaddnews.php">THÊM TIN TỨC</a></li>
						<li><a href="../loginandmanage/listnewsmanage.php">QUẢN LÝ/SỬA/XOÁ</a></li>
						<li><a href="../main/tin-moi.php">TIN MỚI</a></li>
					</ul>
			</div>
<span style="color: red; font-size: 30px;">Chào,
<?php
	 echo $_SESSION['tendangnhap']; 
?></span>
<BR>
<a href="../logout.php" style="font-weight: bold;color: red;">Đăng xuất</a>
	</div>
</body>
</html>