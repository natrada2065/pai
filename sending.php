<?php
        $email = $_POST['email'];
        $num = $_POST['num'];
        $msg = $_POST['msg'];

        $subject = "HTML email";
        $message = $msg;

        // Always set content-type when sending HTML email
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

        // More headers
        $headers .= 'From: <webmaster@example.com>' . "\r\n";

        if(mail($email,$subject,$message,$headers))
           echo "P";
         else 
           echo "F";  
?>