<?php
session_start();
  if (!isset($_SESSION['isLogin']) && $_SESSION['isLogin'] != true) {
      header("Location:../login.php");}
 require_once('../../myconnection.php');
  date_default_timezone_set('Asia/Ho_Chi_Minh');
 // upload file
	$target_dir = "../../img/";  // thư mục chứa file upload
	$thumbnail="";

	$target_file = $target_dir . basename($_FILES["thumbnail"]["name"]); // link sẽ upload file lên
     // echo "<pre>";
     //  print_r($_FILES);
     // echo "</pre>";
     // die();
     $status_upload = move_uploaded_file($_FILES["thumbnail"]["tmp_name"], $target_file);
	if ($status_upload != "") { // nếu upload file không có lỗi 
	    
	    $thumbnail = ",thumbnail = '". basename($_FILES["thumbnail"]["name"]."'");
	    
	}
 $id = $_POST['id'];
 $title = $_POST['title'];
 $description = $_POST['description'];
 $contents = $_POST['contents'];
 $category_id = $_POST['category_id'];
 $author_id =1;
 $status = 0;
 if (isset($_POST['status'])) {
 	# code...
 	$status = $_POST['status'];
 }
  $created_at = date('Y-m-d H:i:s');
  $query = "UPDATE posts SET title='".$title."',description='".$description."',contents='".$contents."',author_id='".$author_id."',category_id=".$category_id.$thumbnail.",status ='".$status."',created_ad='".$created_at."' WHERE id=".$id;

  //var_dump($query);
 $status = $conn->query($query);
 //var_dump($status);
 if ($status == true) {
 	# code...
 	setcookie('msg','Update thành công',time()+5);
 	header('Location:posts.php');
 }else{
 	setcookie('msg','Update không thành công',time()+5);
 	header('Location:posts_edit.php');
 }
 ?>
