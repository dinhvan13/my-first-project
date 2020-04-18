<?php 
require_once('../../myconnection.php');
//LAY RA CATEGORIES
 $query_posts="SELECT *FROM posts";
 $result_posts =$conn->query($query_posts);
 $posts =array();
 $result1_posts = $result_posts->fetch_assoc();
 while ($row = $result_posts->fetch_assoc()) {
  # code...
  $posts[]=$row;
 }
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
    <h3 align="center">Posts List</h3>
    <a href="posts_add.php?id=<?=$result1_posts['id']?>" type="button" class="btn btn-primary">Thêm mới</a>
    <!-- <div class="alert alert-success">
      <strong>Thành công! </strong> Thêm mới thành công!! 
    </div> -->
    <hr>
    <?php 
            if (isset($_COOKIE['msg'])) {
                # code...

            
        ?>
        <div class="alert alert-success">
        <strong>Thành công! </strong> <?= $_COOKIE['msg']?>
        </div>
        <?php 
           }
         ?>
    <table class="table">
      <thead>
        <tr>
          <th scope="col">ID</th>
          <th scope="col">Title</th>
          <th scope="col">Description</th>
          <th scope="col">Thumbnail</th>
          <th scope="col">CRUD</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach($posts as $post){ ?>
        <tr>
          <th scope="row"><?= $post['id']?></th>
          <td><?= $post['title'] ?></td>
          <td><?= $post['description']?></td>
          <td><img src="../../img/<?= $post['thumbnail']?>" width="30px" height="20px"></td>
          <td>
            <a href="posts_detail.php?id=<?=$post['id']?>" type="button" class="btn btn-default">Xem</a>
            <a href="posts_edit.php?id=<?=$post['id']?>" type="button" class="btn btn-success">Sửa</a>
            <a href="posts_delete.php?id=<?=$post['id']?>" type="button" class="btn btn-warning">Xóa</a>
          </td>
        </tr>
      <?php } ?>
      </tbody>
    </table>
    </div>
</body>
</html>