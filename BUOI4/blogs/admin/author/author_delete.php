<?php
 require_once('../../myconnection.php');
 $id = $_GET['id'];
 //$title = $_POST['title'];
 //$description = $_POST['description'];
 $query = "DELETE FROM authors WHERE id =".$id;
 //die($query);
 $status = $conn->query($query);
 //var_dump($status);
 if ($status == true) {
 	# code...
 	setcookie('msg','Xóa thành công',time()+5);	
 }else{
 	setcookie('msg','Xóa không thành công',time()+5);
 }
 header('Location:author.php');
 ?>
