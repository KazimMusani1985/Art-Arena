<?php
require "config.php";
require "functions.php";
require "add_cart_func.php";


$active = substr($_SERVER['SCRIPT_NAME'], strrpos($_SERVER['SCRIPT_NAME'],"/")+1);

$sql = "select * from categories";
$res = mysqli_query($con,$sql);
$cat_arr=array();
while($row=mysqli_fetch_assoc($res)){
    $cat_arr[]=$row;
}

$obj=new add_to_cart();
$totalProduct=$obj->totalProduct();

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>EShopper - Bootstrap Shop Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid">
        <div class="row bg-secondary py-2 px-xl-5">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="d-inline-flex align-items-center">
                    <a class="text-dark" href="">FAQs</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="">Help</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="">Support</a>
                </div>
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
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
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-dark pl-2" href="">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="index.php" class="text-decoration-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">Art</span>Arena</h1>
                </a>
            </div>
            <div class="col-lg-6 col-6 text-left">
                <form action="search.php" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" name="str" placeholder="Search for products">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-6 text-right">
                <a href="cart.php" class="btn border">
                    <i class="fas fa-shopping-cart text-primary"></i>
                    <span class="badge"><?php echo $totalProduct?></span>
                </a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
        <div class="row border-top px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                    <h6 class="m-0">Categories</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical">
                <div class="navbar-nav w-100 overflow-hidden">
                        <?php
                        foreach($cat_arr as $list){
                        ?>
                        <a href="categories.php?id=<?= $list['Id']?>" class="nav-item nav-link"><?= $list['Categories']?></a>
                        <?php
                        }
                        ?>
                    </div>
                </nav>
            </div>
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="index.php" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">Art</span>Arena</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="index.php" class="nav-item nav-link <?= $active=="index.php"? 'active':''; ?>">Home</a>
                            <a href="shop.php" class="nav-item nav-link">Shop</a>
                            <a href="contact_us.php" class="nav-item nav-link">Contact</a>
                            <a href="" class="nav-item nav-link">About Us</a>
                        </div>
                        <div class="navbar-nav ml-auto py-0">
                            <?php
                            if(isset($_SESSION['USER_LOGIN'])){
                            ?>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Hi!<?= $_SESSION['USER_NAME'] ?></a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="user_profile.php" class="nav-item nav-link"><i class="fas fa-user text-primary"></i> Profile</a>
                                    <a href="my_order.php" class="nav-item nav-link"><i class="fas fa-shopping-bag text-primary"></i> My Order</a>
                                    <a href="logout.php" class="nav-item nav-link"><i class="fas fa-sign-out-alt text-primary"></i> Logout</a>
                                </div>
                            </div>
                            <?php
                            }
                            else{
                                echo '<a  href="#myModal" class="nav-item nav-link" data-toggle="modal">Login/Register</a>';
                            }
                            ?>

                            <!-- Modal -->
                            <div class="modal fade" id="myModal" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">

                                    <div class="modal-header">
                                        <h4 class="modal-title">Login and Signup From</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>

                                <div class="modal-body">
        
                                    <div class="form-modal">

                                        <div class="form-toggle">
                                            <button id="login-toggle" onclick="toggleLogin()">log in</button>
                                            <button id="signup-toggle" onclick="toggleSignup()">register</button>
                                        </div>

                                        <div id="login-form">
                                            <form method="post">
                                                <input type="text" placeholder="Enter email or username" name="l_email" id="l_email"/>
                                                <p class="help-block text-danger" id="l_email_error" style="padding:0 1rem 0"></p>
                                                
                                                <input type="password" placeholder="Enter password" name="l_password" id="l_password"/>
                                                <p class="help-block text-danger" id="l_password_error" style="padding:0 1rem 0"></p>

                                                <button type="button" class="btn login" onclick="user_login()">login</button>
                                                <p><a href="javascript:void(0)">Forgotten account</a></p>
                                                <hr/>
                                                <div class="login_msg">
                                                    <p style="color:red;"></p>
                                                </div>
                                            </form>
                                        </div>

                                        <div id="signup-form">
                                            <form method="post">
                                                <input type="text" name="name" id="name" placeholder="Enter your name"/>
                                                <p class="help-block text-danger" id="name_error" style="padding:0 1rem 0"></p>

                                                <input type="email" name="email" id="email" placeholder="Enter your email"/>
                                                <p class="help-block text-danger" id="email_error" style="padding:0 1rem 0"></p>

                                                <input type="text" name="mobile" id="mobile" placeholder="Enter your mobile"/>
                                                <p class="help-block text-danger" id="mobile_error" style="padding:0 1rem 0"></p>

                                                <input type="password" name="password" id="password" placeholder="Create password"/>
                                                <p class="help-block text-danger" id="password_error" style="padding:0 1rem 0"></p>

                                                <button type="button" class="btn signup" onclick="user_register()">create account</button>
                                                <p>Clicking <strong>create account</strong> means that you are agree to our <a href="javascript:void(0)">terms of services</a>.</p>
                                                <hr/>
                                                <div class="register_msg">
                                                    <p></p>
                                                </div>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                                
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                        </div>
                    </div>
                </nav>
                <div id="header-carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active" style="height: 410px;">
                            <img class="img-fluid" src="image/banner.jpg" alt="Image">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                    <h3 class="display-4 text-white font-weight-semi-bold mb-4">Reasonable Price</h3>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item" style="height: 410px;">
                            <img class="img-fluid" src="image/banner1.jpg" alt="Image">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                    <h3 class="display-4 text-white font-weight-semi-bold mb-4">Reasonable Price</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                        <div class="btn btn-dark" style="width: 45px; height: 45px;">
                            <span class="carousel-control-prev-icon mb-n2"></span>
                        </div>
                    </a>
                    <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                        <div class="btn btn-dark" style="width: 45px; height: 45px;">
                            <span class="carousel-control-next-icon mb-n2"></span>
                        </div>
                    </a>
                </div>
            </div>