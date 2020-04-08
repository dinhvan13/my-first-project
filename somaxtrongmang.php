<?php 
  //tim so nguyen lon nhat trong mang
  $arraySN = array(1,3,5,8,0,3,8,98,3);
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