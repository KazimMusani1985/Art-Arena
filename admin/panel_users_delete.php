<?php

include "config.php";
include "functions.php";

/* Restrict employee to access this page */
isAdmin();


$_id=$_REQUEST['id'];

$delete = "delete from admin_user where Id=$_id";

$res = mysqli_query($con,$delete);

header('Location: panel_users.php');

?>