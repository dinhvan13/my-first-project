
<?php 
 require_once('../../myconnection.php');
 $id = $_GET['id'];
//LAY RA CATEGORIES
 $query_author="SELECT *FROM authors WHERE id =".$id;
 $result_author =$conn->query($query_author);
 $authors = $result_author->fetch_assoc();
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
    <h3 align="center">Update Authors Information</h3>
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
        <form action="author_add_action.php" method="POST" role="form" enctype="multipart/form-data">
            <div class="form-group">
                <label for="">Name</label>
                <input type="text" class="form-control" id="" placeholder="" name="name">
            </div>
            <div class="form-group">
                <label for="">Email</label>
                <input type="text" class="form-control" id="" placeholder="" name="email">
            </div>
            <div class="form-group">
            	<label for="">Password</label>
            	<input type="password" class="form-control"name="password" placeholder="" size="15" maxlength="20">
            	
            </div>
            <div class="form-group">
                <label for="">Trạng thái:</label>
                <input type="checkbox" id=""value="1" name="status" placeholder=""><em>(Check để hiển thị tác giả)</em>
            </div>
            <button type="submit" class="btn btn-primary">Create</button>
        </form>
    </div>
</body>
</html>