<!DOCTYPE html> 
<?php
session_start();
 require_once("connection.php");
 if(!isset($_SESSION['mail']))
 {
  //header('location:index.php');
  }

 
?>
<html class="loading" lang="en" data-textdirection="ltr">
  <!-- BEGIN: Head-->
  
<!-- /widgets.html by,  04:44:53 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description" content="Frest admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Frest admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Dashboard | <?php echo $title; ?></title>
    <link rel="shortcut icon" href="images/icon.png">
    <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.html">
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,600%7CIBM+Plex+Sans:300,400,500,600,700" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/extensions/dragula.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/pickers/daterange/daterangepicker.css">
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
    <link rel="stylesheet" type="text/css" href="app-assets/css/pages/widgets.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/pages/dashboard-analytics.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <!-- END: Custom CSS-->

  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="vertical-layout vertical-menu-modern boxicon-layout no-card-shadow 2-columns  navbar-sticky footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="2-columns">

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
          <div class="content-header-left col-12 mb-2 mt-1">
            <div class="breadcrumbs-top">
              
              <div class="breadcrumb-wrapper d-none d-sm-block">
                <ol class="breadcrumb p-0 mb-0 pl-1">
                  <li class="breadcrumb-item"><a href="index.html"></a>
                  </li>
                </ol>
              </div>
            </div>
          </div>
        </div>

        <div class="content-body">
        <!-- Widgets Statistics start -->
          <section id="widgets-Statistics">
            <div class="row">
              <div class="col-xl-2 col-md-4 col-sm-6">
                <div class="card text-center">
                  <div class="card-body">
                    <a href="community_list.php"><div class="badge-circle badge-circle-lg badge-circle-light-info mx-auto my-1">
                      <i class="fa fa-black-tie font-medium-5"></i>
                    </div>
                    <span class="text-muted mb-0 line-ellipsis" style="color: grey;">Community</span>
                    <h4 class="mb-0">
                      <?php 
                      $str="SELECT COUNT(Community_ID) as Total_Community FROM tbl_community";
                      $count=mysqli_query($conn,$str);
                      $result_count=mysqli_fetch_array($count);
                      ?>
                    <tr>
                      <td><b><?php echo $result_count['Total_Community'];?></b></td>
                    </tr>
                    </h4>
                  </a>
                  </div>
                </div>
              </div>
              <div class="col-xl-2 col-md-4 col-sm-6">
                <div class="card text-center">
                  <div class="card-body">
                    <a href="subcommunity_list.php"><div class="badge-circle badge-circle-lg badge-circle-light-warning mx-auto my-1">
                      <i class="fa fa-user font-medium-5"></i>
                    </div>
                    <span class="text-muted mb-0 line-ellipsis" style="color: grey;">Sub Community</span>
                    <h4 class="mb-0">
                      <?php 
                      $str="SELECT COUNT(Sub_Community_ID) as Total_Sub_Community FROM tbl_sub_community";
                      $count=mysqli_query($conn,$str);
                      $result_count=mysqli_fetch_array($count);
                    ?>
                    <tr>
                      <td><b><?php echo $result_count['Total_Sub_Community'];?></b></td>
                    </tr>
                  </h4>
                </a>
                  </div>
                </div>
              </div>
              <div class="col-xl-2 col-md-4 col-sm-6">
                <div class="card text-center">
                  <div class="card-body">
                    <a href="package_detail_list.php"><div class="badge-circle badge-circle-lg badge-circle-light-primary mx-auto my-1">
                      <i class="bx bx-book font-medium-5"></i>
                    </div>
                    <span class="text-muted mb-0 line-ellipsis">Package</span>
                    <h4 class="mb-0">
                      <?php 
                      $str="SELECT count(Package_Detail_ID) as Total_Package FROM tbl_package_detail";
                      $count=mysqli_query($conn,$str);
                      $result_course=mysqli_fetch_array($count);
                      ?>
                    <tr>
                      <td><b><?php echo $result_course['Total_Package'];?></b></td>
                    </tr>
                  </h4>
                </a>
                  </div>
                </div>
              </div>
              <div class="col-xl-2 col-md-4 col-sm-6">
                <div class="card text-center">
                  <div class="card-body">
                    <a href="member.php"><div class="badge-circle badge-circle-lg badge-circle-light-success mx-auto my-1">
                      <i class="fa fa-solid fa-question font-medium-5"></i>
                    </div>
                    <span class="text-muted mb-0 line-ellipsis">Member</span>
                    <h4 class="mb-0">
                    <?php 
                        $str="SELECT count(Member_ID) as Total_Member FROM tbl_member";
                        $count=mysqli_query($conn,$str);
                        $result_inquiry=mysqli_fetch_array($count);
                        ?>
                      <tr>
                        <td><b><?php echo $result_inquiry['Total_Member'];?></b></td>
                      </tr>
                    </h4>
                  </a>
                  </div>
                </div>
              </div>
              <div class="col-xl-2 col-md-4 col-sm-6">
                <div class="card text-center">
                  <div class="card-body">
                    <a href="language_list.php"><div class="badge-circle badge-circle-lg badge-circle-light-danger mx-auto my-1">
                      <i class="fa fa-gift font-medium-5"></i>
                    </div>
                    <span class="text-muted mb-0 line-ellipsis">Language</span>
                    <h4 class="mb-0"> 
                      <?php 
                      $str="SELECT count(Language_ID) as Total_language FROM tbl_language";
                        $count=mysqli_query($conn,$str);
                        $result_package=mysqli_fetch_array($count);
                        ?>
                    <tr>
                      <td><b><?php echo $result_package['Total_language'];?></b></td>
                    </tr>
                    </h4>
                    </a>
                  </div>
                </div>
              </div>
              <div class="col-xl-2 col-md-4 col-sm-6">
                <div class="card text-center">
                  <div class="card-body">
                    <a href="tutor_subscription_detail.php"><div class="badge-circle badge-circle-lg badge-circle-light-danger mx-auto my-1">
                      <i class="fa fa-inr font-medium-5"></i>
                    </div>
                    <span class="text-muted mb-0 line-ellipsis">Total Income [₹]</span>
                    <h4 class="mb-0">
                      <?php 
                      $str="SELECT SUM(Package_Price) as Total_Price FROM tbl_package_detail,tbl_package where tbl_package_detail.Package_ID=tbl_package.Package_ID";
                      $count=mysqli_query($conn,$str);
                      $result_count=mysqli_fetch_array($count);
                      ?>
                    <tr>
                      <td><b>₹ <?php echo $result_count['Total_Price'];?></b></td>
                    </tr>
                  </h4>
                </a>
                  </div>
                </div>
              </div>              
            </div>
        <!-- Widgets Statistics End -->    
        <div class="row">
								<!-- Chart For Student Reference  -->
								<div class="col-md-6">
									<div class="x_panel tile  overflow_hidden">
										<div class="x_title">
											<!-- <h2>Top Campaign Performance</h2> -->
										   <ul class="nav navbar-right panel_toolbox" style="min-width:0px;">
												<!-- <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li> -->
												<li><a class="close-link"><i class="fa fa-close"></i></a></li>
										   </ul>
											<div class="clearfix"></div>
										</div>
										<div class="x_content">
											<div id="reference_container" style="min-width: 310px; height: 400px; max-width: 600px; margin:0 auto"></div>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="x_panel tile  overflow_hidden">
										<div class="x_title">
											<!-- <h2>Top Campaign Performance</h2> -->
										   <ul class="nav navbar-right panel_toolbox" style="min-width:0px;">
												<!-- <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li> -->
												<li><a class="close-link"><i class="fa fa-close"></i></a></li>
										   </ul>
											<div class="clearfix"></div>
										</div>
										<div class="x_content">
											<div id="marital_container" style="min-width: 310px; height: 400px; max-width: 600px; margin:0 auto"></div>
										</div>
									</div>
								</div>
					</div>
          <br><br>
          <div class="row">
								<!-- Chart For Student Reference  -->
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="x_panel tile  overflow_hidden">
										<div class="x_title">
											<!-- <h2>Top Campaign Performance</h2> -->
										   <ul class="nav navbar-right panel_toolbox" style="min-width:0px;">
												<!-- <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li> -->
												<li><a class="close-link"><i class="fa fa-close"></i></a></li>
										   </ul>
											<div class="clearfix"></div>
										</div>
										<div class="x_content">
											<div id="community_container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
										</div>
									</div>
								</div>
              
								 <!-- Chart For Expesne Categorized  -->
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="x_panel tile  overflow_hidden">
										<div class="x_title">
										 <!-- <h2>Expenditure</h2> -->
										   <ul class="nav navbar-right panel_toolbox" style="min-width:0px;">
												<!-- <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li> -->
												<li><a class="close-link"><i class="fa fa-close"></i></a></li>
										   </ul>
											<div class="clearfix"></div>
										</div>
										<div class="x_content">
											<div id="sub_comm_container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
										</div>
									</div>
								</div>
					</div>
						
					<div class="row">
						<div class="col-md-12">
										<section class="panel panel-featured-left panel-featured-quartenary">
											<div class="panel-body">
										<div class="row">
											<div class="col-lg-12">
												<div class="chart-data-selector" id="salesSelectorWrapper">
													<h2>
														<br>
														<!-- <strong>
															<select class="form-control" id="salesSelector">
																<option value="JSOFT Admin" selected>JSOFT Admin</option>
																<option value="JSOFT Drupal" >JSOFT Drupal</option>
																<option value="JSOFT Wordpress" >JSOFT Wordpress</option>
															</select>
														</strong>-->
													</h2>
													<!--  Month wise order-->
													 <div id="order_container"></div>
													 <br>
												</div>
											</div>
										</div>
										</section>
									</div>
								</div>
						<div class="row">
								<!-- Chart For Student Reference  -->
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="x_panel tile  overflow_hidden">
										<div class="x_title">
											<!-- <h2>Top Campaign Performance</h2> -->
										   <ul class="nav navbar-right panel_toolbox" style="min-width:0px;">
												<!-- <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li> -->
												<li><a class="close-link"><i class="fa fa-close"></i></a></li>
										   </ul>
											<div class="clearfix"></div>
										</div>
										<div class="x_content">
											<div id="state_container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
										</div>
									</div>
								</div>

								 <!-- Chart For Expesne Categorized  -->
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="x_panel tile  overflow_hidden">
										<div class="x_title">
										 <!-- <h2>Expenditure</h2> -->
										   <ul class="nav navbar-right panel_toolbox" style="min-width:0px;">
												<!-- <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li> -->
												<li><a class="close-link"><i class="fa fa-close"></i></a></li>
										   </ul>
											<div class="clearfix"></div>
										</div>
										<div class="x_content">
											<div id="city1_container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
										</div>
									</div>
								</div>
					</div>
          <div class="row">
            <!-- Task Card Starts -->
            <!--<div class="col-lg-12">
              <div class="row">
                <div class="col-12">
                  <div class="card widget-todo">
                    <div class="card-header border-bottom d-flex justify-content-between align-items-center flex-wrap">
                      <h4 class="card-title d-flex mb-25 mb-sm-0">
                        <i class='bx bx-check font-medium-5 pl-25 pr-75'></i>Monthly Registered Members
                      </h4>
                      
                    </div>
                    <div class="card-body px-0 py-1">
                      <div id="tutor_container"></div>
                        <div class="x_content">
                          <div class="col-md-8 col-sm-8 col-xs-12">
                              
                             </div>
                          <div class="clearfix"></div>
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>-->
            <!-- Daily Financials Card Starts -->  
          </div>
