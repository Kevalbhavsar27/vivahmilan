<?php 
  session_start();
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
    <div class="header-navbar-shadow"></div>
    <nav class="header-navbar main-header-navbar navbar-expand-lg navbar navbar-with-menu fixed-top ">
      <div class="navbar-wrapper">
        <div class="navbar-container content">
          <div class="navbar-collapse" id="navbar-mobile">
            <div class="mr-auto float-left bookmark-wrapper d-flex align-items-center">
              <ul class="nav navbar-nav">
                <li class="nav-item mobile-menu d-xl-none mr-auto"><a class="nav-link nav-menu-main menu-toggle hidden-xs" href="javascript:void(0);"><i class="ficon bx bx-menu"></i></a></li>
              </ul>
              <ul class="nav navbar-nav bookmark-icons">
                <li class="nav-item d-none d-lg-block"><a class="nav-link" href="app-email.html" data-toggle="tooltip" data-placement="top" title="Email"><i class="ficon bx bx-envelope"></i></a></li>
                <li class="nav-item d-none d-lg-block"><a class="nav-link" href="app-chat.html" data-toggle="tooltip" data-placement="top" title="Chat"><i class="ficon bx bx-chat"></i></a></li>
                <li class="nav-item d-none d-lg-block"><a class="nav-link" href="app-todo.html" data-toggle="tooltip" data-placement="top" title="Todo"><i class="ficon bx bx-check-circle"></i></a></li>
                <li class="nav-item d-none d-lg-block"><a class="nav-link" href="app-calendar.html" data-toggle="tooltip" data-placement="top" title="Calendar"><i class="ficon bx bx-calendar-alt"></i></a></li>
              </ul>
              <ul class="nav navbar-nav">
                <li class="nav-item d-none d-lg-block"><a class="nav-link bookmark-star"><i class="ficon bx bx-star warning"></i></a>
                  <div class="bookmark-input search-input">
                    <div class="bookmark-input-icon"><i class="bx bx-search primary"></i></div>
                    <input class="form-control input" type="text" placeholder="Explore Frest..." tabindex="0" data-search="template-search">
                    <ul class="search-list"></ul>
                  </div>
                </li>
              </ul>
            </div>
            <ul class="nav navbar-nav float-right">
              <li class="dropdown dropdown-language nav-item"><a class="dropdown-toggle nav-link" id="dropdown-flag" href="javascript:void(0);" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flag-icon flag-icon-us"></i><span class="selected-language">English</span></a>
                <div class="dropdown-menu" aria-labelledby="dropdown-flag"><a class="dropdown-item" href="javascript:void(0);" data-language="en"><i class="flag-icon flag-icon-us mr-50"></i> English</a><a class="dropdown-item" href="javascript:void(0);" data-language="fr"><i class="flag-icon flag-icon-fr mr-50"></i> French</a><a class="dropdown-item" href="javascript:void(0);" data-language="de"><i class="flag-icon flag-icon-de mr-50"></i> German</a><a class="dropdown-item" href="javascript:void(0);" data-language="pt"><i class="flag-icon flag-icon-pt mr-50"></i> Portuguese</a></div>
              </li>
              <li class="nav-item d-none d-lg-block"><a class="nav-link nav-link-expand"><i class="ficon bx bx-fullscreen"></i></a></li>
              <li class="nav-item nav-search"><a class="nav-link nav-link-search"><i class="ficon bx bx-search"></i></a>
                <div class="search-input">
                  <div class="search-input-icon"><i class="bx bx-search primary"></i></div>
                  <input class="input" type="text" placeholder="Explore Frest..." tabindex="-1" data-search="template-search">
                  <div class="search-input-close"><i class="bx bx-x"></i></div>
                  <ul class="search-list"></ul>
                </div>
              </li>
              <li class="dropdown dropdown-notification nav-item"><a class="nav-link nav-link-label" href="javascript:void(0);" data-toggle="dropdown"><i class="ficon bx bx-bell bx-tada bx-flip-horizontal"></i><span class="badge badge-pill badge-danger badge-up">5</span></a>
                <ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
                  <li class="dropdown-menu-header">
                    <div class="dropdown-header px-1 py-75 d-flex justify-content-between"><span class="notification-title">7 new Notification</span><span class="text-bold-400 cursor-pointer">Mark all as read</span></div>
                  </li>
                  <li class="scrollable-container media-list"><a class="d-flex justify-content-between" href="javascript:void(0);">
                      <div class="media d-flex align-items-center">
                        <div class="media-left pr-0">
                          <div class="avatar mr-1 m-0"><img src="app-assets/images/portrait/small/avatar-s-11.jpg" alt="avatar" height="39" width="39"></div>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading"><span class="text-bold-500">Congratulate Socrates Itumay</span> for work anniversaries</h6><small class="notification-text">Mar 15 12:32pm</small>
                        </div>
                      </div></a><a class="d-flex justify-content-between read-notification cursor-pointer" href="javascript:void(0);">
                      <div class="media d-flex align-items-center">
                        <div class="media-left pr-0">
                          <div class="avatar mr-1 m-0"><img src="app-assets/images/portrait/small/avatar-s-16.jpg" alt="avatar" height="39" width="39"></div>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading"><span class="text-bold-500">New Message</span> received</h6><small class="notification-text">You have 18 unread messages</small>
                        </div>
                      </div></a><a class="d-flex justify-content-between cursor-pointer" href="javascript:void(0);">
                      <div class="media d-flex align-items-center py-0">
                        <div class="media-left pr-0"><img class="mr-1" src="app-assets/images/icon/sketch-mac-icon.png" alt="avatar" height="39" width="39"></div>
                        <div class="media-body">
                          <h6 class="media-heading"><span class="text-bold-500">Updates Available</span></h6><small class="notification-text">Sketch 50.2 is currently newly added</small>
                        </div>
                        <div class="media-right pl-0">
                          <div class="row border-left text-center">
                            <div class="col-12 px-50 py-75 border-bottom">
                              <h6 class="media-heading text-bold-500 mb-0">Update</h6>
                            </div>
                            <div class="col-12 px-50 py-75">
                              <h6 class="media-heading mb-0">Close</h6>
                            </div>
                          </div>
                        </div>
                      </div></a><a class="d-flex justify-content-between cursor-pointer" href="javascript:void(0);">
                      <div class="media d-flex align-items-center">
                        <div class="media-left pr-0">
                          <div class="avatar bg-primary bg-lighten-5 mr-1 m-0 p-25"><span class="avatar-content text-primary font-medium-2">LD</span></div>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading"><span class="text-bold-500">New customer</span> is registered</h6><small class="notification-text">1 hrs ago</small>
                        </div>
                      </div></a><a href="javascript:void(0);">
                      <div class="media d-flex align-items-center justify-content-between">
                        <div class="media-left pr-0">
                          <div class="media-body">
                            <h6 class="media-heading">New Offers</h6>
                          </div>
                        </div>
                        <div class="media-right">
                          <div class="custom-control custom-switch">
                            <input class="custom-control-input" type="checkbox" checked id="notificationSwtich">
                            <label class="custom-control-label" for="notificationSwtich"></label>
                          </div>
                        </div>
                      </div></a><a class="d-flex justify-content-between cursor-pointer" href="javascript:void(0);">
                      <div class="media d-flex align-items-center">
                        <div class="media-left pr-0">
                          <div class="avatar bg-danger bg-lighten-5 mr-1 m-0 p-25"><span class="avatar-content"><i class="bx bxs-heart text-danger"></i></span></div>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading"><span class="text-bold-500">Application</span> has been approved</h6><small class="notification-text">6 hrs ago</small>
                        </div>
                      </div></a><a class="d-flex justify-content-between read-notification cursor-pointer" href="javascript:void(0);">
                      <div class="media d-flex align-items-center">
                        <div class="media-left pr-0">
                          <div class="avatar mr-1 m-0"><img src="app-assets/images/portrait/small/avatar-s-4.jpg" alt="avatar" height="39" width="39"></div>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading"><span class="text-bold-500">New file</span> has been uploaded</h6><small class="notification-text">4 hrs ago</small>
                        </div>
                      </div></a><a class="d-flex justify-content-between cursor-pointer" href="javascript:void(0);">
                      <div class="media d-flex align-items-center">
                        <div class="media-left pr-0">
                          <div class="avatar bg-rgba-danger m-0 mr-1 p-25">
                            <div class="avatar-content"><i class="bx bx-detail text-danger"></i></div>
                          </div>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading"><span class="text-bold-500">Finance report</span> has been generated</h6><small class="notification-text">25 hrs ago</small>
                        </div>
                      </div></a><a class="d-flex justify-content-between cursor-pointer" href="javascript:void(0);">
                      <div class="media d-flex align-items-center border-0">
                        <div class="media-left pr-0">
                          <div class="avatar mr-1 m-0"><img src="app-assets/images/portrait/small/avatar-s-16.jpg" alt="avatar" height="39" width="39"></div>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading"><span class="text-bold-500">New customer</span> comment recieved</h6><small class="notification-text">2 days ago</small>
                        </div>
                      </div></a></li>
                  <li class="dropdown-menu-footer"><a class="dropdown-item p-50 text-primary justify-content-center" href="javascript:void(0)">Read all notifications</a></li>
                </ul>
              </li>
              <li class="dropdown dropdown-user nav-item"><a class="dropdown-toggle nav-link dropdown-user-link" href="javascript:void(0);" data-toggle="dropdown">
                  <div class="user-nav d-sm-flex d-none"><span class="user-name">John Doe</span><span class="user-status text-muted">Available</span></div><span><img class="round" src="app-assets/images/portrait/small/avatar-s-11.jpg" alt="avatar" height="40" width="40"></span></a>
                <div class="dropdown-menu dropdown-menu-right pb-0"><a class="dropdown-item" name="sub"><i class="bx bx-user mr-50"></i> Edit Profile</a><a class="dropdown-item" href="app-email.html"><i class="bx bx-envelope mr-50"></i> My Inbox</a><a class="dropdown-item" href="app-todo.html"><i class="bx bx-check-square mr-50"></i> Task</a><a class="dropdown-item" href="app-chat.html"><i class="bx bx-message mr-50"></i> Chats</a>
                  <div class="dropdown-divider mb-0"></div><a class="dropdown-item" href="auth-login.html"><i class="bx bx-power-off mr-50"></i> Logout</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    <!-- END: Header-->


    <!-- BEGIN: Main Menu-->
    <div class="main-menu menu-fixed menu-light menu-accordion menu-shadow" data-scroll-to-active="true">
      <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
          <li class="nav-item mr-auto"><a class="navbar-brand" >
              <div class="brand-logo">
              
                <img src="images/icon.png" alt="" height="40px" width="40px">
              </div>
              <h2 class="brand-text mb-0">vivahmilan</h2></a></li>
          <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pr-0" data-toggle="collapse"><i class="bx bx-x d-block d-xl-none font-medium-4 primary toggle-icon"></i><i class="toggle-icon bx bx-disc font-medium-4 d-none d-xl-block collapse-toggle-icon primary" data-ticon="bx-disc"></i></a></li>
        </ul>
      </div>
      <div class="shadow-bottom"></div>
      <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation" data-icon-style="">
          <li class=" nav-item"><a href="dashboard-ecommerce.php"><i class='bx bxs-dashboard'></i><span class="menu-title text-truncate" data-i18n="Dashboard">Dashboard</span></a>
          </li>
          <li class=" nav-item"><a href="#"><i class="bx bx-file"></i><span class="menu-title text-truncate" data-i18n="Invoice">Community</span></a>
            <ul class="menu-content">
              <li><a class="d-flex align-items-center" href="community_list.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice">Community List</span></a>
              </li>
             
            </ul>
          </li>
          <li class=" nav-item"><a href="#"><i class="bx bx-detail"></i><span class="menu-title text-truncate" data-i18n="Invoice">Sub Community</span></a>
         <ul class="menu-content">
              <li><a class="d-flex align-items-center" href="subcommunity_list.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice list">Sub Community list</span></a>
              </li>
             
            </ul>  
        </li>
          
          <li class=" nav-item"><a href="#"><i class='bx bxs-package'></i><span class="menu-title text-truncate" data-i18n="Invoice">Package</span></a>
            <ul class="menu-content">
              <li><a class="d-flex align-items-center" href="package_list.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice List">Package list</span></a>
              </li>
              <li><a class="d-flex align-items-center" href="package_detail_list.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice list">Package details</span></a>
              </li>
             
            </ul>
          </li>
          
          <li class=" nav-item"><a href="#"><i class="bx bx-user-plus"></i><span class="menu-title text-truncate" data-i18n="Calendar">Members</span></a>
          <ul class="menu-content">
              <li><a class="d-flex  align-items-center" href="member.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice List">Member</span></a>
              </li>
              <li><a class="d-flex  align-items-center" href="member_details.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice List">Member detail</span></a>
              </li>
              <li><a class="d-flex  align-items-center" href="member_qualification.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice List">Member qualification</span></a>
              </li>
              <li><a class="d-flex  align-items-center" href="lifestyle.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice List">lifestyle List</span></a>
              </li>
            </ul>
          </li>
          <li class=" nav-item"><a href="states.php"><i class='bx bx-map'></i><span class="menu-title text-truncate" data-i18n="#">States</span></a>
          <ul class="menu-content">
              <li><a class="d-flex  align-items-center" href="stateslist.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice List">States List</span></a>
              </li>
            </ul>  
        </li>
        <li class=" nav-item"><a href="states.php"><i class='bx bxs-city'></i><span class="menu-title text-truncate" data-i18n="Calendar">Cities</span></a>
          <ul class="menu-content">
              <li><a class="d-flex  align-items-center" href="city_list.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice List">Citys List</span></a>
              </li>
            </ul>  
        </li>
          <li class=" nav-item"><a href=""><i class="bx bx-chat"></i><span class="menu-title text-truncate" data-i18n="Chat">Testimonial</span></a>
          <ul class="menu-content">
              <li><a class="d-flex  align-items-center" href="testimonial.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice List">Testimonial</span></a>
              </li>
            </ul>
          </li>
          
          <li class=" nav-item"><a href="faqadd.php"><i class='bx bxs-checkbox-checked'></i><span class="menu-title text-truncate" data-i18n="Chat">Faq</span></a>
          <ul class="menu-content">
              <li><a class="d-flex  align-items-center" href="faq_list.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice List">FAQ List</span></a>
              </li>
            </ul>
          </li>
          <li class=" nav-item"><a href="#"><i class="bx bx-chat"></i><span class="menu-title text-truncate" data-i18n="Chat">Language</span></a>
          <ul class="menu-content">
              <li><a class="d-flex  align-items-center" href="language_list.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice List">Language List</span></a>
              </li>
            </ul>
          </li>
          <li class=" nav-item"><a href="#"><i class="bx bx-paper-plane"></i><span class="menu-title text-truncate" data-i18n="Calendar">Send request</span></a>
          <ul class="menu-content">
              </li>
              <li><a class="d-flex  align-items-center" href="send_request.php"><i class="bx bx-right-arrow-alt"></i><span class="menu-item text-truncate" data-i18n="Invoice List">Send request List</span></a>
              </li>
            </ul>  
        </li>
        
        </div>
    </div>


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
  
              $nm=$em=$pw=$con=$ct="";
              if(isset($_GET['ID']))
              {
                $ID=$_GET['ID'];
                $str="select * from tbl_admin where Admin_ID =".$ID;
                $data=mysqli_query($conn,$str);
                $row=mysqli_fetch_array($data);
                
              }
              if(isset($_POST['sub']))
              {
                if(!empty($_SESSION['ID']))
                {
                  $nm=$_SESSION["nm"];
                  $em= $_SESSION["em"];
                  $pw=$_SESSION["pw"];
                  $con=$_SESSION["con"];
                  $ct=$_SESSION["ct"];
                  $str="update tbl_admin set Admin_Name ='".$nm."' , Admin_Email ='".$em."' , Admin_Password ='".$pw."',Admin_Contact ='".$con."',Admin_City ='".$ct."' where Admin_ID =".$ID;
                  mysqli_query($conn,$str);
                  header('location:dashboard-ecommerce.php');

                }
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
			<div class="container mt-4">
				<div>
					<label>Admin Name</label>
					<input type="text" name="Admin_Name" class="form-control" value="<?php echo $nm;?>">
				</div>
				<div>
					<label>EmailID</label>
					<input type="text" name="Admin_Email" class="form-control" value="<?php echo $em;?>">
				</div>
				<div>
					<label>Password</label>
					<input type="text" name="Admin_Password" class="form-control" value="<?php echo $pw;?>">
				</div>
				<div>
					<label>Contact</label>
					<input type="text" name="Admin_Contact" class="form-control" value="<?php echo $con;?>">
				</div>
				<div>
					<label>City</label>
					<input type="text" name="Admin_City" class="form-control"  value="<?php echo $ct;?>">
				</div>
				<br>
				<input type="submit" name="BtnInsert" class="btn btn-outline-dark">
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