<?php 
require_once('../../myconnection.php');
$id = $_GET['id'];
//LAY RA CATEGORIES
 $query_cate="SELECT *FROM categories WHERE id =".$id;
 $result_cate =$conn->query($query_cate);
 $categories = $result_cate->fetch_assoc();
 ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Zent - Education And Technology Group</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
    <h3 align="center">Zent - Education And Technology Group</h3>
    <h3 align="center">Edit Category</h3>
    <hr>
        <h2>title:<?= $categories['title']?></h2>
        <h3>description:<?=$categories['description']?></h3>
    </div>
</body>
</html>