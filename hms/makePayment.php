<?php
session_start();
error_reporting(0);
include('helper/config.php');

if(isset($_POST['submit']))
{
    $extra="../paymentModule/";
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
    <title>Checkout Page</title>
</head>
<body style="background:#853f95;">
   
<div class="card-checkout">
  <div class="heading">
    <h3>Appointment details</h3>
    <label> Confirm Information & Checkout</label>
    <i class="icon ion-card"></i>
  </div>
  <div class="content">

    <!-- where doctorId= {$_SESSION['doctorid']} and userId={$_SESSION['userid']} -->
  <?php
    $doctorid=$_SESSION['doctorid'];
    $sql=mysqli_query($con,"select * FROM appointment where doctorId='$doctorid'");
    while($row=mysqli_fetch_array($sql))
    {?>
        <td class="hidden-xs"><?php echo $row['doctorSpecialization'];?></td>
        <td><?php echo $row['consultancyFees'];?></td>
        <td><?php echo $row['appointmentDate'];?></td>
        <td><?php echo $row['appointmentTime'];?></td>
        <?php
    }?>
        <br>
        <form role="form" method="post" >
        <button class="button -primary" name="submit" type="submit" > Place Your Order </button>
</form>
  </div>
  

    
</div>

</body>
</html>