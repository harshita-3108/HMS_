<?php
session_start();
error_reporting(0);
include('helper/config.php');
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment unsuccessfull</title>
</head>
<body>
    userStatus
    <p> Not successfull. Try again after some time.</p>
    <?php
         $doctorid=$_SESSION['doctorid'];
         $userid=$_SESSION['userid'];
         $appointmentDate=$_SESSION['appointmentDate'];
         mysqli_query($con,"update appointment set userStatus='2' where doctorId='$doctorid' and userID='$userid' and appointmentDate='$appointmentDate'");     
    ?>
    
</body>
</html>