<?php 
  echo "<h1>Hello moi nguoi !</h1>"."<br>";
  echo 15;
  $number=11;
  $name="zent";
  $points=9.5;
  echo "xin chao ".$name."<br>";
  $class ='PHP online'."<br>";
  echo 'ban dang hoc lop$class';
 //cau truc re nhanh
  //dieu kien lap
  if ($number%2==0) {
  	# code...
  	echo"<br>so nay la so chan!";
  }else{
  	echo"<br>so nay la so le!";
  }
  $day=4;
 switch ($day) {
 	case 2:
 		# code...
 	echo"<br>hom nay la thu 2!";
 	case 3:
 		# code...
 	echo"<br>hom nay la thu 3!";
 		break;


 		break;
 	
 	default:
 		# code...
 	echo"<br>ngay nghi";
 		break;
 }

 for ($i=0; $i <=10 ; $i++) { 
 	# code...
 	echo"<br>".$i;

 }
 $j=0;
 while ($j <= 10) {
 	echo"<br>".$j;
 	$j++;

 	# code...
 }
 $k=0;
 do {
 	# code...
 	echo"<br>".$k;
 	$k++;
 } while ( $k<= 10);
  


 ?>
