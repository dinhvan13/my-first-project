<?php 
//thong so ket noi csdl
$servername ="localhost";//địa chỉ ip của máy chủ chứa csdl
$username = "root";//tên đăng nhập
$password="";//mật khẩu truy cập
$dbname ="blogs";//tên cơ sở dữ liệu muốn kết nối đến
//tạo kết nối đến cơ sở dữ liệu
$conn=new mysqli($servername,$username,$password,$dbname);
//câu lệnh truy vấn
$query="select * from posts ";
//die($query);
//thực thi câu lệnh
$result=$conn->query($query);
//tạo một mảng để chứa dữ liệu
$categories=array();
while ($row=$result->fetch_assoc()) {
	# code...
	$categories[]=$row;
}
foreach ($categories as $cate ) {
	# code...
	  echo"<pre>";
	  print_r($cate);
	  echo"</pre>";

}
 ?>