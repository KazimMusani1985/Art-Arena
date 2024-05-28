<?php
include "top.php";
if(isset($_SESSION['USER_LOGIN']) && $_SESSION['USER_LOGIN']!=''){
}
else {
    echo "<script>window.location.href='index.php'</script>";
   die();
}

$select = "select * from users where users.Id='".$_SESSION['USER_ID']."'";
$res = mysqli_query($con,$select);

?>

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Profile</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Profile</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Cart Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-8 table-responsive mb-5">
                <table class="table table-bordered text-center mb-0">
                    <thead class="bg-secondary text-dark">
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Mobile</th>
                            <th>Password</th>
                            <th>Edit Details</th>
                            <!-- <th>View Details</th> -->
                        </tr>
                    </thead>
                    <?php
                    if(mysqli_num_rows($res) > 0){
                    ?>
                    <tbody class="align-middle">
                        <?php
                        while($row = mysqli_fetch_array($res)){
                        ?>
                        <tr>
                            <td class="align-middle"><?= $row['Name'] ?></td>
                            <td class="align-middle"><?= $row['Email'] ?></td>
                            <td class="align-middle"><?= $row['Mobile'] ?></td>
                            <td class="align-middle">*****</td>
                            <td class="align-middle">
                                <a href="edit_users_profile.php?id=<?= $row['Id'] ?>" class="btn btn-primary btn-action mr-1">
                                    <i class="fas fa-pencil-alt"></i>
                                </a>
                            </td>
                        </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                    <?php
                    }
                    ?>
                </table>
            </div>
            
        </div>
    </div>
    <!-- Cart End -->


<?php
include "footer.php";
?>