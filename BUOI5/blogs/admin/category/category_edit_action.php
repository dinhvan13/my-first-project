<?php
session_start();
  if (!isset($_SESSION['isLogin']) && $_SESSION['isLogin'] != true) {
      header("Location:../login.php");}
 require_once('../../myconnection.php');
 $id = $_POST['id'];
 $title = $_POST['title'];
 $description = $_POST['description'];
 $query = "UPDATE categories SET title ='".$title."', description='".$description."'WHERE id = ".$id;
 $status = $conn->query($query);
 //var_dump($status);
 if ($status == true) {
 	# code...
 	setcookie('msg','Cập nhật thành công',time()+5);
 	header('Location:category.php');
 }else{
 	setcookie('msg','Cập nhật không thành công',time()+5);
 	header('Location:category_edit.php?id=',$id);
 }
 ?>
