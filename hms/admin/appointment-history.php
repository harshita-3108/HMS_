<?php
session_start();
error_reporting(0);
include('helper/config.php');

?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Patients | Appointment History</title>
		
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/styles.css">
	</head>
	<body>
		<div id="app">		
<?php include('helper/sidebar.php');?>
			<div class="app-content">
				

					<?php include('helper/header.php');?>
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<section id="page-title">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle">Patients  | Appointment History</h1>
																	</div>
								<ol class="breadcrumb">
									<li>
										<span>Patients </span>
									</li>
									<li class="active">
										<span>Appointment History</span>
									</li>
								</ol>
							</div>
						</section>
						
						<div class="container-fluid container-fullw bg-white">
						

									<div class="row">
								<div class="col-md-12">
									
									<p style="color:red;"><?php echo htmlentities($_SESSION['msg']);?>
								<?php echo htmlentities($_SESSION['msg']="");?></p>	
									<table class="table table-hover" id="sample-table-1">
										<thead>
											<tr>
												<th class="center">#</th>
												<th class="hidden-xs">Doctor Name</th>
												<th>Patient Name</th>
												<th>Specialization</th>
												<th>Consultancy Fee</th>
												<th>Appointment Date / Time </th>
												<th>Appointment Creation Date  </th>
												<th>Current Status</th>
												<th>Action</th>
												
											</tr>
										</thead>
										<tbody>
<?php
$sql=mysqli_query($con,"select doctors.doctorName as docname,users.fullName as pname,appointment.*  from appointment join doctors on doctors.id=appointment.doctorId join users on users.id=appointment.userId ");
$cnt=1;
while($row=mysqli_fetch_array($sql))
{
?>

											<tr>
												<td class="center"><?php echo $cnt;?>.</td>
												<td class="hidden-xs"><?php echo $row['docname'];?></td>
												<td class="hidden-xs"><?php echo $row['pname'];?></td>
												<td><?php echo $row['doctorSpecialization'];?></td>
												<td><?php echo $row['consultancyFees'];?></td>
												<td><?php echo $row['appointmentDate'];?> / <?php echo
												 $row['appointmentTime'];?>
												</td>
												<td><?php echo $row['postingDate'];?></td>
												<td>
<?php if(($row['userStatus']==1) && ($row['doctorStatus']==1))  
{
	echo "Active";
}
if(($row['userStatus']==0) && ($row['doctorStatus']==1))  
{
	echo "Cancel by Patient";
}

if(($row['userStatus']==1) && ($row['doctorStatus']==0))  
{
	echo "Cancel by Doctor";
}



												?></td>
												<td >
												<div class="visible-md visible-lg hidden-sm hidden-xs">
							<?php if(($row['userStatus']==1) && ($row['doctorStatus']==1))  
{ 

													
echo "No Action yet";
	 } else {

		echo "Canceled";
		} ?>
												</div>
												<div class="visible-xs visible-sm hidden-md hidden-lg">
													<div class="btn-group" dropdown is-open="status.isopen">
														<button type="button" class="btn btn-primary btn-o btn-sm dropdown-toggle" dropdown-toggle>
															<i class="fa fa-cog"></i>&nbsp;<span class="caret"></span>
														</button>
														<ul class="dropdown-menu pull-right dropdown-light" role="menu">
															<li>
																<a href="#">
																	Edit
																</a>
															</li>
															<li>
																<a href="#">
																	Share
																</a>
															</li>
															<li>
																<a href="#">
																	Remove
																</a>
															</li>
														</ul>
													</div>
												</div></td>
											</tr>
											
											<?php 
$cnt=$cnt+1;
											 }?>
											
											
										</tbody>
									</table>
								</div>
							</div>
								</div>
					
					</div>
				</div>
			</div>
	<?php include('helper/footer.php');?>
			
	<?php include('helper/setting.php');?>
			
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.1/dist/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="dependency/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js" integrity="sha512-aUhL2xOCrpLEuGD5f6tgHbLYEXRpYZ8G5yD+WlFrXrPy2IrWBlu6bih5C9H6qGsgqnU6mgx6KtU8TreHpASprw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script src="assets/js/main.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
			});
		</script>
	
	</body>
</html>