<br>
          <div class="row">
            <!-- Tutor Card Starts -->
            <div class="col-lg-12">
                <div class="row">
                  <div class="col-12">
                    <div class="card">
                      <div class="card-header">
                        <h4 class="card-title">Recent Package List</h4>
                      </div>
                      <div class="card-body card-dashboard">

                        <div class="table-responsive">
                          <table class="table table-hover">
                            <thead>
                             <tr>
                                <th>Member ID</th>
                                <th>Purchase Date</th>
                                <th>Package Expire Date</th>
                                <th>Statues</th>
                              </tr>
                            </thead>
                            <tbody>
                                <?php 
                                // $qry="select * from tutor_tbl";
                                $qry="SELECT * FROM `tbl_package_detail` ORDER BY `tbl_package_detail`.`Package_Detail_ID` DESC limit 5";

                                $test=mysqli_query($conn,$qry);
                                while($result=mysqli_fetch_array($test))
                                {
                                ?>
                                <tr>
                                    
                                    <td><?php echo $result['Member_ID']?></td>
                                    <td><?php echo $result['Purchase_Date']?></td>
                                    <td><?php echo $result['Package_Exp_Date']?></td>
                                    <td><?php echo $result['Package_Detail_Status']?></td>
                                    
                                    <td><?php 
                                      if($result['Package_Detail_Status']==1) 
                                      {
                                        echo '<span class="badge bg-success">Active</span>';
                                      } 
                                      else
                                      {
                                      echo '<span class="badge bg-danger">Inactive</span>';
                                      }?>
                                    </td>
                                  </tr>
                                <?php
                                 } 
                                ?> 
                                </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            <!-- End Tutor Card -->
          </div>

          <div class="row">
            <!-- User Card Starts -->
            <div class="col-lg-12">
                <div class="row">
                  <div class="col-12">
                    <div class="card">
                      <div class="card-header">
                        <h4 class="card-title">Recent Member List</h4>
                      </div>
                      <div class="card-body card-dashboard">

                        <div class="table-responsive">
                          <table class="table table-hover">
                            <thead>
                             <tr>
                                <th>Member ID</th>
                                <th>Name</th>
                                <th>Email </th>
                                <th>Contact</th>
                                <th>Gender</th>
                                <th>Profile ID</th>
                                <th>Register Date</th>                             
                              </tr>
                            </thead>
                            <tbody>
                                <?php 
                                $qry="SELECT * FROM `tbl_member` ORDER BY `tbl_member`.`Member_ID` DESC limit 5 ";
                                $test=mysqli_query($conn,$qry);
                                while($result=mysqli_fetch_array($test))
                                {
                                ?>
                                <tr>
                                    <td><?php echo $result['Member_ID']?></td>
                                    <td><?php echo $result['Member_Firstname']?></td>
                                    <td><?php echo $result['Member_Email']?></td>
                                    <td><?php echo $result['Member_Contact']?></td>
                                    <!-- <td><?php echo $result['Member_Gender']?></td> -->
                                    <td>
                                      <?php 
                                        if($result['Member_Gender']=="Female") 
                                        {
                                        ?>
                                        <img src="images/female.png" height="30px" width="30px">
                                        <?php 
                                        } 
                                        else
                                        {
                                        ?>
                                        <img src="images/male.png" height="30px" width="30px">
                                        <?php 
                                        }
                                      ?>
                                    </td> 
                                    <td><?php echo $result['Member_Profile_ID']?></td>
                                    <td><?php echo date("d-M-Y", strtotime($result['Registration_Date']))?></td>
                                  </tr>
                                <?php
                                 } 
                                ?> 
                                </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            <!-- End User Card -->
          </div>

          <div class="row">
            <!-- Payment Card Starts -->
            <div class="col-lg-12">
              <div class="row">
                <div class="col-12">
                  <div class="card">
                    <div class="card-header">
                      <h4 class="card-title">Recent Package Payment List</h4>
                    </div>
                    <div class="card-body card-dashboard">
                      <?php if(isset($_SESSION['success'])) {?>            
                        <div class="alert alert-success alert-dismissible">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Success!</strong> <?php echo $_SESSION['success'];  
                        unset($_SESSION['success']); ?>
                        </div> 
                      <?php } ?>
                      <div class="table-responsive">
                        <table class="table table-hover">
                          <thead>
                           <tr>
                              <th>Member Name</th>
                              <th>Type</th>
                              <th>Duration (Month)</th>
                              <th>Price(₹)</th>
                              <th>Purchase Date</th>
                              <th>Exp.Date</th>
                              <th style="width: 200px;">Days Left <img src="images/clock.png" width="23px" ;></th>
                              <th>Status</th>
                              
                            </tr>
                          </thead>
                          <tbody>
                              <?php   
                              $qry="select * from tbl_package_detail,tbl_package,tbl_member where tbl_package_detail.Package_ID=tbl_package.Package_ID and tbl_package_detail.Member_ID=tbl_member.Member_ID order by tbl_package_detail.Package_Detail_ID DESC";
                                // echo $qry;die;
                              $test=mysqli_query($conn,$qry);
                              while($result=mysqli_fetch_array($test))
                              {
                              ?>
                              <tr>
                                  <td><?php echo $result['Member_Firstname']?></td>
                                  <td><?php echo $result['Package_Name']?></td>
                                  <td><?php echo $result['Package_Duration']?></td>
                                  <td><?php echo $result['Package_Price']?></td>
                                  <td><?php echo  date("d-M-Y", strtotime($result['Purchase_Date']))?></td>
                                  <td><?php echo  date("d-M-Y", strtotime($result['Package_Exp_Date']))?></td>
                                  <td><?php
                                    //Convert to date
                                    //$datestr="2022-02-06";//Your date
                                    $datestr=$result['Package_Exp_Date'];//Your date
                                    $date=strtotime($datestr);//Converted to a PHP date (a second count)

                                    //Calculate difference
                                    $diff=$date-time();//time returns current time in seconds
                                    $days=floor($diff/(60*60*24));//seconds/minute*minutes/hour*hours/day)
                                    $hours=round(($diff-$days*60*60*24)/(60*60));


                                     if($days<0)
                                    {
                                      echo '<span class="badge bg-danger ">Expire</span>';
                                    }
                                    else
                                    {
                                        echo "$days days  remain<br />";

                                    }

                                    //Report
                                    //echo "$days days  remain<br />";;
                                    ?>
                                  </td>
                                  <td><?php 
                                    if($result['Package_Detail_Status']==1) 
                                    {
                                      echo '<span class="badge bg-success">Success</span>';
                                    } 
                                    else
                                    {
                                      echo '<span class="badge bg-danger">Pending</span>';
                                    }?> 
                                  </td>
                                </tr>
                              <?php
                               } 
                              ?> 
                              </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>  
            </div>
            <!-- End Payment Card -->
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
    <?php include_once "footer.php"; ?>
    <!-- END: Footer-->

    <!--Starts Monthly Registered Tutors-->
    <?php 
			
			$monthly_order = order_get_ByMonth();
			$monthName_order = order_get_ByMonth(); 
			// login_user_ID=".$_SESSION['Admin_Id']."
			//where login_user_ID=".$_SESSION['Admin_Id']."	
			function order_get_ByMonth()
			{
				global $conn;
				$sql = "SELECT COUNT('Member_ID') as 'number_of_order',extract(month FROM Registration_Date ) as month 
						FROM `tbl_member` 
						GROUP BY extract(month FROM Registration_Date)  ORDER by month";
						//echo $sql;
				$order =  mysqli_query($conn,$sql);
				return $order;
			}


			$religion=count_All_religion();
			function count_All_religion()
			{
					global $conn;
					$sql = "SELECT Member_Religion,count(Member_Religion) as no_of_reli FROM `tbl_member_detail` 
							group by `Member_Religion`";
					$religions =  mysqli_query($conn,$sql);
					return $religions;
			}

			$community=count_All_community();
			function count_All_community()
			{
					global $conn;
					$sql = "SELECT Community_Name,count(tbl_community.Community_ID) as no_of_community
					FROM tbl_sub_community ,tbl_member_detail,tbl_community
					where tbl_sub_community.Sub_Community_ID=tbl_member_detail.Member_Sub_Community_ID
					and tbl_community.Community_ID=tbl_sub_community.Community_ID
					group by tbl_community.Community_ID";
										$communities =  mysqli_query($conn,$sql);
					return $communities;
			}

			$subcommunity=count_All_subcommunity();
			function count_All_subcommunity()
			{
					global $conn;
					$sql = "SELECT Sub_Community_Name,count(Member_Sub_Community_ID) as no_of_subcomm
							FROM tbl_sub_community ,tbl_member_detail
							where tbl_sub_community.Sub_Community_ID=tbl_member_detail.Member_Sub_Community_ID
							group by Member_Sub_Community_ID";
					$subcommunities =  mysqli_query($conn,$sql);
					return $subcommunities;
			}

			$marital=count_All_marital();
			function count_All_marital()
			{
					global $conn;
					$sql = "SELECT Marital_Status,count(Marital_Status) as no_of_marits FROM `tbl_member_detail` 
							group by `Marital_Status`";
					$maritals =  mysqli_query($conn,$sql);
					return $maritals;
			}

			$state=count_All_state();
			function count_All_state()
			{
					global $conn;
					$sql = "SELECT State_Name,count(tbl_state.State_ID) as no_of_state
							FROM tbl_city ,tbl_member,tbl_state
							where tbl_city.City_ID=tbl_member.Member_City
							and tbl_state.State_ID=tbl_city.State_ID
							group by tbl_state.State_ID";
					$states =  mysqli_query($conn,$sql);
					return $states;
			}	

			$city1=count_All_city1();
			function count_All_city1()
			{
					global $conn;
					$sql = "SELECT City_Name,count(tbl_city.City_ID) as no_of_city
							FROM tbl_city ,tbl_member
							where tbl_city.City_ID=tbl_member.Member_City
							group by tbl_city.City_ID";
					$cities =  mysqli_query($conn,$sql);
					return $cities;
			}	
			?>
				</aside>
    <!--End Monthly Registered Tutors-->
      
    <!--Start Monthly Registered Student-->
      <?php     
      //$monthly_tutor = tutor_get_ByMonth();
      //$monthName_tutor = tutor_get_ByMonth(); 
      //function tutor_get_ByMonth()
      //{
        //global $conn;
        //$sql = "SELECT COUNT('Member_ID') as 'number_of_tutors',extract(month FROM Registration_Date ) as month 
            //FROM `tbl_member` 
            //GROUP BY extract(month FROM Registration_Date)  ORDER by month";
            //echo $sql;
        //$tutors =  mysqli_query($conn,$sql);
        //return $tutors;
      //}
      ?>
    <!--End Monthly Registered Student-->
      

    <!-- BEGIN: Vendor JS-->
    <script src="app-assets/vendors/js/vendors.min.js"></script>
    <script src="app-assets/fonts/LivIconsEvo/js/LivIconsEvo.tools.min.js"></script>
    <script src="app-assets/fonts/LivIconsEvo/js/LivIconsEvo.defaults.min.js"></script>
    <script src="app-assets/fonts/LivIconsEvo/js/LivIconsEvo.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="app-assets/vendors/js/extensions/moment.min.js"></script>
    <script src="app-assets/vendors/js/pickers/daterange/daterangepicker.js"></script>
    <script src="app-assets/vendors/js/charts/apexcharts.min.js"></script>
    <script src="app-assets/vendors/js/extensions/dragula.min.js"></script>
    <script src="app-assets/vendors/js/extensions/swiper.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="app-assets/js/core/app-menu.min.js"></script>
    <script src="app-assets/js/core/app.min.js"></script>
    <script src="app-assets/js/scripts/components.min.js"></script>
    <script src="app-assets/js/scripts/footer.min.js"></script>
    <script src="app-assets/js/scripts/customizer.min.js"></script>
    <!-- END: Theme JS-->

    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/highcharts-more.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <script src="assets/js/cards-statistics.js"></script>
    <!-- Specific Page Vendor -->
		<script src="assets/vendor/jquery-ui/js/jquery-ui-1.10.4.custom.js"></script>
		<script src="assets/vendor/jquery-ui-touch-punch/jquery.ui.touch-punch.js"></script>
		<script src="assets/vendor/jquery-appear/jquery.appear.js"></script>
		<script src="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
		<script src="assets/vendor/jquery-easypiechart/jquery.easypiechart.js"></script>
		<script src="assets/vendor/flot/jquery.flot.js"></script>
		<script src="assets/vendor/flot-tooltip/jquery.flot.tooltip.js"></script>
		<script src="assets/vendor/flot/jquery.flot.pie.js"></script>
		<script src="assets/vendor/flot/jquery.flot.categories.js"></script>
		<script src="assets/vendor/flot/jquery.flot.resize.js"></script>
		<script src="assets/vendor/jquery-sparkline/jquery.sparkline.js"></script>
		<script src="assets/vendor/raphael/raphael.js"></script>
		<script src="assets/vendor/morris/morris.js"></script>
		<script src="assets/vendor/gauge/gauge.js"></script>
		<script src="assets/vendor/snap-svg/snap.svg.js"></script>
		<script src="assets/vendor/liquid-meter/liquid.meter.js"></script>
		<script src="assets/vendor/jqvmap/jquery.vmap.js"></script>
		<script src="assets/vendor/jqvmap/data/jquery.vmap.sampledata.js"></script>
		<script src="assets/vendor/jqvmap/maps/jquery.vmap.world.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.africa.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.asia.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.australia.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.europe.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.north-america.js"></script>
		<script src="assets/vendor/jqvmap/maps/continents/jquery.vmap.south-america.js"></script>
    <!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>

    <!-- BEGIN: Page JS-->
    <script src="app-assets/js/scripts/cards/widgets.min.js"></script>
    <!-- END: Page JS-->

    <!-- Monthly Registerd Students   -->
    <script src="assets/javascripts/dashboard/examples.dashboard.js"></script>
    <script>
		var chart = Highcharts.chart('order_container', {

			title: {
				text: 'Month Wise Regester Members'
			},

			subtitle: {
				text: 'Plain'
			},

			xAxis: {
				//categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
				categories: [<?php while($row1 = mysqli_fetch_array($monthName_order)) { echo "'". date("F", strtotime(date("Y")."-".$row1['month']."-01"))."',";	} ?>]
				//categories: [<?php while($row1 = mysqli_fetch_array($monthName_order)) { echo "'".date("F", mktime(0, 0, 0, $row1['month']))."',";	} ?>]
			},

			series: [{
				type: 'column',
				colorByPoint: true,
				data: [<?php while($rows = mysqli_fetch_array($monthly_order)) { echo $rows['number_of_order'].",";	} ?>],
				showInLegend: false
			}]

		});


		$('#plain').click(function () {
			chart.update({
				chart: {
					inverted: false,
					polar: false
				},
				subtitle: {
					text: 'Plain'
				}
			});
		});

		$('#inverted').click(function () {
			chart.update({
				chart: {
					inverted: true,
					polar: false
				},
				subtitle: {
					text: 'Inverted'
				}
			});
		});

		$('#polar').click(function () {
			chart.update({
				chart: {
					inverted: false,
					polar: true
				},
				subtitle: {
					text: 'Polar'
				}
			});
		});

		</script>


