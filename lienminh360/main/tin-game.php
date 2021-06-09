<title>TIN GAME</title>
<?php include("phandau.php");
$sql = "select * from tinchinh";
$recordset = mysqli_query($conn,$sql);
?>
<style type="text/css" media="screen">
	a {
		text-decoration: none;
		color: black;
	}
</style>
<div id="wrappertingame" style="width: 1164px; height: auto;margin:auto; background-color: white;">
	<div style="width: 770px;height: auto;">
	<div style="width: 770px;height: 34px;border-bottom: 2px solid orange; margin-top: 15px;">
		<div style="color: white;width: 125px; background-color: orange;height: 100%;text-align: center;">TIN GAME</div>
		<div style="width: 645px;"></div>
	</div>
	<div id="listtingame">
		<ul style="color: red; line-height: 2.5;">
			<?php while ($row=mysqli_fetch_assoc($record)) {
			?>
			<li>
				<a href="../main/newscontent.php?id=<?php echo $row["matin"];?>"><?php echo $row["tieude"];?></a>
			</li>
			<?php } ?>
		</ul>
	</div>
	</div>
</div>
<?php include("phancuoi.php"); ?>