<?php
include "top.php";

// $msg='';

if(isset($_SESSION['USER_LOGIN']) && $_SESSION['USER_LOGIN']!=''){
}
else {
    echo "<script>window.location.href='Index.php'</script>";
   die();
}

if(!isset($_SESSION['cart']) || count($_SESSION['cart'])==0){
    // echo $msg;
    echo "<script>window.location.href='shop.php'</script>";
}

$cart_total=0;

foreach($_SESSION['cart'] as $key=>$val){
	$productArr=get_product($con,'','',$key);
	$price=$productArr[0]['Price'];
	$qty=$val['qty'];
    $cart_total=$cart_total+($price*$qty);
}

if(isset($_POST['submit'])){
    $user_id=$_SESSION['USER_ID'];
    $address=get_safe_value($con,$_POST['address']);
    $email=get_safe_value($con,$_POST['email']);
    $mobile=get_safe_value($con,$_POST['mobile']);
    $city=get_safe_value($con,$_POST['city']);
    $area=get_safe_value($con,$_POST['area']);
    $pincode=get_safe_value($con,$_POST['pincode']);
    $payment_type=get_safe_value($con,$_POST['payment_type']);
    $payment_status='pending';
    if($payment_type=='cash_on_delivery'){
        $payment_status='success';
    }
    $total_price=$cart_total;
    $order_status='1';
    $date=date('y-m-d h:m:s');
    $tracking_id= "#".rand(1111111,9999999);

    mysqli_query($con,"insert into orders (Tracking_Id,User_Id,Email,Mobile,Address,City,Area,Pincode,Payment_Type,Total_Price,Payment_Status,Order_Status,Date) values('$tracking_id','$user_id','$email','$mobile','$address','$city','$area','$pincode','$payment_type','$total_price','$payment_status','$order_status','$date')");

    $order_id=mysqli_insert_id($con);

    foreach($_SESSION['cart'] as $key=>$val){
        $productArr=get_product($con,'','',$key);
        $price=$productArr[0]['Price'];
        $qty=$val['qty'];

        mysqli_query($con,"insert into orders_detail (Order_Id,Product_Id,Qty,Price) values('$order_id','$key','$qty','$price')");
    }
    unset($_SESSION['cart']);
    echo "<script>window.location.href='thankyou.php'</script>";
}

?>

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Checkout</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Checkout</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Checkout Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <div class="card-header bg-secondary border-0">
                    <h4 class="font-weight-semi-bold mb-0" data-toggle="collapse" data-target="#shipping-address">Shipping Address</h4>
                </div>
                <form action="" method="post">
                    <!-- <div class="collapse mb-4 card-body" id="shipping-address"><br> -->
                    <div class="mb-4 card-body" id=""><br>
                    <div class="row">
                    <div class="col-md-6 form-group">
                            <label>E-mail</label>
                            <input class="form-control"name="email" type="text" placeholder="example@email.com" required>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Mobile No</label>
                            <input class="form-control"name="mobile" type="text" placeholder="+123 456 789" required>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Address</label>
                            <input class="form-control"name="address" type="text" placeholder="123 Street" required>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>City</label>
                            <input class="form-control"name="city" type="text" placeholder="Islamabad" required>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Area</label>
                            <input class="form-control"name="area" type="text" placeholder="Commercial District" required>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>ZIP Code</label>
                            <input class="form-control"name="pincode" type="text" placeholder="123" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Order Total</h4>
                    </div>
                    <div class="card-body">
                        <h5 class="font-weight-medium mb-3">Products</h5>
                        <?php
                            $cart_total=0;
							foreach($_SESSION['cart'] as $key=>$val){
							$productArr=get_product($con,'','',$key);
							$image=$productArr[0]['Image'];
                            $pname=$productArr[0]['Name'];
							$price=$productArr[0]['Price'];
							$qty=$val['qty'];
                            $cart_total=$cart_total+($price*$qty);
						?>
                        <div class="d-flex justify-content-between">
                            <p> <img src="./image/<?= $image ?>" height="350px" style="width: 40px; height: 40px;"> <?= $pname ?></p>
                            <p>Rs.<?= $price*$qty ?></p>
                        </div>
                        <?php
                            }
                        ?>
                        <hr class="mt-0">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Subtotal</h6>
                            <h6 class="font-weight-medium">Rs.<?= $cart_total ?></h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Shipping</h6>
                            <h6 class="font-weight-medium">Rs.<?= $cart_total*20/100 ?></h6>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Total</h5>
                            <h5 class="font-weight-bold">Rs.<?= $cart_total*20/100+$cart_total ?></h5>
                        </div>
                    </div>
                </div>
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Payment</h4>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" name="payment_type" value="paypal" id="paypal" required>
                                <label class="custom-control-label" for="paypal">Paypal</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" name="payment_type" value="bank_tranfer" id="banktransfer" required>
                                <label class="custom-control-label" for="banktransfer">Bank Transfer</label>
                            </div>
                        </div>
                        <div class="">
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" name="payment_type" value="cash_on_delivery" id="cash_on_delivery" required>
                                <label class="custom-control-label" for="cash_on_delivery">Cash on Delivery</label>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <input type="submit" name="submit" class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3" value="Place Order">
                    </div>
                </div>
            </div>
                </form>
        </div>
    </div>
    <!-- Checkout End -->

<?php
include "footer.php";
?>