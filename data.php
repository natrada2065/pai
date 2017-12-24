<?php
$servername = "localhost";
$username = "root";
$password = "";
$db = "lolitaweb";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $db);

$name = $_POST['name'];
$email = $_POST['email'];

$check = mysqli_query($conn,"SELECT * FROM user WHERE email = '$email' ");

if($check->num_rows == 0){
    $sql = "INSERT INTO user (name, email, type) VALUES ('$name', '$email', 1)";

    if(mysqli_query($conn,$sql))
        echo "true";
    else 
        echo "false";    
}else{
    echo $check->num_rows;
}

?>