<script>	
	// Build the chart
Highcharts.chart('city1_container', {
  chart: {
    plotBackgroundColor: null,
    plotBorderWidth: null,
    plotShadow: false,
    type: 'pie'
  },
  title: {
    text: 'City Report,<?php echo date("Y")?>'
  },
  tooltip: {
    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
  },
   
   plotOptions: {
        pie: {
			size:'100%',
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            },
			 showInLegend: true
        }
    },
  series: [{
    name: 'Reference',
    colorByPoint: true,
    data: [{
      
      sliced: true,
      selected: true
    }, 
	<?php while($row = mysqli_fetch_array($city1))  { ?>
	{
      name: '<?php echo $row['City_Name']?>',
      y: <?php echo $row['no_of_city']?>
    }, 
	<?php  } ?>
	]
  }]
});
	</script>

	<script>	
	// Build the chart
Highcharts.chart('marital_container', {
  chart: {
    plotBackgroundColor: null,
    plotBorderWidth: null,
    plotShadow: false,
    type: 'pie'
  },
  title: {
    text: 'Marital Report, <?php echo date("Y")?>'
  },
  tooltip: {
    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
  },
   
   plotOptions: {
        pie: {
			size:'100%',
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            },
			 showInLegend: true
        }
    },
  series: [{
    name: 'Reference',
    colorByPoint: true,
    data: [{
      
      sliced: true,
      selected: true
    }, 
	<?php while($row = mysqli_fetch_array($marital))  { ?>
	{
      name: '<?php echo $row['Marital_Status']?>',
      y: <?php echo $row['no_of_marits']?>
    }, 
	<?php  } ?>
	]
  }]
});
	</script>

	<script>	
	// Build the chart
