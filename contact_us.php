<?php
include "top.php";
?>


<!-- Page Header Start -->
            
<div class="container-fluid bg-secondary mb-5">
                <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
                    <h1 class="font-weight-semi-bold text-uppercase mb-3">Contact US</h1>
                    <div class="d-inline-flex">
                        <p class="m-0"><a href="">Home</a></p>
                        <p class="m-0 px-2">-</p>
                        <p class="m-0">Contact</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Contact Start -->
    <div class="container-fluid pt-4">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Contact For Any Queries</span></h2>
        </div>
        <div class="row px-xl-5">
            <div class="col-lg-6 mb-5">
                <div class="contact-form">
                    <div id="success"></div>
                    <form action="send_message.php" name="sentMessage" id="contactForm" novalidate="novalidate">
                        <div class="control-group">
                            <input type="text" class="form-control" id="c_name" name="c_name" placeholder="Your Name"/>
                            <p class="help-block text-danger" id="c_name_error" style="padding:0 1rem 0"></p>
                            <br>
                        </div>
                        <div class="control-group">
                            <input type="email" class="form-control" id="c_email" name="c_email" placeholder="Your Email"/>
                            <p class="help-block text-danger" id="c_email_error" style="padding:0 1rem 0"></p>
                            <br>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" id="c_subject" name="c_subject" placeholder="Subject"/>
                            <p class="help-block text-danger" id="c_subject_error" style="padding:0 1rem 0"></p>
                            <br>
                        </div>
                        <div class="control-group">
                            <textarea class="form-control" rows="6" id="c_message" name="c_message" placeholder="Message"></textarea>
                            <p class="help-block text-danger" id="c_message_error" style="padding:0 1rem 0"></p>
                            <br>
                        </div>
                        <div>
                        <button type="button" onclick="send_message()" class="btn btn-primary py-2 px-4">Send MESSAGE</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-5 mb-5">
                <h5 class="font-weight-semi-bold mb-3">Get In Touch</h5>
                <p>Justo sed diam ut sed amet duo amet lorem amet stet sea ipsum, sed duo amet et. Est elitr dolor elitr erat sit sit. Dolor diam et erat clita ipsum justo sed.</p>
                <div class="d-flex flex-column mb-3">
                    <h5 class="font-weight-semi-bold mb-3">Store 1</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street, New York, USA</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@example.com</p>
                    <p class="mb-2"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
                </div>
                <div class="d-flex flex-column">
                    <h5 class="font-weight-semi-bold mb-3">Store 2</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street, New York, USA</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@example.com</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


<?php
include "footer.php";
?>