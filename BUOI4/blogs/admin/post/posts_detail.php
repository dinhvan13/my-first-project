<?php 
require_once('../../myconnection.php');
$id = $_GET['id'];
//LAY RA CATEGORIES
 $query_posts="SELECT *FROM posts WHERE id =".$id;
 $result_posts =$conn->query($query_posts);
 $posts = $result_posts->fetch_assoc();
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
        <h2>title:<?= $posts['title']?></h2>
        <h3>description:<?=$posts['description']?></h3>
        <h3>Thumbnail:<img src="../../img/<?= $posts['thumbnail']?>"></h3>
        <h2>Created at:<?=$posts['created_ad']?></h3>
        <p><b><em>Contents:</em></b><?=$posts['contents']?></p>
    </div>
</body>
</html>
