<?php 
	include_once 'connection.php';
	if(!isset($_SESSION["Email"]))
	{
		header('location:index.php');
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
		<title>Dashboard | <?php echo $WEB_TITLE;?></title>
		<link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.html">
		<link rel="shortcut icon" href="images/fav.ico" type="image/x-icon">
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

    <!-- BEGIN: Header-->
    <?php include_once 'header.php'; ?>
    <!-- END: Header-->

    <!-- BEGIN: Main Menu-->
    <?php include_once 'sidebar.php'; ?>
    <!-- END: Main Menu-->
	
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
	
	<!-- BEGIN: Content-->
	<div class="app-content content">
		<!--<div class="content-wrapper"> -->
			<div class="content-header row">
				<div class="content-header-left col-12 mb-2 mt-1">
					<div class="breadcrumbs-top">	  
						<div class="breadcrumb-wrapper d-none d-sm-block">
							<ol class="breadcrumb p-0 mb-0 pl-1">
								<li class="breadcrumb-item"><a href="index.html"></a></li>
							</ol>
						</div>
					</div>
				</div>
			</div>
			
			<div class="content-body">
				<!-- Widgets Statistics start -->
				<section id="widgets-Statistics"><br>
					<div class="row">
						<div class="col-xl-2 col-md-4 col-sm-6">
							<div class="card text-center">
								<div class="card-body">
									<a href="member_list.php">
										<div class="badge-circle badge-circle-lg badge-circle-light-info mx-auto my-1">
											<i class="fa fa-user font-medium-5"></i>
										</div>
										<span class="text-muted mb-0 line-ellipsis" style="color: grey;">Member</span>
										<h4 class="mb-0">
											<?php 
												$str="SELECT COUNT(member_id) as Total_Member FROM member_tbl";
												$count=mysqli_query($conn,$str);
												$result_count=mysqli_fetch_array($count);
											?>
											<tr>
												<td><b><?php echo $result_count['Total_Member'];?></b></td>
											</tr>
										</h4>
									</a>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-md-4 col-sm-6">
							<div class="card text-center">
								<div class="card-body">
									<a href="community_list.php">
										<div class="badge-circle badge-circle-lg badge-circle-light-warning mx-auto my-1">
											<i class="fa fa-users font-medium-5"></i>
										</div>
										<span class="text-muted mb-0 line-ellipsis" style="color: grey;">Community</span>
										<h4 class="mb-0">
											<?php 
												$str="SELECT COUNT(community_id) as Total_Community FROM community_tbl";
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
									<a href="subcommunity_list.php">
										<div class="badge-circle badge-circle-lg badge-circle-light-primary mx-auto my-1">
											<i class="fa fa-user-plus font-medium-5"></i>
										</div>
										<span class="text-muted mb-0 line-ellipsis">SubCommunity</span>
										<h4 class="mb-0">
											<?php 
												$str="SELECT count(sub_community_id) as Total_SubCommunity FROM sub_community_tbl";
												$count=mysqli_query($conn,$str);
												$result_course=mysqli_fetch_array($count);
											?>
											<tr>
												<td><b><?php echo $result_course['Total_SubCommunity'];?></b></td>
											</tr>
										</h4>
									</a>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-md-4 col-sm-6">
							<div class="card text-center">
								<div class="card-body">
									<a href="package_list.php">
										<div class="badge-circle badge-circle-lg badge-circle-light-danger mx-auto my-1">
											<i class="fa fa-gift font-medium-5"></i>
										</div>
										<span class="text-muted mb-0 line-ellipsis">Package</span>
										<h4 class="mb-0"> 
											<?php 
												$str="SELECT count(package_id) as Total_package FROM package_tbl";
												$count=mysqli_query($conn,$str);
												$result_package=mysqli_fetch_array($count);
											?>
											<tr>
												<td><b><?php echo $result_package['Total_package'];?></b></td>
											</tr>
										</h4>
									</a>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-md-4 col-sm-6">
							<div class="card text-center">
								<div class="card-body">
									<a href="member_package_details_list.php">
										<div class="badge-circle badge-circle-lg badge-circle-light-danger mx-auto my-1">
											<i class="fa fa-inr font-medium-5"></i>
										</div>
										<span class="text-muted mb-0 line-ellipsis">Total Income [₹]</span>
										<h4 class="mb-0">
											<?php 
												$str="SELECT SUM(package_price) as Total_Price FROM package_detail_tbl,package_tbl where package_detail_tbl.package_id=package_tbl.package_id";
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
						<!-- Member Card Starts -->
						<div class="col-lg-12">
							<div class="row">
								<div class="col-12">
									<div class="card">
										<div class="card-header">
											<h4 class="card-title">Recent Registered Members</h4>
										</div>
										<div class="card-body card-dashboard">
											<div class="table-responsive">
												<table class="table table-hover">
													<thead>
														<tr>
															<th>Image</th>
															<th>Name</th>
															<th>Contact</th>
															<th>Email Address</th>
															<th>Profile For</th>
															<th>Looking For</th>
															<th>Gender</th>
															<th>DOB</th>
															<th>Age</th>
															<th>Min_Age</th>
															<th>Max_Age</th>
															<th>Registration Date</th>
															<th>Status</th>
														</tr>
													</thead>
													<tbody>
														<?php 
															//$qry="SELECT * FROM `member_tbl` ORDER BY `member_tbl`.`member_id` DESC limit 5";
															$qry="SELECT * 
																	FROM `member_tbl`
																	WHERE `member_status` = 1
																	ORDER BY `member_id` DESC
																	LIMIT 5;
																	";
															$test=mysqli_query($conn,$qry);
															while($result=mysqli_fetch_array($test))
															{
														?>
														<tr>
															<?php 
																if (file_exists('images/'.$result['member_image']) && !empty( $result['member_image'])) 
															?>
															<td><img src="../member_profiles/<?php echo $result['member_image'];?>"height="100px" width="100px"></td>
															<td style="width:18%">
																<button type="button" style="" id="user" class="btn" data-id="<?php echo $result['member_id'];?>" data-toggle="modal" data-target=".bs-example-modal-lg" onclick="Member_Modal( <?php echo $result['member_id']; ?> )">
																	<i class="bx bxs-info-circle" style="font-size:18px;color:grey"></i> <?php echo ucfirst($result['member_lastname']) . " " . ucfirst($result['member_firstname']); ?>
																</button>
															</td>
															<td><?php echo $result['member_contact']; ?></td>
															<td><?php echo $result['member_email']; ?></td>
															<td><?php echo ucfirst($result['member_profile_for']); ?></td>
															<td><?php echo ucfirst($result['member_looking_for']); ?></td>
															<td><?php echo ucfirst($result['member_gender']); ?></td>
															<td style="padding: 5px;"><?php echo date("d-M-Y" , strtotime($result['member_dob'])); ?></td>
															<td><?php echo $result['member_age']; ?></td>
															<td><?php echo $result['member_min_age']; ?></td>
															<td><?php echo $result['member_max_age']; ?></td>
															<td><?php echo date("d-M-Y", strtotime($result['registration_date'])); ?></td>
															<td>
																<?php 
																	if($result['member_status']==1) 
																	{
																		echo '<span class="badge bg-success">Active</span>';
																	} 
																	else
																	{
																		echo '<span class="badge bg-danger">Pendding</span>';
																	}
																?>
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
						<!-- End Member Card -->
					</div>
					
					<div class="row">
						<!-- Member Card Starts -->
						<div class="col-lg-12">
							<div class="row">
								<div class="col-12">
									<div class="card">
										<div class="card-header">
											<h4 class="card-title">Recent Purchase Package Members</h4>
										</div>
										<div class="card-body card-dashboard">
											<div class="table-responsive">
												<table class="table table-hover">
													<thead>
														<tr>
															<th>Profile</th>
															<th>Name</th>
															<th>Type</th>
															<th>Price(₹)</th>
															<th>Package(Months)</th>
															<th>Purchase Date</th>
															<th>Exp.Date</th>
															<th style="width: 200px;">Days Left 
																<img src="images/Clock.jpg" alt="Clock" height="35px;" width="60px"></img>
															</th>
															<th>Status</th>
														</tr>
													</thead>
													<tbody>
														<?php
															//$str="select * from package_detail_tbl,member_tbl,package_tbl where member_tbl.member_id=package_detail_tbl.member_id and package_tbl.package_id=package_detail_tbl.package_id ORDER BY package_detail_id desc";
															$str="SELECT * 
																	FROM package_detail_tbl
																	JOIN member_tbl ON member_tbl.member_id = package_detail_tbl.member_id
																	JOIN package_tbl ON package_tbl.package_id = package_detail_tbl.package_id
																	WHERE member_tbl.member_status = 1
																	ORDER BY package_detail_tbl.package_detail_id DESC;";
															$res=mysqli_query($conn,$str);
															
															while($data=mysqli_fetch_array($res))
															{
														?>
															<tr>
																<td><img src="../member_profiles/<?php echo $data['member_image'];?>"height="100px" width="100px"></td>
																<td style="width:18%">
																	<button type="button" style="" id="user" class="btn" data-id="<?php echo $data['member_id'];?>" data-toggle="modal" data-target=".bs-example-modal-lg" onclick="Member_Modal( <?php echo $data['member_id']; ?> )">
																		<i class="bx bxs-info-circle" style="font-size:18px;color:grey"></i> <?php echo ucfirst($data['member_lastname']) . " " . ucfirst($data['member_firstname']); ?>
																	</button>
																</td>
																<td>
																	<?php 
																		if($data['package_name'] == "Gold")
																		{	
																			echo "<b style='color:#bd8937;'>" . ucfirst($data['package_name']) . "</b>"; 
																		}
																		elseif($data['package_name'] == "Silver")
																		{	
																			echo "<b style='color:#8a8585;'>" . ucfirst($data['package_name']) . "</b>"; 
																		}
																		elseif($data['package_name'] == "Platinum")
																		{	
																			echo "<b style='color:brown;'>" . ucfirst($data['package_name']) . "</b>"; 
																		}
																		else
																		{	
																			echo "<b style='color:black;'>" . ucfirst($data['package_name']) . "</b>"; 
																		}	
																	?>
																</td>
																<td><?php echo $data['package_price']; ?></td>
																<td><?php echo $data['package_duration']; ?></td>
																<td><?php echo date("d-M-Y" , strtotime($data['purchase_date'])); ?></td>
																<td><?php echo date("d-M-Y" , strtotime($data['package_exp_date'])); ?></td>
																<td>
																	<?php
																		//Convert to date
																		//$datestr="2022-02-06";//Your date
																		$datestr=$data['package_exp_date'];//Your date
																		$date=strtotime($datestr);//Converted to a PHP date (a second count)

																		//Calculate difference
																		$diff=$date-time();//time returns current time in seconds
																		$days=floor($diff/(60*60*24));//seconds/minute*minutes/hour*hours/day)
																		$hours=round(($diff-$days*60*60*24)/(60*60));


																		$days++;
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
																<td>
																	<?php 
																		if($data['package_detail_status']==1) 
																		{
																			echo '<span class="badge bg-success">Active</span>';
																		} 
																		else
																		{
																			echo '<span class="badge bg-danger">Pendding</span>';
																		}
																	?>
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
							</div>
						</div>
						<!-- End Member Card -->
					</div>
				
					<div class="row">
						<!-- Task Card Starts -->
						<div class="col-lg-12">
							<div class="row">
								<div class="col-12">
									<div class="card widget-todo">
										<div class="card-header border-bottom d-flex justify-content-between align-items-center flex-wrap">
											<h4 class="card-title d-flex mb-25 mb-sm-0">
												<i class='bx bx-check font-medium-5 pl-25 pr-75'></i>Monthly Registered Members
											</h4>
										</div>
										<div class="card-body px-0 py-1">
											<div id="member_container"></div>
											<div class="x_content">
												<div class="col-md-8 col-sm-8 col-xs-12"></div>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Daily Financials Card Starts -->  
					</div>
					
					<div class="row">
						<!-- Task Gender wise -->
						<div class="col-lg-12">
							<div class="x_panel tile  overflow_hidden">
								<div class="x_title">
									<!-- <h2>Top Campaign Performance</h2> -->
									<ul class="nav navbar-right panel_toolbox" style="min-width:0px;">
										<!-- <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li> -->
										<!-- <li><a class="close-link"><i class="fa fa-close"></i></a></li> -->
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div id="gender_container" style="min-width: 310px; height: 400px; max-width: 600px; margin:0 auto"></div>
								</div>
							</div>
						</div>
						<!-- Task Gender wise -->
					</div>	
					<br>
					<div class="row">
						 <div class="col-md-6">
							<div class="x_panel tile  overflow_hidden">
								<div class="x_title">
									<!-- <h2>Top Campaign Performance</h2> -->
									<ul class="nav navbar-right panel_toolbox" style="min-width:0px;">
										<!-- <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li> -->
										<!--<li><a class="close-link"><i class="fa fa-close"></i></a></li> */ -->
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div id="reference_container" style="min-width: 310px; height: 400px; max-width: 600px; margin:0 auto"></div>
								</div>
							</div>
						</div> 
						<!-- Task Card Starts -->
						<div class="col-md-6">
							<div class="x_panel tile  overflow_hidden">
								<div class="x_title">
									<!-- <h2>Top Campaign Performance</h2> -->
									<ul class="nav navbar-right panel_toolbox" style="min-width:0px;">
										<!-- <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li> -->
										<!--<li><a class="close-link"><i class="fa fa-close"></i></a></li> */ -->
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div id="marital_container" style="min-width: 310px; height: 400px; max-width: 600px; margin:0 auto"></div>
								</div>
							</div>
						</div>
					</div>
					<br>
					<div class="row">
						<!-- Chart For Student Reference  -->
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel tile  overflow_hidden">
								<div class="x_title">
									<!-- <h2>Top Campaign Performance</h2> -->
									<ul class="nav navbar-right panel_toolbox" style="min-width:0px;">
										<!-- <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li> -->
										<!--<li><a class="close-link"><i class="fa fa-close"></i></a></li> */ -->
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div id="state_container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel tile  overflow_hidden">
								<div class="x_title">				
									<ul class="nav navbar-right panel_toolbox" style="min-width:0px;">	
										<!--<li><a class="close-link"><i class="fa fa-close"></i></a></li> */ -->
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div id="city1_container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
								</div>
							</div>
						</div>
					</div>	
					<!-- Daily Financials Card Starts -->  
					<br>
					<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel tile  overflow_hidden">
								<div class="x_title">
									<!-- <h2>Top Campaign Performance</h2> -->
								   <ul class="nav navbar-right panel_toolbox" style="min-width:0px;">
										<!-- <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li> -->
										<!--<li><a class="close-link"><i class="fa fa-close"></i></a></li> */ -->
								   </ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div id="community_container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel tile  overflow_hidden">
								<div class="x_title">
									<!-- <h2>Expenditure</h2> -->
									<ul class="nav navbar-right panel_toolbox" style="min-width:0px;">
										<!-- <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li> -->
										<!--<li><a class="close-link"><i class="fa fa-close"></i></a></li> */ -->
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<div id="sub_comm_container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
								</div>
							</div>
						</div>
					</div>
					<br>
				</section>
			</div>
		<!--</div>-->
	</div>
	<!-- END: Content-->
	</body>	
	<!-- END: Body-->

	<!-- BEGIN: Footer-->
	<?php include_once 'footer.php'; ?>
	<!-- END: Footer-->

	<!--Start Monthly Registered Student-->
	<?php     
		$monthly_member = member_get_ByMonth();
		$monthName_member = member_get_ByMonth(); 
		function member_get_ByMonth()
		{
		global $conn;
		$sql = "SELECT COUNT('member_id') as 'number_of_members',extract(month FROM registration_date ) as month 
				FROM `member_tbl` 
				GROUP BY extract(month FROM registration_date)  ORDER by month";
			//echo $sql;
		$members =  mysqli_query($conn,$sql);
		return $members;
		}

		$religion=count_All_religion();
			function count_All_religion()
			{
				global $conn;
				$sql = "SELECT member_religion,count(member_religion) as no_of_reli FROM `member_detail_tbl` 
						group by `member_religion`";
				$religions =  mysqli_query($conn,$sql);
				return $religions;
			}
		
		$gender=count_All_gender();
			function count_All_gender()
			{
				global $conn;
				$sql = "SELECT member_gender,count(member_gender) as no_of_gender FROM `member_tbl` 
						group by `member_gender`";
				$genders =  mysqli_query($conn,$sql);
				return $genders;
			}
			
		$marital=count_All_marital();
			function count_All_marital()
			{
				global $conn;
				$sql = "SELECT marital_Status,count(marital_Status) as no_of_marits FROM `member_detail_tbl` 
						group by `marital_Status`";
				$maritals =  mysqli_query($conn,$sql);
				return $maritals;
			}	

		$community=count_All_community();
			function count_All_community()
			{
				global $conn;
				$sql = "SELECT community_name,count(community_tbl.community_id) as no_of_community
				FROM sub_community_tbl ,member_detail_tbl,community_tbl
				where sub_community_tbl.sub_community_id=member_detail_tbl.member_sub_community_id
				and community_tbl.community_id=sub_community_tbl.community_id
				group by community_tbl.community_id";
									$communities =  mysqli_query($conn,$sql);
				return $communities;
			}	

		$state=count_All_state();
			function count_All_state()
			{
				global $conn;
				$sql = "SELECT state_name,count(state_tbl.state_id) as no_of_state
						FROM city_tbl ,member_tbl,state_tbl
						where city_tbl.city_id=member_tbl.member_city
						and state_tbl.state_id=city_tbl.state_id
						group by state_tbl.state_id";
				$states =  mysqli_query($conn,$sql);
				return $states;
			}	
			
		$subcommunity=count_All_subcommunity();
			function count_All_subcommunity()
			{
				global $conn;
				$sql = "SELECT sub_community_name,count(member_sub_community_id) as no_of_subcomm
						FROM sub_community_tbl ,member_detail_tbl
						where sub_community_tbl.sub_community_id=member_detail_tbl.member_sub_community_id
						group by member_sub_community_id";
				$subcommunities =  mysqli_query($conn,$sql);
				return $subcommunities;
			}	
			
		$city1=count_All_city1();
			function count_All_city1()
			{
				global $conn;
				$sql = "SELECT city_name,count(city_tbl.city_id) as no_of_city
						FROM city_tbl ,member_tbl
						where city_tbl.city_id=member_tbl.member_city
						group by city_tbl.city_id";
				$cities =  mysqli_query($conn,$sql);
				return $cities;
			}
        
        $monthly_order = order_get_ByMonth();
			$monthName_order = order_get_ByMonth(); 
			// login_user_ID=".$_SESSION['Admin_Id']."
			//where login_user_ID=".$_SESSION['Admin_Id']."	
			function order_get_ByMonth()
			{
				global $conn;
				$sql = "SELECT COUNT('member_id') as 'number_of_order',extract(month FROM registration_Date ) as month 
						FROM `member_tbl` 
						GROUP BY extract(month FROM registration_Date)  ORDER by month";
						//echo $sql;
				$order =  mysqli_query($conn,$sql);
				return $order;
			}		
	?>
	<!--End Monthly Registered Student-->
	
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
	
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/highcharts-more.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <script src="assets/js/cards-statistics.js"></script>
	
	<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>  
	<script type="text/javascript" src="https://cdn.canvasjs.com/jquery.canvasjs.min.js"></script>

    <!-- BEGIN: Page JS-->
    <script src="app-assets/js/scripts/pages/dashboard-analytics.min.js"></script>
    <script src="app-assets/js/scripts/cards/widgets.min.js"></script>
    <!-- END: Page JS-->
	
    <script>
		// Monthly Registerd Member  
		var chart = Highcharts.chart('member_container', {

			title: {
				text: 'Monthly Registered Member'
			},

			subtitle: {
				text: 'Plain'
			},

			xAxis: {
			  //categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
			  categories: [<?php while($row1 = mysqli_fetch_array($monthName_member)) { echo "'".date("F", mktime(0, 0, 0, $row1['month']))."',";  } ?>]
			},

			series: [{
				type: 'column',
				colorByPoint: true,
				data: [<?php while($rows = mysqli_fetch_array($monthly_member)) { echo $rows['number_of_members'].","; } ?>],
				showInLegend: false
			}]
		});
                            
        $('#plain').click(function () 
		{
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

		$('#inverted').click(function () 
		{
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

		$('#polar').click(function () 
		{
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
		
		
		// Build the chart for Gender Wise
		Highcharts.chart('gender_container', {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie'
			},
			title: {
				text: 'Gender Report, 2025'
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
				<?php while($row = mysqli_fetch_array($gender))  { ?>
					{
						name: '<?php echo $row['member_gender']?>',
						y: <?php echo $row['no_of_gender']?>
					}, 
				<?php  } ?>
				]
			}]
		});


		// Build the chart Religion Wise
		Highcharts.chart('reference_container', {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie'
			},
			title: {
				text: 'Religion Report, 2025'
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
						name: '<?php echo $row['member_religion']?>',
						y: <?php echo $row['no_of_reli']?>
					}, 
				<?php  } ?>
				]
			}]
		});

		// Build the chart Marital Wise
		Highcharts.chart('marital_container', {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie'
			},
			title: {
				text: 'Marital Report, 2024'
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
			data: [
				<?php while($row = mysqli_fetch_array($marital))  { ?>
				{
					name: '<?php echo $row['marital_Status']?>',
					y: <?php echo $row['no_of_marits']?>
				}, 
					<?php  } ?>
				]
			}]
		});
		
		// Build the chart Community Wise
		Highcharts.chart('community_container', {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie'
			},
			title: {
				text: 'Community Report, 2024'
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
				data: [
					<?php while($row = mysqli_fetch_array($community))  { ?>
					{
					  name: '<?php echo $row['community_name']?>',
					  y: <?php echo $row['no_of_community']?>
					}, 
					<?php  } ?>
				]
			}]
		});
		
		// Build the chart State Wise
		Highcharts.chart('state_container', {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie'
			},
			title: {
				text: 'State Report, 2025'
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
				data: [
					<?php while($row = mysqli_fetch_array($state))  { ?>
					{
					  name: '<?php echo $row['state_name']?>',
					  y: <?php echo $row['no_of_state']?>
					}, 
					<?php  } ?>
				]
			}]
		});
	
		// Build the chart Sub-Community Wise
		Highcharts.chart('sub_comm_container', {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie'
			},
			title: {
				text: 'Sub-Community Report, 2024'
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
				data: [
					<?php while($row = mysqli_fetch_array($subcommunity))  { ?>
					{
					  name: '<?php echo $row['sub_community_name']?>',
					  y: <?php echo $row['no_of_subcomm']?>
					}, 
					<?php  } ?>
				]
			}]
		});
		
		// Build the chart City Wise
		Highcharts.chart('city1_container', {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie'
			},
			title: {
				text: 'City Report, 2025'
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
				data: [
					<?php while($row = mysqli_fetch_array($city1))  { ?>
					{
					  name: '<?php echo $row['city_name']?>',
					  y: <?php echo $row['no_of_city']?>
					}, 
					<?php  } ?>
				]
			}]
		});
	
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

		function Member_Modal(member_id){
			// alert(member_id);
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
	</body>
	<!-- END: Body-->
<!-- /index.html by,  04:42:26 GMT -->
</html>