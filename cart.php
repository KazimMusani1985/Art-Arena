<?php
include "top.php";
?>

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Shopping Cart</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Shopping Cart</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Cart Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-10 table-responsive mb-5">
                <table class="table table-bordered text-center mb-0">
                    <thead class="bg-secondary text-dark">
                        <tr>
                            <th>Products</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Remove</th>
                        </tr>
                    </thead>
                    <tbody class="align-middle">
                        <?php
						if(isset($_SESSION['cart'])){
							$cart_total=0;
							foreach($_SESSION['cart'] as $key=>$val){
							$productArr=get_product($con,'','',$key);
							$image=$productArr[0]['Image'];
                            $pname=$productArr[0]['Name'];
							$price=$productArr[0]['Price'];
							$qty=$val['qty'];
                            $cart_total=$cart_total+($price*$qty);
						?>
                        <tr>
                            <td class="align-middle" style="text-align: left;"> <img src="./image/<?= $image ?>" height="350px" style="width: 40px; height: 40px;"><?= $pname?></td>
                            <td class="align-middle">Rs.<?= $price?></td>
                            <td class="align-middle"><?= $qty?></td>
                            <td class="align-middle">Rs.<?= $qty*$price ?></td>
                            <td class="align-middle"><a href="javascript:void(0)" onclick="manage_cart('<?php echo $key?>','remove')" class="btn btn-sm btn-primary"><i class="fa fa-times"></i></a></td>
                        </tr>
                        <?php
                            }
                        }
                        ?>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-4">
                <form class="mb-5" action="">
                    <div class="input-group">
                        <input type="text" class="form-control p-4" placeholder="Coupon Code">
                        <div class="input-group-append">
                            <button class="btn btn-primary">Apply Coupon</button>
                        </div>
                    </div>
                </form>
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Subtotal</h6>
                            <h6 class="font-weight-medium">Rs.<?= $cart_total ?></h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Tax</h6>
                            <h6 class="font-weight-medium">Rs.<?= $cart_total*20/100 ?></h6>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Total</h5>
                            <h5 class="font-weight-bold">Rs.<?= $cart_total*20/100+$cart_total ?></h5>
                        </div>
                        <?php
                        if(!isset($_SESSION['USER_LOGIN'])){
                            echo '<a href="#myModal" data-toggle="modal" class="btn btn-block btn-primary my-3 py-3">Proceed To Checkout</a>';
                        }
                        else{
                            echo '<a href="checkout.php" class="btn btn-block btn-primary my-3 py-3">Proceed To Checkout</a>';
                        }
                        ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Cart End -->

<?php
include "footer.php";
?>