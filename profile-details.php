<?php include "connection.php"; ?>
<!doctype html>
<html lang="en">


<!-- Dream Class By profile-details.php  [XR&CO'2014], Fri, 14 Feb 2025 06:49:24 GMT -->
<head>
    <title>Vivahmilan</title>
    <!--== META TAGS ==-->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="theme-color" content="#f6af04">
    <meta name="description" content="">
    <meta name="keyword" content="">
    <!--== FAV ICON(BROWSER TAB ICON) ==-->
    <link rel="icon" type="image/png" href="admin/images/icon2.png">
    <!--== CSS FILES ==-->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/style.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
      <![endif]-->
</head>

<body>
    <!-- PRELOADER -->
    <div id="preloader">
        <div class="plod">
            <span class="lod1"><img src="images/loder/1.png" alt="" loading="lazy"></span>
            <span class="lod2"><img src="images/loder/2.png" alt="" loading="lazy"></span>
            <span class="lod3"><img src="images/loder/3.png" alt="" loading="lazy"></span>
        </div>
    </div>
    <div class="pop-bg"></div>
    <!-- END PRELOADER -->

    <!-- SEARCH -->
    <div class="pop-search">
        <span class="ser-clo">+</span>
        <div class="inn">
            <form>
                <input type="text" placeholder="Search here...">
            </form>
            <div class="rel-sear">
                <h4>Top searches:</h4>
                <a href="all-profiles.php">Browse all profiles</a>
                <a href="all-profiles.php">Mens profile</a>
                <a href="all-profiles.php">Female profile</a>
                <a href="all-profiles.php">New profiles</a>
            </div>
        </div>
    </div>
    <!-- END PRELOADER -->

<!-- BEGIN: Header-->
<?php include_once 'header.php';?>
    <!-- END: Header-->
     

    <!-- MOBILE MENU POPUP -->
    <div class="mob-me-all mobile_menu">
        <div class="mob-me-clo"><img src="images/icon/close.svg" alt=""></div>
        <div class="mv-bus">
            <h4><i class="fa fa-globe" aria-hidden="true"></i> EXPLORE CATEGORY</h4>
            <ul>
                <li><a href="all-profiles.php">Browse profiles</a></li>
                <li><a href="wedding.php">Wedding page</a></li>
                <li><a href="services.php">All Services</a></li>
                <li><a href="plans.php">Join Now</a></li>
            </ul>
            <h4><i class="fa fa-align-center" aria-hidden="true"></i> All Pages</h4>
            <ul>
                <li><a href="all-profiles.php">All profiles</a></li>
                <li><a href="profile-details.php">Profile details</a></li>
                <li><a href="wedding.php">Wedding</a></li>
                <li><a href="wedding-video.php">Wedding video</a></li>
                <li><a href="services.php">Our Services</a></li>
                <li><a href="plans.php">Pricing plans</a></li>
                <li><a href="login.php">Login</a></li>
                <li><a href="sign-up.php">Sign-up</a></li>
                <li><a href="photo-gallery.php">Photo gallery</a></li>
                <li><a href="photo-gallery-1.php">Photo gallery 1</a></li>
                <li><a href="contact.php">Contact</a></li>
                <li><a href="about.php">About</a></li>
                <li><a href="blog.php">Blog</a></li>
                <li><a href="blog-detail.php">Blog detail</a></li>
                <li><a href="enquiry.php">Ask your doubts</a></li>
                <li><a href="make-reservation.php">Make Reservation</a></li>
                <li><a href="faq.php">FAQ</a></li>
                <li><a href="coming-soon.php" target="_blank">Coming soon</a></li>
                <li><a href="404.php">404</a></li>
            </ul>
            <div class="menu-pop-help">
                <h4>Support Team</h4>
                <div class="user-pro">
                    <img src="images/profiles/1.jpg" alt="" loading="lazy">
                </div>
                <div class="user-bio">
                    <h5>Ashley emyy</h5>
                    <span>Senior personal advisor</span>
                    <a href="enquiry.php" class="btn btn-primary btn-sm">Ask your doubts</a>
                </div>
            </div>
            <div class="menu-pop-soci">
                <ul>
                    <li><a href="#!"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                    <li><a href="#!"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                    <li><a href="#!"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li>
                    <li><a href="#!"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                    <li><a href="#!"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                    <li><a href="#!"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                </ul>
            </div>
            <div class="late-news">
                <h4>Latest news</h4>
                <ul>
                    <li>
                        <div class="rel-pro-img">
                            <img src="images/couples/1.jpg" alt="" loading="lazy">
                        </div>
                        <div class="rel-pro-con">
                            <h5>Long established fact that a reader distracted</h5>
                            <span class="ic-date">12 Dec 2023</span>
                        </div>
                        <a href="blog-detail.php" class="fclick"></a>
                    </li>
                    <li>
                        <div class="rel-pro-img">
                            <img src="images/couples/3.jpg" alt="" loading="lazy">
                        </div>
                        <div class="rel-pro-con">
                            <h5>Long established fact that a reader distracted</h5>
                            <span class="ic-date">12 Dec 2023</span>
                        </div>
                        <a href="blog-detail.php" class="fclick"></a>
                    </li>
                    <li>
                        <div class="rel-pro-img">
                            <img src="images/couples/4.jpg" alt="" loading="lazy">
                        </div>
                        <div class="rel-pro-con">
                            <h5>Long established fact that a reader distracted</h5>
                            <span class="ic-date">12 Dec 2023</span>
                        </div>
                        <a href="blog-detail.php" class="fclick"></a>
                    </li>
                </ul>
            </div>
            <div class="prof-rhs-help">
                <div class="inn">
                    <h3>Tell us your Needs</h3>
                    <p>Tell us what kind of service you are looking for.</p>
                    <a href="enquiry.php">Register for free</a>
                </div>
            </div>
        </div>
    </div>
    <!-- END MOBILE MENU POPUP -->

    <!-- MOBILE USER PROFILE MENU POPUP -->
     
    <div class="mob-me-all dashbord_menu">
        <div class="mob-me-clo"><img src="images/icon/close.svg" alt=""></div>
        <div class="mv-bus">
            <div class="head-pro">
                <img src="images/profiles/.jpg" alt="" loading="lazy">
                <b>user profile</b><br>
                <h4>Ashley emyy</h4>
            </div>
            <ul>
                <li><a href="login.php">Login</a></li>
                <li><a href="sign-up.php">Sign-up</a></li>
                <li><a href="plans.php">Pricing plans</a></li>
                <li><a href="all-profiles.php">Browse profiles</a></li>
            </ul>
        </div>
    </div>
    <!-- END USER PROFILE MENU POPUP -->


    <!-- PROFILE -->
     <?php $member_id= $_GET['member_id'];

    $str="select * from tbl_send_request, tbl_member, tbl_member_detail, tbl_member_qualification,
             cities, tbl_lifestyle, tbl_community where tbl_member.Member_ID = tbl_send_request.Member_ID and tbl_member_detail.Member_ID = tbl_send_request.Member_ID 
             and tbl_member_qualification.Member_Detail_ID = tbl_member_detail.Member_Detail_ID and tbl_lifestyle.Member_Detail_ID = tbl_member_detail.Member_Detail_ID
             and tbl_member.Member_City = cities.id and tbl_send_request.member_id='".$member_id."'";
        $display= mysqli_query($conn, $str);
        while ($row=mysqli_fetch_array($display)){ ?>
    
    <section>
        <div class="profi-pg profi-ban">
       
            <div class="">
                <div class="">
                  
                    <div class="profile">
                        <div class="pg-pro-big-im">
                            <div class="s1">
                                <img src="member_profiles/<?php echo ucFirst($row['Member_Image']);?>" loading="lazy" class="pro" alt="">
                            </div>
                            <div class="s3">
                                <a href="#!" class="cta fol cta-chat">Chat now</a>
                                <span class="cta cta-sendint" data-toggle="modal" data-target="#sendInter">Send
                                    interest</span>
                            </div>
                        </div>
                    </div>
                    <div class="profi-pg profi-bio">
                        
                        <div class="lhs">
                            <div class="pro-pg-intro">
                                <h1><?php echo ucFirst($row['Member_Firstname']);?> <?php echo ucFirst($row['Member_Lastname']);?></h1>
                                <div class="pro-info-status">
                                    <span class="stat-1"><b>100</b> viewers</span>
                                    <span class="stat-2"><b>Available</b> online</span>
                                </div>
                                <ul>
                                    <li>
                                        <div>
                                            <img src="images/icon/pro-city.png" loading="lazy" alt="">
                                            <span>City:<strong><?php echo ucFirst($row['name']);?></strong></span>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <img src="images/icon/pro-age.png" loading="lazy" alt="">
                                            <span>Age: <strong><?php echo ucFirst($row['Member_Age']);?></strong></span>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <img src="images/icon/pro-city.png" loading="lazy" alt="">
                                            <span>Height: <strong><?php echo ucFirst($row['Member_Height']);?></strong></span>
                                        </div>
                                    </li>
                                    <li>
                                        <div>
                                            <img src="images/icon/pro-city.png" loading="lazy" alt="">
                                            <span>Job:  <strong><?php echo ucFirst($row['Member_Occupation']);?></strong></span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- PROFILE ABOUT -->
                            <div class="pr-bio-c pr-bio-abo">
                                <h3>About</h3>
                                <p><?php echo $row['Member_Description']; ?></p>
                            </div>
                            <!-- END PROFILE ABOUT -->
                            <!-- PROFILE ABOUT -->
                            <div class="pr-bio-c pr-bio-gal" id="gallery">
                                <h3>Photo gallery</h3>
                                <div id="image-gallery">
                                    <div class="pro-gal-imag">
                                        <div class="img-wrapper">
                                            <a href="#!"><img src="images/profiles/1.jpg" class="img-responsive" alt=""></a>
                                            <div class="img-overlay"><i class="fa fa-arrows-alt" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pro-gal-imag">
                                        <div class="img-wrapper">
                                            <a href="#!"><img src="images/profiles/6.jpg" class="img-responsive" alt=""></a>
                                            <div class="img-overlay"><i class="fa fa-arrows-alt" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pro-gal-imag">
                                        <div class="img-wrapper">
                                            <a href="#!"><img src="images/profiles/14.jpg" class="img-responsive" alt=""></a>
                                            <div class="img-overlay"><i class="fa fa-arrows-alt" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END PROFILE ABOUT -->
                            <!-- PROFILE ABOUT -->
                            <div class="pr-bio-c pr-bio-conta">
                                <h3>Contact info</h3>
                                <ul>
                                    <li><span><i class="fa fa-mobile"
                                                aria-hidden="true"></i><b>Phone:</b><?php echo ucFirst($row['Member_Contact']);?></span></li>
                                    <li><span><i class="fa fa-envelope-o"
                                                aria-hidden="true"></i><b>Email:</b><?php echo ucFirst($row['Member_Email']);?></span>
                                    </li>
                                    <li><span><i class="fa fa fa-map-marker" aria-hidden="true"></i><b>Address: </b>
                                    <?php echo ucFirst($row['Residential_Status']);?></span></li>
                                </ul>
                            </div>
                            <!-- END PROFILE ABOUT -->

                            <!-- PROFILE ABOUT -->
                             <div class="pr-bio-c pr-bio-info">
                                <h3>Personal information</h3>
                            </div>				    			
								<div class="db">
								<div class="container">
								<div class="row">
								<div class="col-sm-12 col-md-12 col-lg-12">
								<div class="row">
								<div class="col-md-12 db-sec-com">
								<!--<h2 class="db-tit">Interest request</h2>-->
								<div class="db-pro-stat" style="margin-top:-40px;">
								<div class="dropdown">
									<button type="button" class="btn btn-outline-secondary" data-bs-toggle="dropdown">
										<i class="fa fa-ellipsis-h" aria-hidden="true"></i>
									</button>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="#">Edit profile</a></li>
										<li><a class="dropdown-item" href="#">View profile</a></li>
										<li><a class="dropdown-item" href="#">Plan change</a></li>
										<li><a class="dropdown-item" href="#">Download invoice now</a></li>
									</ul>
								</div>
								<div class="db-inte-main">
									<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item">
									<a class="nav-link active" data-bs-toggle="tab" href="#home">About Myself</a>
									</li>
									<li class="nav-item">
									<a class="nav-link" data-bs-toggle="tab" href="#menu1">Education Details</a>
									</li>
									<li class="nav-item">
									<a class="nav-link" data-bs-toggle="tab" href="#menu2">Partener Preferences</a>
									</li>
									</ul>
								<!-- Tab panes -->
								<!-- Tab panes -->
								<div class="tab-content">
								<div id="home" class="container tab-pane active"><br>
								<div class="db-inte-prof-list">
								<ul>	
								<li>
								<div class="basic_1">
								<div class="col-md-6 basic_1-left">
									<table class="table_working_hours">
										<tbody>
											<tr class="opened_1">
												<td class="day_label">Name :</td>
												<td class="day_value"><?php echo ucfirst($row['Member_Firstname']); ?></td>
											</tr>
											<tr class="opened_1">
												<td class="day_label">Age :</td>
												<td class="day_value"><?php echo ucfirst($row['Member_Age']); ?></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Body Type :</td>
												<td class="day_value"><?php echo ucfirst($row['Member_Body_Type']); ?></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Marital Status :</td>
												<td class="day_value"><?php echo ucfirst($row['Marital_Status']); ?></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Height :</td>
												<td class="day_value"><?php echo ucfirst($row['Member_Height'])."ft"; ?></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Contact No. :</td>
												<td class="day_value closed"><span><?php echo ucfirst($row['Member_Contact']); ?></span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Profile Created by :</td>
												<td class="day_value closed"><span><?php echo ucfirst($row['Member_Profile_For']); ?></span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Drink :</td>
												<td class="day_value closed"><span><?php echo ucfirst($row['Drinking_Habbits']); ?></span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-md-6 basic_1-left">
									<table class="table_working_hours">
										<tbody>
											<tr class="opened">
												<td class="day_label">Last Name :</td>
												<td class="day_value"><?php echo ucfirst($row['Member_Lastname']); ?></td>
											</tr>

											<tr class="opened">
												<td class="day_label">Language Known :</td>
												<td class="day_value"><?php echo ucfirst($row['Languages_Known']); ?></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Complexion :</td>
												<td class="day_value"><?php echo ucfirst($row['Member_Complexion']); ?></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Weight :</td>
												<td class="day_value"><?php echo ucfirst($row['Member_Weight'])." kg"; ?></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Blood Group :</td>
												<td class="day_value"><?php echo ucfirst($row['BloodGroup']); ?></td>
											</tr>
											<tr class="closed">
												<td class="day_label">Diet :</td>
												<td class="day_value closed"><span><?php echo ucfirst($row['Member_Diet']); ?></span></td>
											</tr>
											<tr class="closed">
												<td class="day_label">Smoke :</td>
												<td class="day_value closed"><span><?php echo ucfirst($row['Smoking_Habbits']); ?></span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="clearfix"> </div>
								</div><br><br>
								<div class="basic_1">
								<h3>Religious / Social & Astro Background</h3>
								<div class="col-md-6 basic_1-left">
									<table class="table_working_hours">
										<tbody>
											<tr class="opened">
												<td class="day_label">Birth Place :</td>
												<td class="day_value"><?php echo ucfirst($row['Member_Birthplace']); ?></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Caste :</td>
												<td class="day_value"><?php echo ucfirst($row['Drinking_Habbits']); ?></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Date of Birth :</td>
												<td class="day_value closed"><span><?php echo date("d-M-Y" , strtotime($row['Member_DOB'])); ?></span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Place of Birth :</td>
												<td class="day_value closed"><span><?php echo ucfirst($row['Member_Birthplace']); ?></span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-md-6 basic_1-left">
									<table class="table_working_hours">
										<tbody>
										<tr class="opened_1">
											<td class="day_label">Religion :</td>
											<td class="day_value"><?php echo ucfirst($row['Member_Religion']); ?></td>
										</tr>
										<tr class="opened">
											<td class="day_label">Sub Caste :</td>
											<td class="day_value"><?php echo ucfirst($row['Member_Sub_Community_ID']); ?></td>
										</tr>
										<tr class="opened">
											<td class="day_label">Rashi :</td>
											<td class="day_value"><?php echo ucfirst($row['Member_Rashi']); ?></td>
										</tr>
										</tbody>
									</table>
								</div>
								<div class="clearfix"> </div>
								</div>
								</li>

								</ul>
								</div>
								</div>
								<br>
								<div id="menu1" class="container tab-pane fade"><br>
								<div class="db-inte-prof-list">
								<ul>
								<li>
								<div class="basic_3">
								<div class="basic_1 basic_2">
									<!-- <h3>Basics</h3> -->
									<div class="col-md-6 basic_1-left">
										<table class="table_working_hours">
											<tbody>
												<tr class="opened">
												<td class="day_label">Education   :</td>
												<td class="day_value"><?php echo ucfirst($row['Member_Qualification']); ?></td>
												</tr>
												<tr class="opened">
												<td class="day_label">Education Detail :</td>
												<td class="day_value"><?php echo ucfirst($row['Member_Designation']); ?></td>
												</tr>
												<tr class="opened">
												<td class="day_label">Occupation Detail :</td>
												<td class="day_value closed"><span><?php echo ucfirst($row['Member_Occupation']); ?></span></td>
												</tr>
												<tr class="opened">
												<td class="day_label">Income :</td>
												<td class="day_value closed"><span>Rs.<?php echo ucfirst($row['Member_Income']); ?></span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								</div>
								</li>
								</ul>
								</div>
								</div>
								<div id="menu2" class="container tab-pane fade"><br>
								<div class="db-inte-prof-list">
								<ul>
								<li>
								<div class="basic_1 basic_2">
								<div class="basic_1-left">
								<table class="table_working_hours">
								<tbody>
									<tr class="opened">
										<td class="day_label">Age   :</td>
										<td class="day_value"><?php echo ucfirst($row['Member_Age']); ?></td>
									</tr>
									<tr class="opened">
										<td class="day_label">Marital Status:</td>
										<td class="day_value"><?php echo ucfirst($row['Marital_Status']); ?></td>
									</tr>
									<tr class="opened">
										<td class="day_label">Body Type :</td>
										<td class="day_value closed"><span><?php echo ucfirst($row['Member_Body_Type']); ?></span></td>
									</tr>
									<tr class="opened">
										<td class="day_label">Complexion :</td>
										<td class="day_value closed"><span><?php echo ucfirst($row['Member_Complexion']); ?></span></td>
									</tr>
									<tr class="opened">
										<td class="day_label">Diet :</td>
										<td class="day_value closed"><span><?php echo ucfirst($row['Member_Diet']); ?></span></td>
									</tr>

									<tr class="opened">
										<td class="day_label">Religion :</td>
										<td class="day_value closed"><span><?php echo ucfirst($row['Member_Religion']); ?></span></td>
									</tr>
									<tr class="opened">
										<td class="day_label">Community :</td>
										<td class="day_value closed"><span><?php echo ucfirst($row['Community_Name']); ?></span></td>
									</tr>
									<tr class="opened">
										<td class="day_label">Mother Tongue :</td>
										<td class="day_value closed"><span>Doesn't matter</span></td>
									</tr>
									<tr class="opened">
										<td class="day_label">Education :</td>
										<td class="day_value closed"><span><?php echo ucfirst($row['Member_Qualification']); ?></span></td>
									</tr>
									<tr class="opened">
										<td class="day_label">Occupation :</td>
										<td class="day_value closed"><span><?php echo ucfirst($row['Member_Occupation']); ?></span></td>
									</tr>
									<tr class="opened">
										<td class="day_label">Country of Residence :</td>
										<td class="day_value closed"><span>Doesn't matter</span></td>
									</tr>
									<tr class="opened">
										<td class="day_label">State :</td>
										<td class="day_value closed"><span><?php echo ucfirst($row['name']); ?></span></td>
									</tr>
									<tr class="opened">
										<td class="day_label">Residency Status :</td>
										<td class="day_value closed"><span><?php echo ucfirst($row['Residential_Status']); ?></span></td>
									</tr>
								</tbody>
								</table>
								</div>
								</div>
								</li>
								</ul>
								</div>
								</div>
								</div>
								</div>
								</div>
								</div>
								</div>
								</div>
								</div>
								</div>
							</div>	
                            <!-- END PROFILE ABOUT -->
                           







                            <!-- PROFILE ABOUT -->
                            <div class="pr-bio-c pr-bio-hob">
                                <h3>Hobbies</h3>
                                <ul>
                                    <li><span> <?php echo ucFirst($row['Hobbies_Intrest']);?></span></li>
                                    
                                </ul>
                            </div>
                            <!-- END PROFILE ABOUT -->
                            <!-- PROFILE ABOUT -->
                            <div class="pr-bio-c menu-pop-soci pr-bio-soc">
                                <h3>Social media</h3>
                                <ul>
                                    <li><a href="#!"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#!"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="#!"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li>
                                    <li><a href="#!"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                    <li><a href="#!"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                                    <li><a href="#!"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                            <!-- END PROFILE ABOUT -->


                        </div>

                        <!-- PROFILE lHS -->
                        <div class="rhs">
                            <!-- HELP BOX -->
                            <div class="prof-rhs-help">
                                <div class="inn">
                                    <h3>Tell us your Needs</h3>
                                    <p>Tell us what kind of service or experts you are looking.</p>
                                    <a href="sign-up.php">Register for free</a>
                                </div>
                            </div>
                            <!-- END HELP BOX -->
                            <!-- RELATED PROFILES -->
                            <div class="slid-inn pr-bio-c wedd-rel-pro">
                                <h3>Related profiles</h3>
                                <ul class="slider3">
                                    <li>
                                        <div class="wedd-rel-box">
                                            <div class="wedd-rel-img">
                                                <img src="images/profiles/1.jpg" alt="">
                                                <span class="badge badge-success">21 Years old</span>
                                            </div>
                                            <div class="wedd-rel-con">
                                                <h5>Christine</h5>
                                                <span>City: <b>New York City</b></span>
                                            </div>
                                            <a href="profile-details.php" class="fclick"></a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="wedd-rel-box">
                                            <div class="wedd-rel-img">
                                                <img src="images/profiles/2.jpg" alt="">
                                                <span class="badge badge-success">21 Years old</span>
                                            </div>
                                            <div class="wedd-rel-con">
                                                <h5>Christine</h5>
                                                <span>City: <b>New York City</b></span>
                                            </div>
                                            <a href="profile-details.php" class="fclick"></a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="wedd-rel-box">
                                            <div class="wedd-rel-img">
                                                <img src="images/profiles/3.jpg" alt="">
                                                <span class="badge badge-success">21 Years old</span>
                                            </div>
                                            <div class="wedd-rel-con">
                                                <h5>Christine</h5>
                                                <span>City: <b>New York City</b></span>
                                            </div>
                                            <a href="profile-details.php" class="fclick"></a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="wedd-rel-box">
                                            <div class="wedd-rel-img">
                                                <img src="images/profiles/4.jpg" alt="">
                                                <span class="badge badge-success">21 Years old</span>
                                            </div>
                                            <div class="wedd-rel-con">
                                                <h5>Christine</h5>
                                                <span>City: <b>New York City</b></span>
                                            </div>
                                            <a href="profile-details.php" class="fclick"></a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="wedd-rel-box">
                                            <div class="wedd-rel-img">
                                                <img src="images/profiles/6.jpg" alt="">
                                                <span class="badge badge-success">21 Years old</span>
                                            </div>
                                            <div class="wedd-rel-con">
                                                <h5>Christine</h5>
                                                <span>City: <b>New York City</b></span>
                                            </div>
                                            <a href="profile-details.php" class="fclick"></a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- END RELATED PROFILES -->
                        </div>
                        <!-- END PROFILE lHS -->
                    </div>
                
                </div>
            </div>
            
        </div>
        <?php }?>
    </section>
    
    <!-- END PROFILE -->

    <!-- INTEREST POPUP -->
    <div class="modal fade" id="sendInter">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title seninter-tit">Send interest to <span class="intename">Jolia</span></h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body seninter">
                    <div class="lhs">
                        <img src="images/profiles/1.jpg" alt="" class="intephoto1">
                    </div>
                    <div class="rhs">
                        <h4><span class="intename1">Jolia</span> Can able to view the below details</h4>
                        <ul>
                            <li>
                                <div class="chbox">
                                    <input type="checkbox" id="pro_about" checked="">
                                    <label for="pro_about">About section</label>
                                </div>
                            </li>
                            <li>
                                <div class="chbox">
                                    <input type="checkbox" id="pro_photo">
                                    <label for="pro_photo">Photo gallery</label>
                                </div>
                            </li>
                            <li>
                                <div class="chbox">
                                    <input type="checkbox" id="pro_contact">
                                    <label for="pro_contact">Contact info</label>
                                </div>
                            </li>
                            <li>
                                <div class="chbox">
                                    <input type="checkbox" id="pro_person">
                                    <label for="pro_person">Personal info</label>
                                </div>
                            </li>
                            <li>
                                <div class="chbox">
                                    <input type="checkbox" id="pro_hobbi">
                                    <label for="pro_hobbi">Hobbies</label>
                                </div>
                            </li>
                            <li>
                                <div class="chbox">
                                    <input type="checkbox" id="pro_social">
                                    <label for="pro_social">Social media</label>
                                </div>
                            </li>
                        </ul>
                        <div class="form-floating">
                            <textarea class="form-control" id="comment" name="text"
                                placeholder="Comment goes here"></textarea>
                            <label for="comment">Write some message to <span class="intename"></span></label>
                        </div>
                    </div>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Send interest</button>
                    <button type="button" class="btn btn-outline-danger" data-dismiss="modal">Cancel</button>
                </div>

            </div>
        </div>
    </div>
    <!-- END INTEREST POPUP -->

    <!--- CHAT CONVERSATION BOX START --->
    <div class="chatbox">
        <span class="comm-msg-pop-clo"><i class="fa fa-times" aria-hidden="true"></i></span>

        <div class="inn">
            <form name="new_chat_form" method="post">
                <div class="s1">
                    <img src="images/profiles/2.jpg" class="intephoto2" alt="">
                    <h4><b>Angelina Jolie</b>,</h4>
                    <span class="avlsta avilyes">Available online</span>
                </div>
                <div class="s2 chat-box-messages">
                    <span class="chat-wel">Start a new chat!!! now</span>
                    <div class="chat-con">
                        <div class="chat-lhs">Hi</div>
                        <div class="chat-rhs">Hi</div>
                    </div>
                    <!--<span>Start A New Chat!!! Now</span>-->
                </div>
                <div class="s3">
                    <input type="text" name="chat_message" placeholder="Type a message here.." required="">
                    <button id="chat_send1" name="chat_send" type="submit">Send <i class="fa fa-paper-plane-o"
                            aria-hidden="true"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
    <!--- END --->

    <!-- BEGIN: Footer-->
 <?php include_once 'footer.php'; ?>
    <!-- END: Footer-->
    <!-- COPYRIGHTS -->
    <section>
        <div class="cr">
            <div class="container">
                <div class="row">
                    <p>Copyright © <span id="cry">2017-2020</span> <a href="#!" target="_blank">Company.com</a> All
                        rights reserved.</p>
                </div>
            </div>
        </div>
    </section>
    <!-- END -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/select-opt.js"></script>
    <script src="js/slick.js"></script>
    <script src="js/gallery.js"></script>
    <script src="js/custom.js"></script>
</body>


<!-- Dream Class By profile-details.php  [XR&CO'2014], Fri, 14 Feb 2025 06:49:26 GMT -->
</html>