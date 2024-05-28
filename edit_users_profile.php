<?php

include "top.php";

$msg = '';
$name = '';
$email = '';
$mobile = '';
$password = '';

if(isset($_GET['id']) && $_GET['id'] !=''){
	$_id = $_GET['id'];
	$res = mysqli_query($con,"select * from users where Id=$_id");
 
	$check = mysqli_num_rows($res);
 
	if($check>0){
	   $row = mysqli_fetch_array($res);
	   $name = $row['Name'];
	   $email = $row['Email'];
	   $mobile = $row['Mobile'];
       $password = $row['Password'];
	}
	else{
        echo "<script>window.location.href='user_profile.php'</script>";
	   die();
	}
 
 }
 
 if(isset($_REQUEST['submit'])){
	 $name = $_REQUEST['name'];
	 $email = $_REQUEST['email'];
	 $mobile = $_REQUEST['mobile'];
     $password = $_REQUEST['password'];

     $p_update = "update users set Name='$name',Email='$email',Mobile='$mobile',Password='$password' where Id='$_id'";
     mysqli_query($con,$p_update);
	
		echo "<script>window.location.href='user_profile.php'</script>";
		die();
	}



?>

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Edit Profile</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Edit Profile</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

            <div class="container-fluid pt-5">
                <div class="row px-xl-5">
                    <div class="card col-lg-8 table-responsive mb-5">
                        <div class="card-header bg-secondary text-dark">
                        <h4>Profile</h4>
                    </div>
                        <form method="post" enctype="multipart/form-data">
							<div class="card-body card-block">

								<div class="form-group">
									<label for="categories" class=" form-control-label">Name</label>
									<input type="text" name="name" placeholder="Enter name" class="form-control" required value="<?= $name ?>">
								</div>

                        		<div class="form-group">
									<label for="categories" class=" form-control-label">Email</label>
									<input type="text" name="email" placeholder="Enter Email" class="form-control" required value="<?= $email ?>">
								</div>

                        		<div class="form-group">
									<label for="categories" class=" form-control-label">Mobile</label>
									<input type="text" name="mobile" placeholder="Enter Mobile" class="form-control" required value="<?= $mobile ?>">
								</div>
								
								<div class="form-group">
									<label for="categories" class=" form-control-label">Password</label>
									<input type="text" name="password" placeholder="Enter password" class="form-control" required value="<?= $password ?>">
								</div>
								
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