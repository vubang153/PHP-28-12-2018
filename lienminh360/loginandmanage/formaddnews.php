<div style="width: 1366px;">
<form action="addnews.php" method="POST" accept-charset="utf-8">
	<table border="1" style="border-collapse: collapse;margin: auto;" width="400">
		<tr>
			<td colspan="2" align="center" style="background-color: red;">THÊM TIN TỨC</td>
		</tr>
		<tr>
			<td>TIÊU ĐỀ</td>
			<td><input type="text" name="tieude"></td>
		</tr>
		<tr>
			<td>NỘI DUNG</td>
			<td><input type="text" name="noidung""></td>
		</tr>
		<tr>
			<td>TÁC GIẢ</td>
			<td><input type="text" name="tacgia"></td>
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
<a href="../loginandmanage/index.php">BACK</a>
</div>