Highcharts.chart('state_container', {
  chart: {
    plotBackgroundColor: null,
    plotBorderWidth: null,
    plotShadow: false,
    type: 'pie'
  },
  title: {
    text: 'State Report, <?php echo date("Y")?>'
  },
  tooltip: {
    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
  },
   
   plotOptions: {
        pie: {
			size:'100%',
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            },
			 showInLegend: true
        }
    },
  series: [{
    name: 'Reference',
    colorByPoint: true,
    data: [{
      
      sliced: true,
      selected: true
    }, 
	<?php while($row = mysqli_fetch_array($state))  { ?>
	{
      name: '<?php echo $row['State_Name']?>',
      y: <?php echo $row['no_of_state']?>
    }, 
	<?php  } ?>
	]
  }]
});
	</script>

	<script>	
	// Build the chart
Highcharts.chart('sub_comm_container', {
  chart: {
    plotBackgroundColor: null,
    plotBorderWidth: null,
    plotShadow: false,
    type: 'pie'
  },
  title: {
    text: 'Sub-Community Report, <?php echo date("Y")?>'
  },
  tooltip: {
    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
  },
   
   plotOptions: {
        pie: {
			size:'100%',
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            },
			 showInLegend: true
        }
    },
  series: [{
    name: 'Reference',
    colorByPoint: true,
    data: [{
      
      sliced: true,
      selected: true
    }, 
	<?php while($row = mysqli_fetch_array($subcommunity))  { ?>
	{
      name: '<?php echo $row['Sub_Community_Name']?>',
      y: <?php echo $row['no_of_subcomm']?>
    }, 
	<?php  } ?>
	]
  }]
});
	</script>

	<script>	
	// Build the chart
