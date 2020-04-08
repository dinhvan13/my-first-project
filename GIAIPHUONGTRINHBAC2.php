<?php
//giai phuong trinh bac 2 ax^2+bx+c=0
 echo"<h1>Giai phuong trinh bac 2</h1>";
 $a=2;
 $b=4;
 $c=1;
 //$delta=$b^2-4*a*c;
 if ($a==0) {
    if ($b==0) {
    	if ($c==0) {
    		echo"<br>Phuong trinh co vo so nghiem!";
    		# code...
    	}else{
    		echo"<br>Phuong trinh vo nghiem!";
    	}
    	}
    	else{
    		echo"<br>Phuong trinh co nghiem duy nhat:x1=x2=".-$c/$b;
    	
 	# code...
           }
         }else{
         	$delta=$b*$b-4*$a*$c;
         	echo "<br>$delta";
         	if ($delta <0) {
         		# code...
         		echo"<br>Phuong trinh vo nghiem!";

         	}elseif ($delta==0) {
         		# code...
         		echo"<br>Phuong trinh co nghiem kep:x1=x2=".-$b/2*$a;

         	}else{
         		echo"<br>Phuong trinh co hai nghiem phan biet x1 = ".(-$b+sqrt($delta))/2*$a." va x2= ".(-$b+sqrt($delta))/2*$a;
         	}
 	       
   }

 
?>