<?php 
	include 'connection.php';
	session_start();
	$str = "SELECT *FROM tbl_community ORDER BY Community_ID DESC";

	//$str="select * from tbl_community ORDER BY Community_ID DESC";
	$data=mysqli_query($conn,$str);    
?>

<!DOCTYPE html>

<html class="loading" lang="en" data-textdirection="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description" content="Frest admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Frest admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Community List | <?php echo $WB_TITLE;?></title>
    <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.html">
    <link rel="shortcut icon" type="image/x-icon" href="https://www.pixinvent.com/demo/frest-clean-bootstrap-admin-dashboard-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,600%7CIBM+Plex+Sans:300,400,500,600,700" rel="stylesheet">

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

    <!-- BEGIN: Header-->
    <div class="header-navbar-shadow"></div>
    <?php include_once 'header.php';?>
    <!-- END: Header-->

    <!-- BEGIN: Main Menu-->
        <?php include_once 'sidebar.php';?>
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content">
      <div class="content-overlay"></div>
      <div class="content-wrapper">
        <div class="content-header row">
          <div class="content-header-left col-12 mb-2 mt-1">
            <div class="breadcrumbs-top">
              <h5 class="content-header-title float-left pr-1 mb-0">Dashboard </h5>
              <div class="breadcrumb-wrapper d-none d-sm-block">
                <ol class="breadcrumb p-0 mb-0 pl-1">
                  <li class="breadcrumb-item"><a href="dashboard.php"><i class="bx bx-home-alt"></i></a>
                  </li>
                  
                  </li>
                  <li class="breadcrumb-item active">Community 
                  </li>
                </ol>
              </div>
            </div>
          </div>
        </div>
        <div class="content-body">
        <section id="column-selectors">
		  <div class="row">
			<div class="col-12">
			  <div class="card">
			
				<div class="card-body card-dashboard">
				<?php
				if(isset($_SESSION['success']))
				{
					echo "<div class='alert alert-success' id='success-alert'>".$_SESSION['success']."</div>";
				}
				unset($_SESSION['success']);
												
		?>
		<button id="addRow" class="btn btn-primary mb-2 d-flex align-items-center" fdprocessedid="51ljx">
		<a href="community_add.php" style="color:White;"><i class="bx bx-plus"></i>&nbsp; Add New Community </a></button>	


  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
       
        </div>
        <div class="card-body card-dashboard">
		<?php

										if(isset($_SESSION['success']))
										{
											echo "<div class='alert alert-success' id='success-alert'>".$_SESSION['success']."</div>";
										}
										unset($_SESSION['success']);
										
									?>	

          <div class="table-responsive">
            <table class="table table-striped dataex-html5-selectors">

		<div class="table-responsive">
            <table class="table table-striped dataex-html5-selectors" id="myTable">

              <thead>
                <tr>
				 
                  <th>Community Name</th>
                  <th>Status</th>
                  <th>Action</th>
                  
                </tr>
              </thead>
              <tbody>
                <?php 
					while($row=mysqli_fetch_array($data))
					{
				?>
				<tr>
					
					<td><?php echo $row['Community_Name']?></td>
					 <td>
						<span class="custom-control custom-switch">
							<input type="checkbox" class="custom-control-input"
							id="packageSwitch_<?php echo $row['Community_ID']; ?>"
							<?php if($row['Community_Status'] == '1') { echo 'checked'; } ?>
							onclick="toggleStatus( <?php echo $row['Community_ID']; ?> )">
							<label class="custom-control-label" for="packageSwitch_<?php echo $row['Community_ID']; ?>"></label>
						</span>
					</td>

						<td><a onclick="return confirm('are you sure?');" href="?id=<?php echo $row['Community_ID'];?>" class="danger">
						<i class='bx bx-trash'></i></a>
					<a href="community_add.php?Community_ID=<?php echo $row['Community_ID']; ?>"> <i class="bx bx-edit" ></i></a>
					
				</td>
					
				</tr>
				<?php 
					}
				?>
				
		<?php 
			if(isset($_GET['id']))
			{
				$id=$_GET['id'];
				$str="delete from tbl_community where Community_ID=".$id;
				mysqli_query($conn,$str);
				header('location:community_list.php');
			}
		?>
               </tbody>
              <tfoot>
                <tr>
				 
                  <th>Community Name</th>
                  <th>Status</th>
				  <th>Action</th>
                </tr>
              </tfoot>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

        </div>
      </div>
    </div>     
    <!-- END: Content-->


   
    
   
    </div>
    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
        <?php include_once 'footer.php';?>
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
	
	<script>
		
	  function toggleStatus(p_id)
	  {
		  $.ajax({
			url: "status.php",
			type: "POST",
			data: { c_id: p_id },
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
		 $(document).ready(function() {
			$('#myTable').dataTable( {
				 destroy: true,
				  "aaSorting": [[1, "desc"]],
				  "lengthMenu": [10,25,50,100,200,-1],
				  dom: '<"dt-top-container"<l><"dt-center-in-div"B><f>r>t<ip>',
				  buttons: [ 'copy', 'csv', 'excel', 'pdf', 'print' ],
				 
			} );
		});
		</script>
  </body>

</html>