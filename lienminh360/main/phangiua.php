
<link rel="stylesheet" type="text/css" href="../css/body.css">
	<div id="backgroundphangiua">
		<div id="wrappercontentphangiua">
		<?php while ( $row = mysqli_fetch_assoc($record)) {
		?>
			<div id="news<?php echo $row["matin"] ?>phangiua"><a href="../main/newscontent.php?id=<?php echo $row["matin"]?>"><img src="../img/mainnews/bannermainnews<?php echo $row['matin']?>.png"></a></div>
		<?php
		}
		?>
		
		</div>
	</div>
