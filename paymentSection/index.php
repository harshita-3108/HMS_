<?php
session_start();
error_reporting(0);
include('../hms/helper/config.php');


 ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="paymentStyle.css">
    <style>
      .db-content {
        font-weight:bold;
        font-size:20px;
      }
    </style>
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
    $userid=$_SESSION['userid'];
    $appointmentDate=$_SESSION['appointmentDate'];
    $sql=mysqli_query($con,"select * FROM appointment where doctorId='$doctorid' and userID='$userid' and appointmentDate='$appointmentDate'");
    while($row=mysqli_fetch_array($sql))
    {?>
    <br>
        <p>Doctor Specialization : </p>
        <td class="db-content"><?php echo $row['doctorSpecialization'];?></td>
        <br>
        <p>Doctor Fees : </p>
        <td><?php echo $row['consultancyFees'];?></td>
        <br>
        <p>Appointment Date : </p>
        <td><?php echo $row['appointmentDate'];?></td>
        <br>
        <p>Appointment Time : </p>
        <td><?php echo $row['appointmentTime'];?></td>
        <br>
        <?php
    }?>
        <br>
        <!-- <form role="form" method="post" > -->
        <button class="button -primary" name="submit" type="submit" id="btn"> Place Your Order </button>
<!-- </form> -->
  </div>
    
</div>
<script src="http://js.stripe.com/v3/"></script>
    <script src="script.js"></script>

</body>
</html>
