<?php
include "top.php";
if(isset($_SESSION['USER_LOGIN']) && $_SESSION['USER_LOGIN']!=''){
}
else {
    echo "<script>window.location.href='index.php'</script>";
   die();
}
$order_id=get_safe_value($con,$_GET['id']);
?>

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Order Detail</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Order Detail</p>
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
                            <th>Product</th>
                            <th>Qty</th>
                            <th>Price</th>
                            <th>Total Price</th>
                        </tr>
                    </thead>
                    <tbody class="align-middle">
                    <?php
                        $uid=$_SESSION['USER_ID'];
                        $res=mysqli_query($con,"select distinct(orders_detail.Id), orders_detail.*,product.Image,product.Name from orders_detail,product,orders where orders_detail.Order_Id='$order_id' and orders.User_Id='$uid' and product.Id=orders_detail.Product_Id");
                        $total_price=0;
                        while($row=mysqli_fetch_assoc($res)){
                            $total_price=$total_price+($row['Qty']*$row['Price'])
                    ?>
                        <tr>
                            <td class="align-middle" style="text-align: left;"><img src="./image/<?= $row['Image'] ?>" height="50" width="50" alt=""> <?= $row['Name'] ?></td>
                            <td class="align-middle"><?= $row['Qty'] ?></td>
                            <td class="align-middle">RS.<?= $row['Price'] ?></td>
                            <td class="align-middle">Rs.<?= $row['Qty']*$row['Price'] ?></td>
                        </tr>
                        <?php
                        }
                        ?>
                        <tr>
                            <td style="color:black" class="align-middle" colspan="3"><b>Total</b></td>
                            <td style="color:black"><b>Rs.<?= $total_price ?></b></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
        </div>
    </div>
    <!-- Cart End -->

<?php
include "footer.php";
?>