<?php 
 //im theo thu tu nguoc lai cac phan tu trong mang
  $arrayDN = array(1,4,2,6,9,100,4);
  $tong = count($arrayDN);
  echo"<br>Mang dau vao : ";
  for($i=0; $i< $tong; $i++) { 
  	# code...
  	
  	echo ($arrayDN[$i])." ";
  	
  }
   echo"<br>Mang khi in ra : ";

  for($i=$tong-1; $i >= 0; $i--) { 
  	# code...

  	echo ($arrayDN[$i])." ";
  	
  }
 ?>