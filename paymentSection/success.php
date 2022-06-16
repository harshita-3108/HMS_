<?php
session_start();
error_reporting(0);
include('helper/config.php');

if(isset($_POST['submit']))
{
    $extra="../hms/appointment-history.php";
    $host=$_SERVER['HTTP_HOST'];
    $uip=$_SERVER['REMOTE_ADDR'];
    $uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
    header("location:http://$host$uri/$extra");	
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="paymentStyle.css">

    <title>Payment Successfull </title>
    <style>
        .center {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 700px;
        background: #999FF0;
        }
    </style>
</head>
<body>
    <div class="center">
        <p style="font-weight:bold;color:black;font-height:200px;">
        Payment Successfull. Redirecting to Appointment History
        </p>
        <br>
        <form action="post"><button name="submit" class="button -primary" style="color:white;"><a href="../hms/appointment-history.php">
													Click Here
												</a></button></form>
    </div>

</body>
</html>
