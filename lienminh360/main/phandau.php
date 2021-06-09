<?php
$conn = mysqli_connect("localhost","root","","lienminh360");
$sql = "select * from tinchinh";
$record = mysqli_query($conn,$sql);
$servername = $_SERVER["REQUEST_URI"];
?>
<link rel="stylesheet" type="text/css" href="../css/header.css">
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
						<li><a href="../main/test.php" style="<?php if ($servername =="/lienminh360/main/test.php"
							) {
							echo "background-color: red;";
						}
						?>">TRANG CHỦ</a></li>
						<li><a href="tin-game.php" style="<?php if ($servername =="/lienminh360/main/tin-game.php"
							) {
							echo "background-color: red;";
						}
						?>">TIN GAME</a></li>
						<li><a href="tin-esports.php" style="<?php if ($servername =="/lienminh360/main/tin-esports.php"
							) {
							echo "background-color: red;";
						}
						?>">TIN ESPORTS</a></li>
						<li><a href="cam-nang.php" style="<?php if ($servername =="/lienminh360/main/cam-nang.php"
							) {
							echo "background-color: red;";
						}
						?>">CẨM NANG</a></li>
						<li><a href="cong-dong.php" style="<?php if ($servername =="/lienminh360/main/cong-dong.php"
							) {
							echo "background-color: red;";
						}
						?>">CỘNG ĐỒNG</a></li>
						<li><a href="../main/tin-moi.php" style="<?php if ($servername =="/lienminh360/main/tin-moi.php"
							) {
							echo "background-color: red;";
						}
						?>">TIN MỚI</a></li>
						<li><a href="../loginandmanage/index.php" style="<?php if ($servername =="/lienminh360/main/index.php"
							) {
							echo "background-color: red;";
						}
						?>">QUẢN LÝ DATA</a></li>
					</ul>
					<div id="searchbarphandau">
						<form action="search.php" method="get">
                <input type="text" name="search" placeholder="Tìm kiếm">
                <input type="submit" name="ok" value="search">
            </form>
					</div>
			</div>
	</div>