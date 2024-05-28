<?php
include "top.php";
$msg = 'Data Not Found';

$cat_id = mysqli_real_escape_string($con,$_GET['id']);
if($cat_id>0){
    $get_product = get_product($con,'',$cat_id,'');
}
else{
    echo "<script>window.location.href='index.php'</script>";
    
}

?>


<!-- Page Header Start -->
            
<div class="container-fluid bg-secondary mb-5">
                <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
                    <h1 class="font-weight-semi-bold text-uppercase mb-3">Our Shop</h1>
                    <div class="d-inline-flex">
                        <p class="m-0"><a href="">Home</a></p>
                        <p class="m-0 px-2">-</p>
                        <p class="m-0">Shop</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Shop Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Shop by Categories</span></h2>
        </div>
        <div class="row px-xl-5">

        <?php
        if(count($get_product)>0){
        ?>

            <!-- Shop Product Start -->
            <div class="col-lg-12 col-md-12">
                <div class="row pb-3">
                    <div class="col-12 pb-1">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <form action="">
                                <div class="input-group">
                                    <input type="hidden" class="form-control" placeholder="Search by name">
                                </div>
                            </form>
                        </div>
                    </div>

                    <?php
                    $get_product=get_product($con,'',$cat_id,'');
                    foreach($get_product as $list){
                    ?>
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0" style="text-align:center;">
                            <a href="product.php?id=<?= $list['Id']?>"><img src="./image/<?= $list['Image'] ?>" height="200" width="200" alt=""></a>
                            </div>
                            <div class="card-body border-left border-right border-bottom text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3"><?= $list['Name']?></h6>
                                <div class="d-flex justify-content-center">
                                    <h6>Rs.<?= $list['Price']?></h6>
                                    <h6 class="text-muted ml-2">Rs.<del><?= $list['Price']?></del></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                    }
                    ?>
                </div>
            </div>
            <!-- Shop Product End -->

            <?php
            }
            else{
            ?>
                <div class="col-12" style="text-align:center; font-size:25px;color:red;">
                     <?= $msg ?>
                  </div>
            <?php
            }
            ?>
        </div>
    </div>
    <!-- Shop End -->


<?php
include "footer.php";
?>