Highcharts.chart('reference_container', {
  chart: {
    plotBackgroundColor: null,
    plotBorderWidth: null,
    plotShadow: false,
    type: 'pie'
  },
  title: {
    text: 'Religion Report, <?php echo date("Y")?>'
  },
  tooltip: {
    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
  },
   
   plotOptions: {
        pie: {
			size:'100%',
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            },
			 showInLegend: true
        }
    },
  series: [{
    name: 'Reference',
    colorByPoint: true,
    data: [{
    
     
    }, 
	<?php while($row = mysqli_fetch_array($religion))  { ?>
	{
      name: '<?php echo $row['Member_Religion']?>',
      y: <?php echo $row['no_of_reli']?>
    }, 
	<?php  } ?>
	]
  }]
});
	</script>
	<script>	
	// Build the chart
Highcharts.chart('community_container', {
  chart: {
    plotBackgroundColor: null,
    plotBorderWidth: null,
    plotShadow: false,
    type: 'pie'
  },
  title: {
    text: 'Community Report, <?php echo date("Y")?>'
  },
  tooltip: {
    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
  },
   
   plotOptions: {
        pie: {
			size:'100%',
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            },
			 showInLegend: true
        }
    },
  series: [{
    name: 'Reference',
    colorByPoint: true,
    data: [{
      
      sliced: true,
      selected: true
    }, 
	<?php while($row = mysqli_fetch_array($community))  { ?>
	{
      name: '<?php echo $row['Community_Name']?>',
      y: <?php echo $row['no_of_community']?>
    }, 
	<?php  } ?>
	]
  }]
});
	</script>
	
		<script>
		// Build the chart
