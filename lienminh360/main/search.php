<title>TÌM KIẾM</title>
<style media="screen">
	* {
		color: red;
	}
    a {
        text-decoration: none;
    }
</style>
<?php
include("phandau.php");?>
<div id="wrappertingame" style="width: 1164px; height: auto;margin:auto; background-color: white;">
    <div style="width: 770px;height: auto;"></div>
    <div style="width: 770px;height: 34px;border-bottom: 2px solid black; margin-top: 15px;">
        <div style="color: white;width: 125px; background-color: black;height: 100%;text-align: center;">TÌM KIẾM</div>
        <div style="width: 645px;"></div>
    </div>
</div>
<div style="width: auto;">
<?php
        if (isset($_REQUEST['ok'])) 
        {
            $search = addslashes($_GET['search']);
            if (empty($search)) {
                ?><div style="margin:auto;line-height: 10; width: 1165px;"><?php echo "Nhập dữ liệu để tìm kiếm";?></div>
             <?php
            } 
            else
            {
                $sql4 = "select * from tinmoi where tieude like '%$search%'";
 
                $conn = mysqli_connect("localhost", "root", "", "lienminh360");
                 $record4 = mysqli_query($conn,$sql4);
                 $num = mysqli_num_rows($record4);
                if ($num > 0 && $search != "") 
                {
	               ?>
                   
                    	<table border="0" cellspacing="0" cellpadding="10" style="margin: auto; width: 1165px; background-color: white;">
                    		<tr>
                    			<td style="color: blue"><?php echo "$num kết quả trả về với từ khoá <b>$search</b>";?></td>
                    		</tr>
                    </div>
                    <?php 
                    while ($row = mysqli_fetch_assoc($record4)) {
                        ?>
                         <tr>
                             <td><a href="newscontent4.php?id=<?php echo $row["stt"];?>"><?php echo $row["tieude"]; ?></a></td>
                   
                         </tr>
                   <?php  } ?>
                   </table>
                <?php
                } 

                else {
                	?>
                    <div style="margin:auto;line-height: 10; width: 1165px;"><?php echo "Không tìm thấy kết quả";?></div>
                </div>
                    <?php
                }
            }
        }?>
    </div>
    <?php 
        include("phancuoi.php");
        ?>