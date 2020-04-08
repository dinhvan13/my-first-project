<h1 align="center">Bang cuu chuong<h1><br>
<table border="1px" align="center" >
	<tr>
<?php 
  //in ra bang cuu chuong
 for ($i=1; $i <= 10; $i++) { 
 	# code...
 	echo"<td>";
 	for ($j=1; $j <=10 ; $j++) { 
 		# code...
 		echo"$i x $j = " . ($i * $j);
 		echo"<br>";
 	}
 }
  
 ?>
</tr>
</table>
