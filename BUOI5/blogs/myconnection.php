<?php 
//thong so ket noi csdl
$servername ="localhost";//địa chỉ ip của máy chủ chứa csdl
$username = "root";//tên đăng nhập
$password="";//mật khẩu truy cập
$dbname ="blogs";//tên cơ sở dữ liệu muốn kết nối đến
//tạo kết nối đến cơ sở dữ liệu
$conn=new mysqli($servername,$username,$password,$dbname);
?>