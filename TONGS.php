<?php 
//tinh tong s =1/1!+2/2!+....+n/n!

 $sum =0;
 $b=4;
 
 for ($i=1; $i <= $b; $i++) { 
 	# code...
 	$sum+= $i/tinhGiaithua($i);
 	
 }
 echo"Tong giai thua nghich dao la:".$sum;
 //echo ("Giai thừa của " . $b . " là: " . //tinhGiaithua ( $b ) . "<br>");
 
 //$sum;
 function tinhGiaithua($n) {
    if ($n > 0) {
        return $n * tinhGiaithua ( $n - 1 );
    } else {
        return 1;
    }
}
 ?>