<?php
    include("connection.php");
?>
<!doctype html>
<html lang="en">


<!-- Dream Class By user-interests.php  [XR&CO'2014], Fri, 14 Feb 2025 06:49:32 GMT -->
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
                <img src="images/profiles/1.jpg" alt="" loading="lazy">
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

    <!-- LOGIN -->
    <section>
        <div class="db">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-lg-3">
                        <div class="db-nav">
                            <div class="db-nav-pro"><img src="images/profiles/12.jpg" class="img-fluid" alt=""></div>
                            <div class="db-nav-list">
                                <ul>
                                    <li><a href="user-dashboard.php"><i class="fa fa-tachometer" aria-hidden="true"></i>Dashboard</a></li>
                                    <li><a href="user-profile.php"><i class="fa fa-male" aria-hidden="true"></i>Profile</a></li>
                                    <li><a href="user-interests.php" class="act"><i class="fa fa-handshake-o" aria-hidden="true"></i>Interests</a></li>
                                    <li><a href="user-chat.php"><i class="fa fa-commenting-o" aria-hidden="true"></i>Chat list</a></li>
                                    <li><a href="user-plan.php"><i class="fa fa-money" aria-hidden="true"></i>Plan</a></li>
                                    <li><a href="user-setting.php"><i class="fa fa-cog" aria-hidden="true"></i>Setting</a></li>
                                    <li><a href="#"><i class="fa fa-sign-out" aria-hidden="true"></i>Log out</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-lg-9">
                        <div class="row">
                            <div class="col-md-12 db-sec-com">
                                <h2 class="db-tit">Interest request</h2>
                                <div class="db-pro-stat">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-outline-secondary" data-bs-toggle="dropdown">
                                            <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                        </button>
                                        <ul class="dropdown-menu">
                                          <li><a class="dropdown-item" href="#">Edid profile</a></li>
                                          <li><a class="dropdown-item" href="#">View profile</a></li>
                                          <li><a class="dropdown-item" href="#">Plan change</a></li>
                                          <li><a class="dropdown-item" href="#">Download invoice now</a></li>
                                        </ul>
                                    </div>
                                    <div class="db-inte-main">
                                       
                                          <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item">
                                              <a class="nav-link active" data-bs-toggle="tab" href="#home">New requests</a>
                                            </li>
                                            <li class="nav-item">
                                              <a class="nav-link" data-bs-toggle="tab" href="#menu1">Accept request</a>
                                            </li>
                                            <li class="nav-item">
                                              <a class="nav-link" data-bs-toggle="tab" href="#menu2">Denay request</a>
                                            </li>
                                          </ul>
                                          <!-- Tab panes -->
  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
      <div class="db-inte-prof-list">
            <ul>
            <?php 
                          $query="select * from tbl_send_request, tbl_member, tbl_member_detail, tbl_member_qualification, cities where tbl_member.Member_ID = tbl_send_request.Member_ID and tbl_member_detail.Member_ID = tbl_send_request.Member_ID and tbl_member_qualification.Member_Detail_ID = tbl_member_detail.Member_Detail_ID and tbl_member.Member_City = cities.id";
                          $display= mysqli_query($conn, $query) or die(mysqli_error($conn));
                          while ($row=mysqli_fetch_array($display)){
            ?>
                <li>
               
                    <div class="db-int-pro-1"> <img src="member_profiles/<?php echo ucFirst($row['Member_Image']);?>"> <span class="badge bg-primary user-pla-pat">Platinum user</span></div>
                    <div class="db-int-pro-2">
                        <h5><?php echo ucFirst($row['Member_Firstname']);?> <?php echo ucFirst($row['Member_Lastname']);?></h5> 
                        <ol class="poi">
                            <li>City: <?php echo ucFirst($row['name']);?></li>
                            <li>Age: <?php echo ucFirst($row['Member_Age']);?></li>
                            <li>Height: <?php echo ucFirst($row['Member_Height']);?></li>
                            <li>Job: <?php echo ucFirst($row['Member_Occupation']);?></li>
                        </ol>
                        <ol class="poi poi-date">
                            <li><?php echo date("d-M-Y", strtotime($row['Registration_Date']))?></li>
                        </ol>
                        <a href="profile-details.php?member_id=<?php echo $row['Member_ID']; ?>" class="cta-5" target="_blank">View full profile</a>
                    </div>
                    <div class="db-int-pro-3">
                        <button type="button" class="btn btn-success btn-sm">Accept</button>
                        <button type="button" class="btn btn-outline-danger btn-sm">Denay</button>
                    </div>
                   
                </li>
                <?php }  ?>
                 
                <!--
                <li>
                    <div class="db-int-pro-1"> <img src="images/profiles/men3.jpg" alt=""> <span class="badge bg-primary user-pla-free">Free user</span></div>
                    <div class="db-int-pro-2">
                        <h5>John Smith</h5> 
                        <ol class="poi">
                            <li>City: <strong>Illunois</strong></li>
                            <li>Age: <strong>21</strong></li>
                            <li>Height: <strong>5.7</strong></li>
                            <li>Job: <strong>Working</strong></li>
                        </ol>
                        <ol class="poi poi-date">
                            <li>Request on: 10:30 AM, 18 August 2024</li>
                        </ol>
                        <a href="profile-details.php" class="cta-5" target="_blank">View full profile</a>
                    </div>
                    <div class="db-int-pro-3">
                        <button type="button" class="btn btn-success btn-sm">Accept</button>
                        <button type="button" class="btn btn-outline-danger btn-sm">Denay</button>
                    </div>
                </li>
                <li>
                    <div class="db-int-pro-1"> <img src="images/profiles/men4.jpg" alt=""> </div>
                    <div class="db-int-pro-2">
                        <h5>John Smith</h5> 
                        <ol class="poi">
                            <li>City: <strong>Illunois</strong></li>
                            <li>Age: <strong>21</strong></li>
                            <li>Height: <strong>5.7</strong></li>
                            <li>Job: <strong>Working</strong></li>
                        </ol>
                        <ol class="poi poi-date">
                            <li>Request on: 10:30 AM, 18 August 2024</li>
                        </ol>
                        <a href="profile-details.php" class="cta-5" target="_blank">View full profile</a>
                    </div>
                    <div class="db-int-pro-3">
                        <button type="button" class="btn btn-success btn-sm">Accept</button>
                        <button type="button" class="btn btn-outline-danger btn-sm">Denay</button>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div id="menu1" class="container tab-pane fade"><br>
        <div class="db-inte-prof-list">
            <ul>
                <li>
                    <div class="db-int-pro-1"> <img src="images/profiles/men5.jpg" alt=""> </div>
                    <div class="db-int-pro-2">
                        <h5>John Smith</h5> 
                        <ol class="poi">
                            <li>City: <strong>Illunois</strong></li>
                            <li>Age: <strong>21</strong></li>
                            <li>Height: <strong>5.7</strong></li>
                            <li>Job: <strong>Working</strong></li>
                        </ol>
                        <ol class="poi poi-date">
                            <li>Request on: 10:30 AM, 18 August 2024</li>
                            <li>Accept on: 3:000 PM, 21 August 2024</li>
                        </ol> 
                        <a href="profile-details.php" class="cta-5" target="_blank">View full profile</a>
                    </div>
                    <div class="db-int-pro-3">
                        <button type="button" class="btn btn-outline-danger btn-sm">Denay</button>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div id="menu2" class="container tab-pane fade"><br>
        <div class="db-inte-prof-list">
            <ul>
                <li>
                    <div class="db-int-pro-1"> <img src="images/profiles/men1.jpg" alt=""> </div>
                    <div class="db-int-pro-2">
                        <h5>John Smith</h5> 
                        <ol class="poi">
                            <li>City: <strong>Illunois</strong></li>
                            <li>Age: <strong>21</strong></li>
                            <li>Height: <strong>5.7</strong></li>
                            <li>Job: <strong>Working</strong></li>
                        </ol>
                        <ol class="poi poi-date">
                            <li>Request on: 10:30 AM, 18 August 2024</li>
                            <li>Denay on: 3:000 PM, 21 August 2024</li>
                        </ol>
                        <a href="profile-details.php" class="cta-5" target="_blank">View full profile</a>
                    </div>
                    <div class="db-int-pro-3">
                        <button type="button" class="btn btn-success btn-sm">Accept</button>
                    </div>
                </li>
                -->
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
    </section>
    <!-- END -->

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
    <script src="js/custom.js"></script>
</body>


<!-- Dream Class By user-interests.php  [XR&CO'2014], Fri, 14 Feb 2025 06:49:32 GMT -->
</html>