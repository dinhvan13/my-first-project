<?php
 require_once('../../myconnection.php');
 $name = $_POST['name'];
 $email = $_POST['email'];
 $status = 0;
 $password =md5($_POST['password']);
 if (isset($_POST['status'])) {
 	# code...
 	$status = $_POST['status'];
 }
 $query = "INSERT INTO authors(name,email,status,password) VALUES('".$name."','".$email."','".$status."','".$password."')";
 $status_mg = $conn->query($query);
 //var_dump($status);
 if ($status_mg == true) {
 	# code...
 	setcookie('msg','Thêm mới thành công',time()+5);
 	header('Location:author.php');
 }else{
 	setcookie('msg','Thêm mới không thành công',time()+5);
 	header('Location:author_add.php');
 }
 ?>
