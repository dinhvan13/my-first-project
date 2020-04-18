<?php
 require_once('../../myconnection.php');
 $title = $_POST['title'];
 $description = $_POST['description'];
 $query = "INSERT INTO categories(title,description) VALUES('".$title."','".$description."')";
 $status = $conn->query($query);
 //var_dump($status);
 if ($status == true) {
 	# code...
 	setcookie('msg','Thêm mới thành công',time()+5);
 	header('Location:category.php');
 }else{
 	setcookie('msg','Thêm mới không thành công',time()+5);
 	header('Location:category_add.php');
 }
 ?>
