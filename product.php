<?php
include "top.php";
$product_id = mysqli_real_escape_string($con,$_GET['id']);

if($product_id>0){
    $get_product = get_product($con,'','',$product_id);
}
else{
    echo "<script>window.location.href='index.php'</script>";
    
}

?>

</div>

<div class="row border-top px-xl-5">
    <!-- Shop Detail Start -->
    <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <div class="col-lg-5 pb-5">
                <div>
                    <div class="carousel-inner border">
                        <div class="carousel-item active">
                            <img src="./image/<?= $get_product['0']['Image'] ?>" height="350px" alt="Image">
                        </div>
                        <div class="carousel-item">
                        <img src="./image/<?= $get_product['0']['Image'] ?>" height="350px" alt="Image">
                        </div>
                        <div class="carousel-item">
                        <img src="./image/<?= $get_product['0']['Image'] ?>" height="350px" alt="Image">
                        </div>
                        <div class="carousel-item">
                        <img src="./image/<?= $get_product['0']['Image'] ?>" height="350px" alt="Image">
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-7 pb-5">
                <h4 class="font-weight-semi-bold"><?= $get_product['0']['Name'] ?></h4>
                <div class="d-flex mb-3">
                    <div class="text-primary mr-2">
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star-half-alt"></small>
                        <small class="far fa-star"></small>
                    </div>
                    <small class="pt-1">(50 Reviews)</small>
                </div>
                <h4 class="font-weight-semi-bold mb-4">Rs.<?= $get_product['0']['Price'] ?></h4>
                <p class="mb-4"><?= $get_product['0']['Short_Description'] ?></p>
                <?php
                $productSoldQtyByProductId=productSoldQtyByProductId($con,$get_product['0']['Id']);
                $cart_show='yes';
                if($get_product['0']['Qty']>$productSoldQtyByProductId){
                    $stock='In Stock';
                }else{
                    $stock='Not in Stock';
                    $cart_show='';
                }
                ?>
                <div class="d-flex mb-4">
                <p class="text-dark font-weight-medium mb-0 mr-3">Availability:</p>
                <?php
                if($cart_show!=''){
                ?>
                <p class="mb-4"><?= $stock ?></p>
                <?php
                }else{
                ?>
                <p style="color:red;" class="mb-4"><?= $stock ?></p>
                <?php
                }
                ?>
                </div>
                <?php
                if($cart_show!=''){
                ?>
                <div class="d-flex align-items-center mb-4 pt-2">
                    <div class="input-group quantity mr-3" style="width: 130px;">
                        <div class="input-group-btn">
                            <button class="btn btn-primary btn-minus" >
                            <i class="fa fa-minus"></i>
                            </button>
                        </div>
                        <input type="text" id="qty" class="form-control bg-secondary text-center" value="1">
                        <div class="input-group-btn">
                            <button class="btn btn-primary btn-plus">
                                <i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>
                    <a class="btn btn-primary px-3" href="javascript:void(0)" onclick="manage_cart('<?= $get_product['0']['Id']?>','add')"><i class="fa fa-shopping-cart mr-1"></i> Add To Cart</a>
                </div>
                <?php
                }
                ?>
                <div class="d-flex pt-2">
                    <p class="text-dark font-weight-medium mb-0 mr-2">Share on:</p>
                    <div class="d-inline-flex">
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-pinterest"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row px-xl-5">
            <div class="col">
                <div class="nav nav-tabs justify-content-center border-secondary mb-4">
                    <a class="nav-item nav-link active" data-toggle="tab" href="#tab-pane-1">Description</a>
                    <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-2">Information</a>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="tab-pane-1">
                        <h4 class="mb-3">Product Description</h4>
                        <p><?= $get_product['0']['Description'] ?></p>
                    </div>
                    <div class="tab-pane fade" id="tab-pane-2">
                        <h4 class="mb-3">Additional Information</h4>
                        <p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.</p>
                        <div class="row">
                            <div class="col-md-6">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item px-0">
                                        Sit erat duo lorem duo ea consetetur, et eirmod takimata.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Amet kasd gubergren sit sanctus et lorem eos sadipscing at.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Duo amet accusam eirmod nonumy stet et et stet eirmod.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.
                                    </li>
                                  </ul> 
                            </div>
                            <div class="col-md-6">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item px-0">
                                        Sit erat duo lorem duo ea consetetur, et eirmod takimata.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Amet kasd gubergren sit sanctus et lorem eos sadipscing at.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Duo amet accusam eirmod nonumy stet et et stet eirmod.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.
                                    </li>
                                  </ul> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Shop Detail End -->
</div>


<?php
include "footer.php";
?>