Highcharts.chart('service_container', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Browser market shares in January, 2018'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    accessibility: {
        point: {
            valueSuffix: '%'
        }
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: false
            },
            showInLegend: true
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [{
            name: 'Chrome',
            y: 61.41,
            sliced: true,
            selected: true
        }, {
            name: 'Internet Explorer',
            y: 11.84
        }, {
            name: 'Firefox',
            y: 10.85
        }, {
            name: 'Edge',
            y: 4.67
        }, {
            name: 'Safari',
            y: 4.18
        }, {
            name: 'Other',
            y: 7.05
        }]
    }]
});
		</script>
		
		
		<script>
		// Build the chart
Highcharts.chart('city_container', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Browser market shares in January, 2018'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    accessibility: {
        point: {
            valueSuffix: '%'
        }
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: false
            },
            showInLegend: true
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [{
            name: 'Chrome',
            y: 61.41,
            sliced: true,
            selected: true
        }, {
            name: 'Internet Explorer',
            y: 11.84
        }, {
            name: 'Firefox',
            y: 10.85
        }, {
            name: 'Edge',
            y: 4.67
        }, {
            name: 'Safari',
            y: 4.18
        }, {
            name: 'Other',
            y: 7.05
        }]
    }]
});
		</script>

  </body>
  <!-- END: Body-->

<!-- /widgets.html by,  04:44:54 GMT -->
</html>