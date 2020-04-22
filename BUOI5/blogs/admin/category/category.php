<?php 
  session_start();
  if (!isset($_SESSION['isLogin']) && $_SESSION['isLogin'] != true) {
      header("Location:../login.php");
    }
  require_once('../../myconnection.php');
 //LAY RA CATEGORIES
 $query_cate="SELECT *FROM categories";
 $result_cate =$conn->query($query_cate);
 $categories_cate =array();
 $result1_cate = $result_cate->fetch_assoc();
 while ($row = $result_cate->fetch_assoc()) {
  # code...
  $categories_cate[]=$row;
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
    <h3 align="center">Category List</h3>
    <a href="category_add.php?id=<?=$result1_cate['id']?>" type="button" class="btn btn-primary">Thêm mới</a>
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
          <th scope="col">CRUD</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach($categories_cate as $cate){ ?>
        <tr>
          <th scope="row"><?= $cate['id']?></th>
          <td><?= $cate['title'] ?></td>
          <td><?= $cate['description']?></td>
          <td>
            <a href="category_detail.php?id=<?=$cate['id']?>" type="button" class="btn btn-default">Xem</a>
            <a href="category_edit.php?id=<?=$cate['id']?>" type="button" class="btn btn-success">Sửa</a>
            <a href="category_delete.php?id=<?=$cate['id']?>" type="button" class="btn btn-warning">Xóa</a>
          </td>
        </tr>
      <?php } ?>
      </tbody>
    </table>
    </div>
</body>
</html>