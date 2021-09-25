<?php
    require "./includes/common.php";
    
    $email = mysqli_real_escape_string($con, $_POST["e-mail"]);
    $name = mysqli_real_escape_string($con, $_POST["name"]);
    $password = mysqli_real_escape_string($con, $_POST["password"]);
    $contact = mysqli_real_escape_string($con, $_POST["contact"]);
    $city = mysqli_real_escape_string($con, $_POST["city"]);
    $address = mysqli_real_escape_string($con, $_POST["address"]);
    
    $hashed_password = md5($password);
    $query1 = "SELECT id FROM users WHERE email = '$email' AND password = '$hashed_password'";
    $query1 = "INSERT INTO users (name, email, password, contact, city, address) VALUES ('$name', '$email', '$hashed_password', '$contact', '$city', '$address')";

    
    $result = mysqli_query($con, $query1);
    if(mysqli_num_rows($result) > 0){
        
        echo "Email id already exists. Try another";
    }else{
        
        $result = mysqli_query($con, $query2);
        $_SESSION["email_id"] = $email;
        $_SESSION["id"] = mysqli_insert_id($con);

        
        header("location: products.php");
    }
?>