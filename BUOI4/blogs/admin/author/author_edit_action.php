<?php
 require_once('../../myconnection.php');
 $id = $_POST['id'];
 $name = $_POST['name'];
 $email = $_POST['email'];
 $password=md5($_POST['password']);
 $status = 0;
 if (isset($_POST['status'])) {
 	# code...
 	$status = $_POST['status'];
 } 
 $query = "UPDATE authors SET name ='".$name."', email='".$email."', password='".$password."',status='".$status."'WHERE id = ".$id;
 //die($query);
 $status = $conn->query($query);
 //var_dump($status);
 if ($status == true) {
 	# code...
 	setcookie('msg','Cập nhật thành công',time()+5);
 	header('Location:author.php');
 }else{
 	setcookie('msg','Cập nhật không thành công',time()+5);
 	header('Location:author_edit.php?id=',$id);
 }
 ?>
