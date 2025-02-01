<!DOCTYPE html>
<?php
	include_once 'connection.php';
	if(!isset($_SESSION["Email"]))
	{
		header('location:index.php');
	}   
?>
<html class="loading" lang="en" data-textdirection="ltr">
	<!-- BEGIN: Head-->
	<!-- /table-datatable.html by,  04:45:08 GMT -->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<meta name="description" content="Frest admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
		<meta name="keywords" content="admin template, Frest admin template, dashboard template, flat admin template, responsive admin template, web app">
		<meta name="author" content="PIXINVENT">
		<title>Member | <?php echo $WEB_TITLE;?></title>
		<link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.html">
		<link rel="shortcut icon" type="image/x-icon" href="https://www.pixinvent.com/demo/frest-clean-bootstrap-admin-dashboard-template/app-assets/images/ico/favicon.ico">
		<link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,600%7CIBM+Plex+Sans:300,400,500,600,700" rel="stylesheet">

		 <!-- BEGIN: Status CSS-->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		<!-- END: Status CSS-->

		<!-- BEGIN: Vendor CSS-->
		<link rel="stylesheet" type="text/css" href="app-assets/vendors/css/vendors.min.css">
		<link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/datatable/dataTables.bootstrap4.min.css">
		<link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/datatable/responsive.bootstrap4.min.css">
		<link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/datatable/buttons.bootstrap4.min.css">
		<!-- END: Vendor CSS-->

		<!-- BEGIN: Theme CSS-->
		<link rel="stylesheet" type="text/css" href="app-assets/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="app-assets/css/bootstrap-extended.min.css">
		<link rel="stylesheet" type="text/css" href="app-assets/css/colors.min.css">
		<link rel="stylesheet" type="text/css" href="app-assets/css/components.min.css">
		<link rel="stylesheet" type="text/css" href="app-assets/css/themes/dark-layout.min.css">
		<link rel="stylesheet" type="text/css" href="app-assets/css/themes/semi-dark-layout.min.css">
		<!-- END: Theme CSS-->

		<!-- BEGIN: Page CSS-->
		<link rel="stylesheet" type="text/css" href="app-assets/css/core/menu/menu-types/vertical-menu.min.css">
		<!-- END: Page CSS-->

		<!-- BEGIN: Custom CSS-->
		<link rel="stylesheet" type="text/css" href="assets/css/style.css">
		<!-- END: Custom CSS-->
	</head>
	<!-- END: Head-->

	<!-- BEGIN: Body-->
	<body class="vertical-layout vertical-menu-modern boxicon-layout no-card-shadow 2-columns  navbar-sticky footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="2-columns">

	<!--BEGIN: modals -->
	<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true" id="OwnerModal">
		<div class="modal-dialog modal-lg" >
			<div class="modal-content" style="width:1000px;">
				<div class="modal-body">
				<!-- Dynmamic Jquery AJax Data load Here -->
				</div>
			</div>
		</div>
	</div>
	<!-- END: modals -->
		
    <!-- BEGIN: Header-->
    <?php include_once 'header.php'; ?>
    <!-- END: Header-->

    <!-- BEGIN: Main Menu-->
	<?php include_once 'sidebar.php'; ?>
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
	<div class="app-content content">
		<div class="content-overlay"></div>
		<div class="content-wrapper">
			<div class="content-header row">
				<div class="content-header-left col-12 mb-2 mt-1">
					<div class="breadcrumbs-top">
						<h5 class="content-header-title float-left pr-1 mb-0">Member</h5>
						<div class="breadcrumb-wrapper d-none d-sm-block">
							<ol class="breadcrumb p-0 mb-0 pl-1">
								<li class="breadcrumb-item"><a href="dashboard.php"><i class="bx bx-home-alt"></i></a></li>
								<li class="breadcrumb-item active">List Member</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
			<!-- Column selectors with Export Options and print table -->
			<section id="column-selectors">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="table-responsive">
								<table class="table dataex-html5-selectors" id="myTable">
									<thead>
										<tr>
											<th>Image</th>
											<th>Name</th>
											<th>Email Address</th>
											<th>DOB</th>
											<th>Age</th>
											<th>Gender</th>
											<th>City</th>
											<th>Contact No.</th>
											<th>Profile For</th>
											<th>Looking For</th>
											<th>Profile ID</th>
											<th>Minimum Age</th>
											<th>Maximum Age</th>
											<th>Registration Date</th>
											<th>Status</th>
										</tr>
									</thead>
									<tbody>
										<?php
											$str="select * from member_tbl,city_tbl where city_tbl.city_id=member_tbl.member_city ORDER BY member_id desc";
											$res=mysqli_query($conn,$str);
											while($data=mysqli_fetch_array($res))
											{
										?>
											<tr>
												<td><img src="../member_profiles/<?php echo $data['member_image']; ?>" height="50px" width="50px"></img></td>
												<td style="width:18%">
													<button type="button" style="" id="user" class="btn" data-id="<?php echo $data['member_id'];?>" data-toggle="modal" data-target=".bs-example-modal-lg" onclick="Member_Modal( <?php echo $data['member_id']; ?> )">
														<i class="bx bxs-info-circle" style="font-size:18px;color:grey"></i> <?php echo ucfirst($data['member_lastname'] . " " . $data['member_firstname']); ?>
													</button>
												</td>
												<td><?php echo $data['member_email']; ?></td>
												<td><?php echo date("d-M-Y" , strtotime($data['member_dob'])); ?></td>
												<td><?php echo $data['member_age']; ?></td>
												<td><?php echo ucfirst($data['member_gender']); ?></td>
												<td><?php echo ucfirst($data['city_name']); ?></td>
												<td><?php echo $data['member_contact']; ?></td>
												<td><?php echo ucfirst($data['member_profile_for']); ?></td>
												<td><?php echo ucfirst($data['member_looking_for']); ?></td>
												<td><?php echo $data['member_profile_id']; ?></td>
												<td><?php echo $data['member_min_age']; ?></td>
												<td><?php echo $data['member_max_age']; ?></td>
												<td><?php echo date("d-M-Y" , strtotime($data['registration_date'])); ?></td>
												<td>
													<span class="form-check form-switch">
														<input type="checkbox" class="form-check-input" 
														<?php if($data['member_status'] == '1') { echo 'checked'; } ?>
														onclick="toggleStatus( <?php echo $data['member_id']; ?> )"/>
													</span>
												</td>
											</tr>
										<?php		  
											}
										?>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Column selectors with Export Options and print table -->
			</div>
		</div>
	</div>
	<!-- END: Content-->

    <!-- BEGIN: Footer-->
	<?php include_once 'footer.php'; ?>
    <!-- END: Footer-->

    <!-- BEGIN: Vendor JS-->
    <script src="app-assets/vendors/js/vendors.min.js"></script>
    <script src="app-assets/fonts/LivIconsEvo/js/LivIconsEvo.tools.min.js"></script>
    <script src="app-assets/fonts/LivIconsEvo/js/LivIconsEvo.defaults.min.js"></script>
    <script src="app-assets/fonts/LivIconsEvo/js/LivIconsEvo.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="app-assets/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/buttons.bootstrap4.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="app-assets/js/core/app-menu.min.js"></script>
    <script src="app-assets/js/core/app.min.js"></script>
    <script src="app-assets/js/scripts/components.min.js"></script>
    <script src="app-assets/js/scripts/footer.min.js"></script>
    <script src="app-assets/js/scripts/customizer.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="app-assets/js/scripts/datatables/datatable.min.js"></script>
    <!-- END: Page JS-->
	
	</body>
	<!-- END: Body-->

