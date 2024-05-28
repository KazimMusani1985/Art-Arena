<?php

include "config.php";
include "top.php";

$msg = '';
$name = '';
$image = '';
$password = '';
$email = '';
$mobile = '';
$role = '';
$image_required = 'required';

if($_SESSION['ADMIN_ROLE']=="admin"){
	if(isset($_GET['id']) && $_GET['id'] !=''){
	$image_required = '';
	$_id = get_safe_value($con,$_GET['id']);
	$res = mysqli_query($con,"select * from admin_user where Id=$_id");
 
	$check = mysqli_num_rows($res);
 
	if($check>0){
	   $row = mysqli_fetch_array($res);
	   $name = $row['Name'];
	   $password = $row['Password'];
	   $email = $row['Email'];
	   $mobile = $row['Mobile'];
      $role = $row['Role'];
	}
	else{
	   header('Location: profile.php');
	   die();
	}
 
 }
 
 if(isset($_REQUEST['submit'])){
	 $name = get_safe_value($con,$_REQUEST['name']);
	 $password = get_safe_value($con,$_REQUEST['password']);
	 $email = get_safe_value($con,$_REQUEST['email']);
	 $mobile = get_safe_value($con,$_REQUEST['mobile']);
    $role = get_safe_value($con,$_REQUEST['role']);
 
	 $res = mysqli_query($con,"select * from admin_user where Email='$email' || Mobile='$mobile'");
	
	$check = mysqli_num_rows($res);
 
	if($check>0){
		if(isset($_GET['id']) && $_GET['id'] !=''){
		   $getData = mysqli_fetch_assoc($res);
		   if($_id==$getData['Id']){
            
         }
		   else{
			  $msg = "User Already Exist";
		   }
		}
		else{
		   $msg = "User Already Exist";
		}
	 }

	 if($_FILES['image']['type']!='' && ($_FILES['image']['type']!='image/png' && $_FILES['image']['type']!='image/jpg' && $_FILES['image']['type']!='image/jpeg' && $_FILES['image']['type']!='image/gif' && $_FILES['image']['type']!='image/bmp')){
		$msg = "Please select only png, jpg or jpeg format";
	 }

	 if($msg==''){
	   if(isset($_GET['id']) && $_GET['id'] !=''){
		if($_FILES["image"]["name"]!=''){
			$image = $_FILES["image"]["name"];
    		$tempname = $_FILES["image"]["tmp_name"];
    		$folder = "./admin_users_images/" . $image;
			if (move_uploaded_file($tempname, $folder)) {
				echo "";
			} else {
				echo "<h3>  Failed to upload image!</h3>";
			}
			$p_update = "update admin_user set Name='$name',Password='$password',Email='$email',Mobile='$mobile',Role='$role',Image='$image' where Id='$_id'";
		}
		else{
			$p_update = "update admin_user set Name='$name',Password='$password',Email='$email',Mobile='$mobile',Role='$role' where Id='$_id'";
		}
		  mysqli_query($con,$p_update);
		}
		else{
			$image = $_FILES["image"]["name"];
    		$tempname = $_FILES["image"]["tmp_name"];
    		$folder = "./admin_users_images/" . $image;
			if (move_uploaded_file($tempname, $folder)) {
				echo "";
			} else {
				echo "<h3>  Failed to upload image!</h3>";
			}
		  mysqli_query($con,"insert into admin_user (Name,Password,Email,Mobile,Status,Role,Image) Value ('$name','$password','$email','$mobile','1','$role','$image')");
		}
	
		echo "<script>window.location.href='profile.php'</script>";
		die();
	}
	 
 }
}
else{
	if(isset($_GET['id']) && $_GET['id'] !=''){
	$image_required = '';
	$_id = get_safe_value($con,$_GET['id']);
	$res = mysqli_query($con,"select * from admin_user where Id=$_id");
 
	$check = mysqli_num_rows($res);
 
	if($check>0){
	   $row = mysqli_fetch_array($res);
	   $password = $row['Password'];
	}
	else{
	   header('Location: profile.php');
	   die();
	}
 
 }
 
 if(isset($_REQUEST['submit'])){
	 $password = get_safe_value($con,$_REQUEST['password']);

	 if($_FILES['image']['type']!='' && ($_FILES['image']['type']!='image/png' && $_FILES['image']['type']!='image/jpg' && $_FILES['image']['type']!='image/jpeg' && $_FILES['image']['type']!='image/gif' && $_FILES['image']['type']!='image/bmp')){
		$msg = "Please select only png, jpg or jpeg format";
	 }

	 if($msg==''){
	   if(isset($_GET['id']) && $_GET['id'] !=''){
		if($_FILES["image"]["name"]!=''){
			$image = $_FILES["image"]["name"];
    		$tempname = $_FILES["image"]["tmp_name"];
    		$folder = "./admin_users_images/" . $image;
			if (move_uploaded_file($tempname, $folder)) {
				echo "";
			} else {
				echo "<h3>  Failed to upload image!</h3>";
			}
			$pp_update = "update admin_user set Password='$password',Image='$image' where Id='$_id'";
		}
		else{
			$pp_update = "update admin_user set Password='$password' where Id='$_id'";
		}
		  mysqli_query($con,$pp_update);
		}
	
		echo "<script>window.location.href='profile.php'</script>";
		die();
	}
	 
 }
}



?>

<div class="row">
              <div class="col-12">
                <div class="card">
                <div class="card-header">
                  <h4>Profile</h4><span>Form</span>
               </div>
               <form method="post" enctype="multipart/form-data">
							<div class="card-body card-block">

							<?php
							if($_SESSION['ADMIN_ROLE']=='admin'){
							?>

								<div class="form-group">
									<label for="categories" class=" form-control-label">Name</label>
									<input type="text" name="name" placeholder="Enter name" class="form-control" required value="<?= $name ?>">
								</div>
							<?php
							}
							?>

                        		<div class="form-group">
									<label for="categories" class=" form-control-label">Image</label>
									<input type="file" name="image" class="form-control" <?= $image_required ?> >
								</div>
							<?php
							if($_SESSION['ADMIN_ROLE']=='admin'){
							?>

                        		<div class="form-group">
									<label for="categories" class=" form-control-label">Email</label>
									<input type="text" name="email" placeholder="Enter Email" class="form-control" required value="<?= $email ?>">
								</div>

                        		<div class="form-group">
									<label for="categories" class=" form-control-label">Mobile</label>
									<input type="text" name="mobile" placeholder="Enter Mobile" class="form-control" required value="<?= $mobile ?>">
								</div>
							<?php
							}
							?>
								
								<div class="form-group">
									<label for="categories" class=" form-control-label">Password</label>
									<input type="text" name="password" placeholder="Enter password" class="form-control" required value="<?= $password ?>">
								</div>
							<?php
							if($_SESSION['ADMIN_ROLE']=='admin'){
							?>

                        		<div class="form-group">
									<label for="categories" class=" form-control-label">Role</label>
									<input type="text" name="role" placeholder="Enter Role" class="form-control" required value="<?= $role ?>">
								</div>
							<?php
							}
							?>
								
							   <button id="payment-button" name="submit" type="submit" class="btn btn-lg btn-primary btn-block">
							   <span id="payment-button-amount">Submit</span>
							   </button>
                        		<div style="color: red; margin-top: 10px;">
                           		<?= $msg ?>
                        		</div>
							</div>
						</form>
                </div>
            </div>

<?php
include "footer.php"
?>