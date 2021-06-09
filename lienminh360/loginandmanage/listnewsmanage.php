<?php
include("connect.php");
$sql = "select * from tinmoi";
$record = mysqli_query($conn,$sql);
?>
<div style="width: 1366px;">
<table border="1" style="border-collapse: collapse;margin: auto;" width="800">
	<tr style="background-color: red;color: blue;text-align: center;font-weight: bold;">
		<td colspan="7">QUẢN LÝ TIN TỨC</td>
	</tr>
	<tr>
		<td>STT</td>
		<td>TIÊU ĐỀ</td>
		<td>NỘI DUNG</td>
		<td>TÁC GIẢ</td>
		<td>THỜI GIAN</td>
		<td>XOÁ</td>
		<td>CHỈNH SỬA</td>
	</tr>
	<?php while ($row = mysqli_fetch_assoc($record)) {
	?>
		<tr>
			<td><?php echo $row["stt"]; ?></td>
			<td><?php echo $row["tieude"]; ?></td>
			<td><?php echo $row["noidung"]; ?></td>
			<td><?php echo $row["tacgia"]; ?></td>
			<td><?php echo $row["ngaytao"]; ?></td>
			<td><a href="deletenews.php?id=<?php echo $row["stt"];?>">XOÁ</a></td>
			<td><a href="formupdatenews.php?id=<?php echo $row["stt"];?>">CHỈNH SỬA</a></td>
		</tr>
	<?php } ?>
</table>
<a href="index.php">BACK</a>
</div>