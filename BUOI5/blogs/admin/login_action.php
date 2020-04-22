<?php 
session_start();
require_once('../myconnection.php');
date_default_timezone_set('Asia/Ho_Chi_Minh');
//lay du lieu
$email = $_POST['email'];
$password = $_POST['password'];
//$status = $_POST['status'];

//LAY RA CATEGORIES
 $query="SELECT a.id,a.name FROM authors a WHERE a.email ='".$email."' AND  a.password = '".md5($password)."' AND a.status = 1";
 $author = $conn->query($query)->fetch_assoc();
 //die($author);
 //var_dump($author);
 //die($author);
 if($author !== NULL) {
 	$_SESSION['isLogin'] = true;
 	$_SESSION['author'] = $author;
 	 header("Location:index.php");
 }else{
 	setcookie('msg','Log in error!',time()+5);
 	header("Location:login.php");
 }
 ?>