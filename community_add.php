<?php 
	include 'connection.php';
	session_start();

	$Community_Name="";
	if(isset($_GET['Community_ID']))
	{
		$qry="select* from tbl_community where Community_ID='".$_GET['Community_ID']."'";
		$data=mysqli_query($conn,$qry);
		$row=mysqli_fetch_array($data);
		$Community_Name=$row['Community_Name'];
	}
	

	if(isset($_POST['btn']))
	{
		$status=1;
		
		if(isset($_GET['Community_ID']))
		{
			$qry="update tbl_community set Community_Name='".$_POST['Community_Name']."' where Community_ID='".$_GET['Community_ID']."'";
			$success2=mysqli_query($conn,$qry);
			$_SESSION['success']="Community Updated ";
			header('location:community_list.php');
		}
		else
		{
			$str="insert into tbl_community values(NULL,'".$_POST['Community_Name']."','". $status."')";
			$success1=mysqli_query($conn,$str);
			$_SESSION['success']="Community Added ";
			header('location:community_list.php');
		}
	}
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
    <title>Community Add | <?php echo $WB_TITLE;?></title>
    <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.html">
    <link rel="shortcut icon" type="image/x-icon" href="https://www.pixinvent.com/demo/frest-clean-bootstrap-admin-dashboard-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,600%7CIBM+Plex+Sans:300,400,500,600,700" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/forms/select/select2.min.css">
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
    <link rel="stylesheet" type="text/css" href="app-assets/css/plugins/forms/validation/form-validation.css">
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
    <?php include 'header.php';?>
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
                  <li class="breadcrumb-item active">Community 
                  </li>
                </ol>
              </div>
            </div>
          </div>
        </div>
        <div class="content-body"><!-- Simple Validation start -->
		<section class="simple-validation">
		  <div class="row">
			<div class="col-md-12">
			  <div class="card">
				<div class="card-header">
				  <h4 class="card-title">Community Details</h4>
				</div>
				<div class="card-body">
				<?php 
					if(isset($success2))
					{
						echo "<div class='alert alert-success'><strong>Success!Record Updated</strong></div>";
					}
				?>
				  <form id="jquery-val-form" method="POST">
					<div class="form-group">
					  <label class="form-label" for="basic-default-name" >Community Name</label>
					  <input type="text"
						value="<?php echo $Community_Name; ?>"
						class="form-control"
						id="Community_Name"
						name="Community_Name"
						placeholder="Identity"
				
						required
<<<<<<< HEAD
=======
						 
					  />
>>>>>>> f1a41ad07c408d3dfe77ab28d90f20302fe1823f
					</div>
					
           
					<div class="row">
					  <div class="col-12">
						<button type="submit" class="btn btn-primary" name="btn" value="Submit">Submit</button>
					  </div>
					</div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Input Validation end -->

        </div>
      </div>
    </div>     
    <!-- END: Content-->


<<<<<<< HEAD


=======
>>>>>>> f1a41ad07c408d3dfe77ab28d90f20302fe1823f
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
    <script src="app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="app-assets/js/core/app-menu.min.js"></script>
    <script src="app-assets/js/core/app.min.js"></script>
    <script src="app-assets/js/scripts/components.min.js"></script>
    <script src="app-assets/js/scripts/footer.min.js"></script>
    <script src="app-assets/js/scripts/customizer.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="app-assets/js/scripts/forms/validation/form-validation.js"></script>
    <!-- END: Page JS-->

	
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
	<script>
		/*jQuery.validator.setDefaults({
		  debug: true,
		  success: "valid"
		});*/
		$( "#jquery-val-form" ).validate({
		  rules: {
			/* image: {
			  required: true,
			  extension: "jpeg|png|jpg",
			  }, */
			  /*document: {
			  required: true,
			  extension: "pdf|doc|ppt",
			  },*/
			  Community_Name: 
			  {
				  lettersonly: true,
				  minlength: 3
			  },
			 /* sub_price:
			  {
					minlength: 6
					maxlength: 10
					
			  }*/
			}	
		});
		
		
		jQuery.validator.addMethod("lettersonly", function(value, element) {
				return this.optional(element) || /^[a-z\s]+$/i.test(value);
		}, "Only alphabetical characters");
	</script>
  </body>
  <!-- END: Body-->
   
<!-- /index.html by,  04:42:26 GMT -->
</html>