<!-- /table-datatable.html by,  04:45:09 GMT -->
<script>
	function toggleStatus(member_id)
	{
	  $.ajax({
		url: "change_status.php",
		type: "POST",
		data: { m_id: member_id },
		success: function(result){
		  if(result == 1){
			alert("Status set to active");
		  }
		  else{
			alert("Status set to inactive");
		  }
		}
	})
	}
	  
	$("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
		$("#success-alert").slideUp(500);
	});
	
	/* custom ordering */
	$(document).ready(function() 
	{
		$('#myTable').dataTable( 
		{
			destroy: true,
			"aaSorting": [[1, "desc"]],
			"lengthMenu": [10,25,50,100,200,-1],
			dom: '<"dt-top-container"<l><"dt-center-in-div"B><f>r>t<ip>',
			buttons: [ 'copy', 'csv', 'excel', 'pdf', 'print' ],
			 
		} );
	});
	/* custom ordering */
	
	function Member_Modal(member_id){
		//alert(member_id);
		$.ajax({
			type: "POST",
			url: "member_modal.php",
			data: { member_id:member_id  },
			success: function(response){ 
				// Add response in Modal body
				$('.modal-body').html(response);

				// Display Modal
				// $('#campModal').modal('show'); 
			} 
		});
	}  
</script>
</html>