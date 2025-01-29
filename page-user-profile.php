<?php 
  session_start();
  // echo "<pre>";
  // print_r($_SESSION); die;
?>
<!DOCTYPE html>

<html class="loading" lang="en" data-textdirection="ltr">
  <!-- BEGIN: Head-->
  
<!-- /page-user-profile.html by,  04:44:28 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description" content="Frest admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Frest admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>User Profile - Frest - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.html">
    <link rel="shortcut icon" type="image/x-icon" href="https://www.pixinvent.com/demo/frest-clean-bootstrap-admin-dashboard-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,600%7CIBM+Plex+Sans:300,400,500,600,700" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/extensions/swiper.min.css">
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
    <link rel="stylesheet" type="text/css" href="app-assets/css/pages/page-user-profile.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <!-- END: Custom CSS-->

  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="vertical-layout vertical-menu-modern boxicon-layout no-card-shadow 2-columns  navbar-sticky footer-static menu-collapsed " data-open="click" data-menu="vertical-menu-modern" data-col="2-columns">

    <!-- BEGIN: Header-->
    <?php include_once "header.php"; ?>
    <!-- END: Header-->


    <!-- BEGIN: Main Menu-->
     <?php include_once "sidebar.php"; ?>


    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content">
      <div class="content-overlay"></div>
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body">
              <!-- widget chat demo start -->
<div class="widget-chat widget-chat-demo d-none">
  <div class="card mb-0">
    <div class="card-header border-bottom p-0">
      <div class="media m-75">
        <a href="JavaScript:void(0);">
          <div class="avatar mr-75">
            <img src="app-assets/images/portrait/small/avatar-s-2.jpg" alt="avtar images" width="32"
              height="32">
            <span class="avatar-status-online"></span>
          </div>
        </a>
        <div class="media-body">
          <h6 class="media-heading mb-0 pt-25"><a href="javaScript:void(0);">Kiara Cruiser</a></h6>
          <span class="text-muted font-small-3">Active</span>
        </div>
      </div>
      <div class="heading-elements">
        <i class="bx bx-x widget-chat-close float-right my-auto cursor-pointer"></i>
      </div>
    </div>
    <div class="card-body widget-chat-container widget-chat-demo-scroll">
      <div class="chat-content">
        <div class="badge badge-pill badge-light-secondary my-1">today</div>
        <div class="chat">
          <div class="chat-body">
            <div class="chat-message">
              <p>How can we help? 😄</p>
              <span class="chat-time">7:45 AM</span>
            </div>
          </div>
        </div>
        <div class="chat chat-left">
          <div class="chat-body">
            <div class="chat-message">
              <p>Hey John, I am looking for the best admin template.</p>
              <p>Could you please help me to find it out? 🤔</p>
              <span class="chat-time">7:50 AM</span>
            </div>
          </div>
        </div>
        <div class="chat">
          <div class="chat-body">
            <div class="chat-message">
              <p>Stack admin is the responsive bootstrap 4 admin template.</p>
              <span class="chat-time">8:01 AM</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="card-footer border-top p-1">
      <form class="d-flex" onsubmit="widgetChatMessageDemo();" action="javascript:void(0);">
        <input type="text" class="form-control chat-message-demo mr-75" placeholder="Type here...">
        <button type="submit" class="btn btn-primary glow px-1"><i class="bx bx-paper-plane"></i></button>
      </form>
    </div>
  </div>
