<?php
    session_start();
    // unset($_SESSION['cart']);
    if(empty($_GET['id'])){
        throw new Exception("Không tồn tại id");
    }
    $id = $_GET['id'];


    if(empty($_SESSION['cart'][$id])){
        require 'admin/root.php';
        $sql = "SELECT * from products where id = '$id'";
        $result = mysqli_query($connect, $sql);
        $each = mysqli_fetch_array($result);
        $_SESSION['cart'][$id]['name'] = $each['name'];
        $_SESSION['cart'][$id]['photo'] = $each['photo'];
        $_SESSION['cart'][$id]['price'] = $each['price'];
        $_SESSION['cart'][$id]['quantity'] = 1;
    }else {
        if($_SESSION['cart'][$id]['quantity'] < 3){
            $_SESSION['cart'][$id]['quantity']++;
        } 
    }
header('location:view_cart.php');