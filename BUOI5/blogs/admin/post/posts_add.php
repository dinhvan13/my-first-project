
<?php 
session_start();
  if (!isset($_SESSION['isLogin']) && $_SESSION['isLogin'] != true) {
      header("Location:../login.php");}
 require_once('../../myconnection.php');
 $id = $_GET['id'];
//LAY RA CATEGORIES
 $query_posts="SELECT *FROM posts WHERE id =".$id;
 $result_posts =$conn->query($query_posts);
 $posts = $result_posts->fetch_assoc();

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
    <h3 align="center">Update Post Information</h3>
    <hr>
       <?php 
            if (isset($_COOKIE['msg'])) {
            	# code...

            
        ?>
        <div class="alert alert-warning">
          <strong>Thất bại</strong> Thêm mới không thành công !!!
        </div>
        <?php 
           }
         ?>
        <form action="posts_add_action.php" method="POST" role="form" enctype="multipart/form-data">
            <div class="form-group">
                <label for="">Title</label>
                <input type="text" class="form-control" id="" placeholder="" name="title">
            </div>
            <div class="form-group">
                <label for="">Description</label>
                <input type="text" class="form-control" id="" placeholder="" name="description">
            </div>
            <div class="form-group">
                <label for="">Contents</label>
                <textarea class="form-control" id="" placeholder="" name="contents" rows="8" ></textarea>
            </div>
            <div class="form-group">
                <label for="">Thumbnail</label>
                <input type="file"  class="form-control" id="" placeholder=""name="thumbnail" >
            </div>
            <div class="form-group">
            <label for="">Category:</label>
            <select name="category_id" class="form-control">
               <?php 
                   foreach ($categories_cate as $cate) {
                       
                ?>
            <option value="<?= $cate['id']?>"><?=$cate['title']?></option>
            <?php 
            }
             ?>
            </select>
            </div>

            <div class="form-group">
                <label for="">Hiển thị bài viết</label>
                <input type="checkbox" id=""value="1" name="status" placeholder=""><em>(Check để hiển thị bài viết)</em>
            </div>

            <button type="submit" class="btn btn-primary">Create</button>
        </form>
    </div>
</body>
</html>