<?php
require "config.php";
require "functions.php";
require "add_cart_func.php";

$pid=get_safe_value($con,$_POST['pid']);
$qty=get_safe_value($con,$_POST['qty']);
$type=get_safe_value($con,$_POST['type']);

$productSoldQtyByProductId=productSoldQtyByProductId($con,$pid);
$productQty=productQty($con,$pid);

$pending_qty=$productQty-$productSoldQtyByProductId;

if($qty>$pending_qty && $type!='remove'){
	echo "not_avaliable";
	die();
}

$obj=new add_to_cart();

if($type=='add'){
	$obj->addProduct($pid,$qty);
}

if($type=='remove'){
	$obj->removeProduct($pid);
}

if($type=='update'){
	$obj->updateProduct($pid,$qty);
}

echo $obj->totalProduct();
?>