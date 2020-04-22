<?php 
session_start();
  if (!isset($_SESSION['isLogin']) && $_SESSION['isLogin'] != true) {
      header("Location:../login.php");}
require_once('../../myconnection.php');
//LAY RA CATEGORIES
 $query_author="SELECT *FROM authors";
 $result_author =$conn->query($query_author);
 $author =array();
 $result1_author = $result_author->fetch_assoc();
 while ($row = $result_author->fetch_assoc()) {
  # code...
  $author[]=$row;
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
    <h3 align="center">Author List</h3>
    <a href="author_add.php?id=<?=$result1_author['id']?>" type="button" class="btn btn-primary">Thêm mới</a>
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
          <th scope="col">Name</th>
          <th scope="col">Email</th>
          <th scope="col">CRUD</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach($author as $au){ ?>
        <tr>
          <th scope="row"><?= $au['id']?></th>
          <td><?= $au['name'] ?></td>
          <td><?= $au['email']?></td>
          <td>
            <a href="author_detail.php?id=<?=$au['id']?>" type="button" class="btn btn-default">Xem</a>
            <a href="author_edit.php?id=<?=$au['id']?>" type="button" class="btn btn-success">Sửa</a>
            <a href="author_delete.php?id=<?=$au['id']?>" type="button" class="btn btn-warning">Xóa</a>
          </td>
        </tr>
      <?php } ?>
      </tbody>
    </table>
    </div>
</body>
</html>
