<?php
$sql3 = "select * from tinesport";
$recordset2 = mysqli_query($conn,$sql3);
?>
<style type="text/css" media="screen">
	#wrappersubnews {
		width: 1165px;
		height: 596px;
		background-color: blue;
		margin: auto;
	}
	#subnews {
		width: 70%;
		height: 100%;
		background-color: white;
		float: left;
	}
	#hotnews {
		width: 30%;
		height: 100%;
		background-color: white;
		float: left;
	}
	#divtitlesubnews {
		width: 100%;
		height: 33px;
		background-color: white;
		text-align: center;

	}
	#titlesubnews {
		width: 20%;
		height: 100%;
		line-height: 30px;
		background-color: #ff6801;
		float: left;
		color: white;

	}
	#divdanhsachtintucsubnews {
		width: 100%;
		height: 33px;
		background-color: white;
		text-align: center;
		float: left;
		border-bottom: 3px solid #ff6801;

	}
	a.asubnews {
		text-decoration: none;
		margin-left: 10px;
	}
	#divtinsubnews {
		width: 94%;
		height: 530px;
		background-color: white;
	}
	#tinsubnews1 {
		width: 45%;
		height: 90%;
		background-color: white;
		float: left;
		margin-top: 2%;

	}
	#tinsubnews2 {
		width: 45%;
		height: 90%;
		background-color: white;
		float: left;
		margin-left: 2%;
		margin-top: 2%;
	}
	.tinhottrongtuan {
		margin-left: 5px;
	}
	#tinhottrongtuan2 {
		margin-top: 10px;
	}
	#divtitletinhottrongtuan {
		width: 344px;
		height: 33px;
		background-color: white;
		text-align: center;
		margin-left: 5px;

	}
	#titletinhottrongtuan {
		width: 56%;
		height: 100%;
		line-height: 30px;
		background-color: #ea1e63;
		float: left;
		margin-left: 0px;
		color: white;
		border-bottom:  2px orange ;
	}
	a {
		text-decoration: none;
		color: #707070;
	}
	#tinhottrongtuan2 {
		margin-top: 15px;
	}
</style>
<div id="wrappersubnews">
	<div id="subnews">
		<div id="divtitlesubnews">
			<div id="titlesubnews" style="margin-left:34px">TIN ESPORTS
			</div>
			<div id="divdanhsachtintucsubnews" style="margin-top: 20px;">
					<span>
						<a href="">HÌNH ẢNH</a>
						<a href="">KHU VỰC KHÁC</a>
						<a href="">LPL/LCK</a>
						<a href="">LỊCH THI ĐẤU</a>
						<a href="">VCS</a>
						<a href="">VIDEO</a>
					</span>
			</div>
		</div>
		<div id="divtinsubnews">
			<?php while ($row = mysqli_fetch_assoc($recordset2)) {
				?>
			<div id="tinsubnews<?php echo $row['matin'];?>" style="margin-left:34px;">	
				<img src="../img/subnews/subnews<?php echo $row["matin"];?>.png" width="100%" height="211px">
				<a style="font-size: 22px; color: red;" href="../main/newscontent2.php?id=<?php echo $row["matin"];?>"><?php echo $row["tieude"]?></a>
			</div>
		<?php } ?>
		</div>
	</div>
	<div id="hotnews">
		<div id="divtitletinhottrongtuan" style="border-bottom: 3px solid #ea1e63;">
			<div id="titletinhottrongtuan">TIN HOT TRONG TUẦN</div>
		</div>
<?php $sql4 = "select * from tinhot";
$recordset3 = mysqli_query($conn,$sql4);
	while ($row=mysqli_fetch_assoc($recordset3)) {
	?>
		<div id="tinhottrongtuan<?php echo $row["matin"]; ?>" class="tinhottrongtuan">
			<div style="width: 300px;">
			<a href="../main/newscontent3.php?id=<?php echo $row["matin"]; ?>"><img style="margin-top: 5px;" src="../img/tinhot/tinhotbanner<?php echo $row["matin"];?>.jpg"></a>
			</div>
			<div style="width: 300px; margin-top:10px;">
			<a style="font-weight: bold; color: black;"href="../main/newscontent3.php?id=<?php echo $row["matin"]; ?>"><?php echo $row["tieude"]; ?></a>
			</div>
		</div>
	<?php } ?>
	</div>
</div>
	