</div>
<!-- widget chat demo ends -->

    </div>
    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <?php	
	$conn=mysqli_connect('127.0.0.1','root','','vivahmilan');	
  include "connection.php";
  
              // $nm=$em=$pw=$con=$ct="";
              // if(isset($_GET['ID']))
              // {
               
              //   $ID=$_SESSION["ID"];
              //   $sql="select * from tbl_admin where Admin_ID =".$ID;
              //   $data=mysqli_query($conn,$sql);
              //   $row=mysqli_fetch_array($data);
             
              //   $_SESSION["ID"] = $row['Admin_ID'];
              //   $_SESSION["nm"] = $row['Admin_Name'];
              //   $_SESSION["em"] = $row['Admin_Email'];
              //   $_SESSION["pw"] = $row['Admin_Password'];
              //   $_SESSION["con"] = $row['Admin_Contact'];
              //   $_SESSION["ct"] = $row['Admin_City'];
                
              // }
              if(isset($_POST['Submit']))
              {
               
                  $str="update tbl_admin set Admin_Name ='".$_POST['Admin_Name']."' , Admin_Email ='".$_POST['Admin_Email']."', Admin_Password ='".$_POST['Admin_Password']."',Admin_Contact ='".$_POST['Admin_Contact']."',Admin_City ='".$_POST['Admin_City']."' where Admin_ID =".$_SESSION["ID"];
                  //echo $str;die;
                  mysqli_query($conn,$str);
                 // $_SESSION["ID"] = $_POST['Admin_ID'];
                  $_SESSION["nm"] = $_POST['Admin_Name'];
                  $_SESSION["em"] = $_POST['Admin_Email'];
                  $_SESSION["pw"] = $_POST['Admin_Password'];
                  $_SESSION["con"] = $_POST['Admin_Contact'];
                  $_SESSION["ct"] = $_POST['Admin_City'];
                
                  // header('location:dashboard.php');
                  echo " <script>window.location.href = 'dashboard.php';</script>";

          
            } 
        ?>
<html>
	<head>
		<link rel="stylesheet" href="bootstrap.min.css">
	</head>
	<body class="bg-light">
			<?php if (isset($success)) { ?>
				<div class="alert alert-success">
					Update Successfully...
				</div>
		<?php } ?>
		
		<form method="POST">
    <h1 align="center" style="color:black">ADMIN PROFILE</h1>
    <hr width="300px">
			<div class="container mt-4">
				<div>
					<label>Admin Name</label>
					<input type="text" name="Admin_Name" class="form-control" value="<?php echo $_SESSION["nm"];?>">
				</div>
				<div>
					<label>EmailID</label>
					<input type="text" name="Admin_Email" class="form-control" value="<?php echo $_SESSION["em"];?>">
				</div>
				<div>
					<label>Password</label>
					<input type="text" name="Admin_Password" class="form-control" value="<?php echo $_SESSION["pw"];?>">
				</div>
				<div>
					<label>Contact</label>
					<input type="text" name="Admin_Contact" class="form-control" value="<?php echo $_SESSION["con"];?>">
				</div>
				<div>
					<label>City</label>
					<input type="text" name="Admin_City" class="form-control"  value="<?php echo $_SESSION["ct"];?>">
				</div>
				<br>
          <button name="Submit" class="btn btn-outline-secondary">UPDATE</button>
				</div>
		</form>

    <!-- BEGIN: Vendor JS-->
    <script src="app-assets/vendors/js/vendors.min.js"></script>
    <script src="app-assets/fonts/LivIconsEvo/js/LivIconsEvo.tools.min.js"></script>
    <script src="app-assets/fonts/LivIconsEvo/js/LivIconsEvo.defaults.min.js"></script>
    <script src="app-assets/fonts/LivIconsEvo/js/LivIconsEvo.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="app-assets/vendors/js/extensions/swiper.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="app-assets/js/core/app-menu.min.js"></script>
    <script src="app-assets/js/core/app.min.js"></script>
    <script src="app-assets/js/scripts/components.min.js"></script>
    <script src="app-assets/js/scripts/footer.min.js"></script>
    <script src="app-assets/js/scripts/customizer.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="app-assets/js/scripts/pages/page-user-profile.min.js"></script>
    <!-- END: Page JS-->

  </body>
  <!-- END: Body-->

<!-- /page-user-profile.html by,  04:44:34 GMT -->
</html>