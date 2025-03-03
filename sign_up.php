<?php
	include_once 'connection.php';
?>
<!doctype html>
<html lang="en">

<!-- Dream Class By sign-up.php  -->
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

	<style>
		.error{
			margin: 0px 0px 0px 0;
			color: #ff0000;
			font-size: 13px;
			text-align: right;
			font-size: 14px;
		}
	</style>

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
    <!-- END USER PROFILE MENU POPUP -->

    <!-- REGISTER -->
    <section>
        <div class="login">
            <div class="container">
                <div class="row">
                    <div class="inn">
                        <div class="lhs">
                            <div class="tit">
                                <h2>Now <b>Find your life partner</b> Easy and fast.</h2>
                            </div>
                            <div class="im">
                                <img src="images/login-couple.png" alt="">
                            </div>
                            <div class="log-bg">&nbsp;</div>
                        </div>
                        <div class="rhs">
                            <div>
                                <div class="form-tit">
                                    <h4>Start for free</h4>
                                    <h1>Sign up to Matrimony</h1>
                                    <p>Already a member? <a href="login.php">Login</a></p>
                                </div>
                                <div class="form-login">
									<?php 
										# && isset($_POST['checked']) && ($_POST['checked']=="checked")
										if(isset($_POST['btnInsert']))
										{
											
											$str="insert into member_tbl (member_id, member_email, member_password, member_profile_for, member_looking_for, member_min_age, member_max_age) values (NULL,'".$_POST['email']."','".$_POST['pwd']."','".$_POST['profilefor']."','".$_POST['looking']."',".$_POST['minage'].",".$_POST['maxage'].")";
											//echo $str;die;
												mysqli_query($conn,$str);
												//echo $str;
												$_SESSION['member_id'] = mysqli_insert_id($conn);
												$_SESSION['member_email'] = $_POST['email'];
												$_SESSION['member_password'] = $_POST['pwd'];
												//echo $str;
												//header('location:register.php');
												echo "<script type='text/javascript'>  window.location='sign_up1.php'; </script>";
										}
									?>
                                    <form method="POST" id="form-registration" name="form_name" autocomplete="off" >
                                        <div class="form-group">
											<label class="lb" style="color: #5b2a07;">Looking For:</label>
											<!-- Looking For -->
											<select id="looking_for" class="form-control" onChange="get_gender(this.value);" name="looking">
												<option value="">-Select-</option>
												<option value="Man">Man</option>                
												<option value="Woman">Woman</option>
											</select>
                                        </div>
                                        <div class="form-group">
                                            <label class="lb" style="color: #5b2a07;">Profile For:</label>
											<!-- Profile For -->
                                            <select id="profile_for" class="form-control ProfileFor" name="profilefor">
												<option value="">-Select-</option>
											</select>
                                        </div>
										<div class="row">
											<label class="lb" style="color: #5b2a07;">Age:</label>
											<div class="col-sm-6">
												<div class="form-group">
													<select id="MinAgeDropDown" name="minage" class="form-control form-select chosen-select" data-placeholder="Select Maximum Age"/>
														<option selected disabled>Select Min Age</option>
														<option value="18">18</option>   
														<option value="19">19</option>   
														<option value="20">20</option>   
														<option value="21">21</option>   
														<option value="22">22</option>   
														<option value="23">23</option>   
														<option value="24">24</option>   
														<option value="25">25</option>   
														<option value="26">26</option>   
														<option value="27">27</option>   
														<option value="28">28</option>   
														<option value="29">29</option>   
														<option value="30">30</option>   						
													</select>
												</div>
											</div>
												<div class="col-sm-6">			
													<select id="MaxAgeDropDown" name="maxage" class="form-control form-select chosen-select" data-placeholder="Select Minimum Age">
														<option selected disabled>Select Max Age</option>
														<option value="19">19</option>   
														<option value="20">20</option>   
														<option value="21">21</option>   
														<option value="22">22</option>   
														<option value="23">23</option>   
														<option value="24">24</option>   
														<option value="25">25</option>   
														<option value="26">26</option>   
														<option value="27">27</option>   
														<option value="28">28</option>   
														<option value="29">29</option>   
														<option value="30">30</option> 						
												</select>
											</div>
										</div>
										<div id="message"style="color: red;font-size: 14px;"></div>
                                        <div class="form-group">
                                            <label class="lb" style="color: #5b2a07;">Email:</label>
                                            <!-- Email -->
											<input type="email" class="form-control" name="email" placeholder="e.g. email@address.com">
                                        </div>
											<div class="form-group">
                                            <label class="lb" style="color: #5b2a07;">Password:</label>
                                            <!-- Password -->
											<input type="password" class="form-control" name="pwd" placeholder="Enter your Password">
                                        </div>
										<div class="form-group form-check">
											<label class="form-check-label">
												<!-- Terms and Conditions -->
												<input type="checkbox" id="checkme" name="checked"> I agree to the <a href="terms.php">Terms and Conditions</a>
											</label>
										</div>
										<!-- Submit Button -->
										<input type="submit" id="sendNewSms" disabled="disabled" value="Register Now" name="btnInsert" class="btn btn-primary">
                                    </form>
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
    <?php
		include_once 'footer.php';
	?>
    <!-- END -->
    <!-- COPYRIGHTS -->
    <!-- END -->
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/select-opt.js"></script>
    <script src="js/custom.js"></script>

	<script src="js/validation/jquery.validate.min.js"></script> 
    <script src="js/validation/additional-methods.min.js"></script>

	<div id = "v-w3layouts"></div>

	<script>
	$(document).ready(function () {
		$("#form-registration").validate({
			rules: {
				email: {
					required: true,
					email: true
				},
				pwd: {
					required: true,
					minlength: 4,
					maxlength: 12
				},
				profilefor: {
					required: true,
				},
				looking: {
					required: true,
				},
				checked: {
					required: true
				}
			},
			messages: {
				email: {
					required: "Please provide an email address.",
					email: "Please enter a valid email address."
				},
				pwd: {
					required: "Please provide a password.",
					minlength: "Password must be at least 4 characters long.",
					maxlength: "Password must be less than 12 characters long."
				},
				profilefor: {
					required: "Please select a profile type."
				},
				looking: {
					required: "Please select your preference."
				},
				checked: {
					required: "You must agree to the terms and conditions."
				}
			},
			errorPlacement: function (error, element) {
				error.insertAfter(element);
			}
		});

		// Enable button only if checkbox is checked
		$('#checkme').change(function () {
			$('#sendNewSms').prop('disabled', !this.checked);
		});

		// Prevent form submission if validation fails
		$("#form-registration").submit(function (e) {
			if (!$("#form-registration").valid()) {
				e.preventDefault();
			}
		});
	});

	//--------------- Enable Button using CheckBox -------------------
	 var checker = document.getElementById('checkme');
	 var sendbtn = document.getElementById('sendNewSms');
	 // when unchecked or checked, run the function
	 checker.onchange = function(){
	if(this.checked){
		sendbtn.disabled = false;
	} else {
		sendbtn.disabled = true;
	}

	}

	//--------------- Enable Button using CheckBox -------------------

	//Cache these as variables so we only have to select once
	var $min= $("#MinAgeDropDown");
	var $max = $("#MaxAgeDropDown");
	var $msg = $("#message");
	//alert($min);
	//Apply a single change event to fire on either dropdown
	$min.add($max).change(function () {
		//Have some default text to display, an empty string
		var text = "";
			
		//Cache the vales as variables so we don't have to keep getting them
		//We will parse the numbers out of the string values
		var minVal = parseInt($min.val(),10);
		var maxVal = parseInt($max.val(),10)
		
		//Determine if both are numbers, if so then they both have values
		var bothHaveValues = !isNaN(minVal) && !isNaN(maxVal);
		
		if(bothHaveValues){
			if(minVal > maxVal){
				text += "Minimum age should be less than maximum";
			}else if(maxVal < minVal){
				text += "Maximum age should be greater than minimum";
			}
		}
		
		//Display the text
		$msg.html(text);
	});

	$(document).ready(function(){
		$(".dropdown").hover(            
			function() {
				$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
				$(this).toggleClass('open');        
			},
			function() {
				$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
				$(this).toggleClass('open');       
			}
		);
	});

	function get_gender(val) {
		//alert('hi'+val);
			 $.ajax({
			 type: "POST",
			 url: "get_sub_community.php",
			 data:'get_gen='+val,
			 success: function(data){
				$(".ProfileFor").html(data);
			 }
			 });
		  }
	</script>
</body>
	

<!-- Dream Class By sign-up.html  -->
</html>