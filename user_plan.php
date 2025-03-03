<?php
  include_once 'connection.php'; 
?>
<!doctype html>
<html lang="en">


<!-- Dream Class By user-plan.html  [XR&CO'2014], Fri, 14 Feb 2025 06:49:32 GMT -->
<head>
    <title>Wedding Matrimony</title>
    <!--== META TAGS ==-->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="theme-color" content="#f6af04">
    <meta name="description" content="">
    <meta name="keyword" content="">
    <!--== FAV ICON(BROWSER TAB ICON) ==-->
    <link rel="shortcut icon" href="images/fav.ico" type="image/x-icon">
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
	<!-- END PRELOADER -->

	<!-- SEARCH -->
	<!-- END PRELOADER -->

	<!-- HEADER & MENU -->
	<?php
		include_once 'header.php';
	?>
	<!-- END HEADER & MENU -->

	<!-- HEADER & MENU -->
	<!-- END HEADER & MENU -->

	<!-- HEADER & MENU -->
	<?php
		include_once 'menu.php';
	?>
	<!-- END MOBILE MENU POPUP -->

	<!-- MOBILE USER PROFILE MENU POPUP -->
	<!-- END USER PROFILE MENU POPUP-->

    <!-- LOGIN -->
    <section>
        <div class="db">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-lg-3">
                        <div class="db-nav">
                            <div class="db-nav-pro"><img src="images/profiles/12.jpg" class="img-fluid" alt=""></div>
                            <div class="db-nav-list">
                                <?php
									   include_once 'dashboard_detail.php';
									?>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-lg-9">
                        <div class="row">
                            <div class="col-md-4 db-sec-com">
                                <h2 class="db-tit">Plan details</h2>
                                <div class="db-pro-stat">
                                    <h6 class="tit-top-curv">Current plan</h6>
                                    <div class="db-plan-card">
                                        <img src="images/icon/plan.png" alt="">
                                    </div>
                                    <div class="db-plan-detil">
									<?php
									      if(isset($_SESSION["user_id"]))
										  {
											  $mid=$_SESSION["user_id"];
										  }
									      $str="select * from package_tbl,package_detail_tbl where package_tbl.package_id=package_detail_tbl.package_id and member_id='".$mid."'";
										  $data=mysqli_query($conn,$str);
										  while($row=mysqli_fetch_array($data))
										  {
									?>
                                        <ul>
                                            <li>Plan name: <strong><?php echo $row['package_name'];?></strong></li>
                                            <li>Validity: <strong><?php echo $row['package_duration'];?></strong></li>
                                            <li>Valid till <strong><?php echo date("d-M-Y" , strtotime($row['package_exp_date']));?></strong></li>
                                            <li><a href="#" class="cta-3">Upgrade now</a></li>
                                        </ul>
										  <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8 db-sec-com">
                                <h2 class="db-tit">All invoice</h2>
                                <div class="db-invoice">
                                    <table class="table table-bordered">
                                        <thead>
                                          <tr>
                                            <th>Plan type</th>
                                            <th>Duration</th>
                                            <th>Cost</th>
                                            <th>Invoice</th>
                                          </tr>
                                        </thead>
                                        <tbody>
											<?php
											    $str="select * from package_tbl";
												$data=mysqli_query($conn,$str);
												while($row=mysqli_fetch_array($data))
												{
											?>
                                          <tr>
                                            <td><?php echo $row['package_name'];?></td>
                                            <td><?php echo $row['package_duration'];?></td>
                                            <td><?php echo $row['package_price'];?></td>
                                            <td><a href="#" class="cta-dark cta-sml" download><span>Download</span></a></td>
                                          </tr>
										  <?php 
												}
											?>
                                          </tbody>
                                      </table>
                                </div>
                            </div>
                            <div class="col-md-12 db-sec-com">
                                <div class="alert alert-warning db-plan-canc">
                                    <p><strong>Plan cancellation:</strong> <a href="#" data-bs-toggle="modal" data-bs-target="#plancancel">Click here</a> to cancell the current plan.</p>
                                </div>
                            </div>
                            <div class="col-md-12 db-sec-com">
                                <div class="alert alert-warning db-plan-canc db-plan-canc-app">
                                    <p>Your plan cancellation request has been successfully received by the admin. Once the admin approves your cancellation, the cost will be sent to you.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END -->

    <!-- FOOTER -->
           <!-- FOOTER -->
           <?php
		      include_once 'footer.php';
	       ?>
    <!-- END -->
    <!-- COPYRIGHTS -->
    <!-- END -->
    <!-- INTEREST POPUP -->
    <div class="modal fade plncanl-pop" id="plancancel">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title seninter-tit">Plan cancellation</h4>
                    <button type="button" class="close" data-bs-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body seninter chosenini">
                    <div class="row">
                        <div class="col-md-6 lhs-poli">
                            <h5>Cancellation policy</h5>
                            <ul>
                                <li>Your refund amount calculated day basis</li>
                                <li>As per your plan, your perday cost:10$</li>
                                <li>After 3 months only you can able to join</li>
                                <li>Fair ipsum dummy content ipsum jenuane ai</li>
                                <li>Rairt ipsum dummy content ipsum jenuane ai</li>
                            </ul>
                        </div>
                        <div class="col-md-6 rhs-form">
                            <div class="form-login">
                                <form>
                                    <div class="form-group">
                                        <label class="lb">Reason for the cancellation: *</label>
                                        <select class="chosen-select">
                                            <option value="">I joint my pare</option>
                                            <option value="">Profile match not good</option>
                                            <option value="">Support not good</option>
                                            <option value="">My reason not in the list</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label class="lb">Message: *</label>
                                        <textarea placeholder="Enter your message" class="form-control" id="" cols="20" rows="5"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <table class="table table-bordered table-responsive">
                                <thead>
                                    <tr>
                                      <th>Plan type</th>
                                      <th>Duration</th>
                                      <th>Cost paid</th>
                                      <th>Perday cost</th>
                                      <th>Plan active days</th>
                                      <th>Remaining days</th>
                                      <th>Cancellation charges</th>
                                      <th>Cost saved</th>
                                    </tr>
                                  </thead>
                                <tbody>
                                  <tr>
                                    <td>Platinum</td>
                                    <td>365 days(12 months)</td>
                                    <td>$1000</td>
                                    <td>$2.73</td>
                                    <td>190 days</td>
                                    <td>175 days</td>
                                    <td>$100</td>
                                    <td>$377.75</td>
                                  </tr>
                                </tbody>
                              </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- END INTEREST POPUP -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/slick.js"></script>
    <script src="js/select-opt.js"></script>
    <script src="js/Chart.js"></script>
    <script src="js/custom.js"></script>
    <script>
         //COMMON SLIDER
    $('.slider').slick({
        infinite: false,
        slidesToShow: 5,
        arrows: false,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000,
        dots: false,
        responsive: [{
            breakpoint: 992,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 1,
                centerMode: false
            }
        }]

    });

    $('.count').each(function () {
    $(this).prop('Counter',0).animate({
        Counter: $(this).text()
    }, {
        duration: 4000,
        easing: 'swing',
        step: function (now) {
            $(this).text(Math.ceil(now));
        }
    });
});

var xValues = "0";
    var yValues = "50";

    new Chart("Chart_leads", {
        type: "line",
        data: {
            labels: xValues,
            datasets: [{
                fill: false,
                lineTension: 0,
                backgroundColor: "#f1bb51",
                borderColor: "#fae9c8",
                data: yValues
            }]
        },
        options: {
            responsive: true,
            legend: {display: false},
            scales: {
                yAxes: [{ticks: {min: 0, max: 100}}]
            }
        }
    });
    </script>
</body>


<!-- Dream Class By user-plan.html  [XR&CO'2014], Fri, 14 Feb 2025 06:49:32 GMT -->
</html>