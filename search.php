<?php
include "top.php";
$msg = 'Data Not Found';

$str = mysqli_real_escape_string($con,$_GET['str']);
if($str!=''){
    $get_product = get_product($con,'','','',$str);
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
                        <p class="m-0">Search</p>
                        <p class="m-0 px-2">-</p>
                        <p class="m-0"><?= $str ?></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Shop Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Searched Items</span></h2>
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
                            <div class="dropdown ml-4">
                                <button class="btn border dropdown-toggle" type="button" id="triggerId" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                            Sort by
                                        </button>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
                                    <a class="dropdown-item" href="#">Latest</a>
                                    <a class="dropdown-item" href="#">Popularity</a>
                                    <a class="dropdown-item" href="#">Best Rating</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <?php
                    $get_product=get_product($con,'','','',$str);
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
                    
                    <!-- Start Pagination -->
                    <div class="col-12 pb-1">
                        <nav aria-label="Page navigation">
                          <ul class="pagination justify-content-center mb-3">
                            <li class="page-item disabled">
                              <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                              </a>
                            </li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                              <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                              </a>
                            </li>
                          </ul>
                        </nav>
                    </div>
                    <!-- End Pagination -->
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