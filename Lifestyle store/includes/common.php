<?php
    $con = mysqli_connect("127.0.0.1:3307", "root", "", "store") or die(mysqli_error($con));
    
    if(!isset($_SESSION['email'])){
        session_start();
    }
?>