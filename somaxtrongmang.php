<?php 
  //tim so nguyen lon nhat trong mang
  $arraySN = array(1,4,2,6,9,100,45,8,20);
  $max=null;
  for ($i=0; $i < count($arraySN) ; $i++) { 
  	# code...
  	if ($max == null) {
  		# code...
  		$max =$arraySN[$i];
  	}
  	else{
  		if ($arraySN[$i] > $max) {
  			# code...
  			$max = $arraySN[$i];
  		}
  	}
  }

  echo "<br>Phan tu lon nhat trong mang la: ".$max;
?>