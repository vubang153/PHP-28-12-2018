<?php
include("connect.php");
$id = $_GET["id"];
$sql = "select * from tinmoi where stt = $id";
$record = mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($record);
?>

<form action="updatenews.php" method="POST" accept-charset="utf-8">
	<table border="1" style="border-collapse: collapse;" width="400">
		<tr>
			<td colspan="2" align="center">CHỈNH SỬA</td>
		</tr>
		<tr>
			<td>TIÊU ĐỀ</td>
			<td><input type="text" name="tieude" value="<?php echo $row["tieude"] ?>"></td>
		</tr>
		<tr>
			<td>NỘI DUNG</td>
			<td><input type="text" name="noidung"value="<?php echo $row["noidung"] ?>"></td>
		</tr>
		<tr>
			<td>TÁC GIẢ</td>
			<td><input type="text" name="tacgia" value="<?php echo $row["tacgia"] ?>"></td>
		</tr>
		<tr style="visibility: hidden;">
			<td>STT</td>
			<td><input type="text" name="stt" value="<?php echo $row["stt"] ?>"></td>
		</tr>
		<tr style="visibility: hidden;">
			<td>NGÀY TẠO</td>
			<td><input type="text" name="ngaytao" value="CURDATE()"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" name="submit" value="THÊM MỚI"><input type="reset" name="reset" value="NHẬP LẠI"></td>
			</tr>

	</table>
</form>