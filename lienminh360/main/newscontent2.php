<?php include("phandau.php");
$id = $_GET["id"];
$sql3 = "select * from tinesport where matin = $id";
$recordset3 = mysqli_query($conn,$sql3);
$row = mysqli_fetch_assoc($recordset3);
?>
<title><?php echo $row["tieude"]; ?></title>
<style type="text/css" media="screen">
	#maincontent {
		width: 1165px;
		height: 400;
		margin: auto;
		background-color: white;
	}
	#title {
		font-size: 26px;
	    font-weight: 400;
	    color: #df0000;
	    text-align: left;
	    margin-bottom: 1%;
	    line-height: 28px;
	}
	#timeandauthor {
		font-size: 15px;
		color: blue;
	}
	#wrapperphandau {
    height: 207px;
    width: 1164px;
    margin: auto;
    font-size: 100%;
}

</style>
<div id="maincontent">
	<div style="margin-left: 30px;">
	<p id="title"><?php echo $row['tieude']?>
</p>
<div id="timeandauthor">
	<span><?php echo $row['thoigian'] ?> |</span>
	<span><?php echo $row['tacgia'] ?> |</span>
</div>
</div>
<p id="noidungnews"><?php echo $row['noidung'] ?></p>
</div>
<?php include("phancuoi.php"); ?>