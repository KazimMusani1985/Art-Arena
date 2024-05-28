<?php
include "top.php";
if(isset($_SESSION['USER_LOGIN']) && $_SESSION['USER_LOGIN']!=''){
}
else {
    echo "<script>window.location.href='index.php'</script>";
   die();
}
?>

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">My Order</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">My Order</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Cart Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-12 table-responsive mb-5">
                <table class="table table-bordered text-center mb-0">
                    <thead class="bg-secondary text-dark">
                        <tr>
                            <th>Tracking Id</th>
                            <th>Order Date</th>
                            <th>Address</th>
                            <th>Payment Type</th>
                            <th>Payment Status</th>
                            <th>Order Status</th>
                            <!-- <th>View Details</th> -->
                        </tr>
                    </thead>
                    <tbody class="align-middle">
                        <?php
                        $uid=$_SESSION['USER_ID'];
                        $res=mysqli_query($con,"select orders.*,order_status.Name as Order_Status_Str from orders,order_status where orders.user_id='$uid' and order_status.Id=orders.order_status order by orders.Id desc");
                        while($row=mysqli_fetch_assoc($res)){
                            ?>
                        <tr>
                            <td class="align-middle"><a href="orders_detail.php?id=<?= $row['Id'] ?>"><?= $row['Tracking_Id'] ?></a></td>
                            <td class="align-middle"><?= $row['Date'] ?></td>
                            <td class="align-middle">
                                <?= $row['Address'] ?><br>
                                <?= $row['City'] ?><br>
                                <?= $row['Pincode'] ?>
                        </td>
                            <td class="align-middle"><?= $row['Payment_Type'] ?></td>
                            <td class="align-middle"><?= $row['Payment_Status'] ?></td>
                            <td class="align-middle"><?= $row['Order_Status_Str'] ?></td>
                            <!-- <td class="align-middle">
                            <a class="btn btn-primary px-3" href="orders_detail.php?id=<?= $row['Id'] ?>"><i class="fa fa-eye mr-1"></i> View Details</a>
                            </td> -->
                        </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
            
        </div>
    </div>
    <!-- Cart End -->


<?php
include "footer.php";
?>