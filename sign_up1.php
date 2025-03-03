<?php
	include_once 'connection.php';
	session_start();
?>
<!doctype html>
<html lang="en">

<!-- Dream Class By user-profile-edit.html  [XR&CO'2014], Fri, 14 Feb 2025 06:49:34 GMT -->
<head>
    <title></title>
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

	<script>
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

		function getSub_community(val) {
			$.ajax({
				type: "POST",
				url: "get_sub_community.php",
				data:'community_id='+val,
				success: function(data){
					$("#sub_id").html(data);
				}
			});
		}

		function get_city(val) {
			$.ajax({
				type: "POST",
				url: "get_sub_community.php",
				data:'state_id='+val,
				success: function(data){
					$("#city_id").html(data);
				}
			});
		}

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

		function have_children(val)
		{
			if(val=="Single")
			{
				$("#Childrens_id").hide();
				$("#No_of_Childrens").hide();
			}
			else
			{
				$("#Childrens_id").show();
			}
		}

		function check_no_of_children(val)
		{
			if(val=="1" || val=="2")
			{
				$("#No_of_Childrens").show();
			}
			else
			{
				$("#No_of_Childrens").hide();
			}
		}
    </script>
	<script src="../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
	<script>
	(function(){
	if(typeof _bsa !== 'undefined' && _bsa) {
	  _bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
	}
	})();
	</script>
	<script>
	(function(){
	if(typeof _bsa !== 'undefined' && _bsa) {
	_bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
	}
	})();
	</script>
	<script>
	(function(){
	if(typeof _bsa !== 'undefined' && _bsa) {
	  _bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
	}
	})();
	</script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src='https://www.googletagmanager.com/gtag/js?id=UA-149859901-1'></script>
	<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());

	gtag('config', 'UA-149859901-1');
	</script>
	<script>
	window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)};ga.l=+new Date;
	ga('create', 'UA-149859901-1', 'demo.w3layouts.com');
	ga('require', 'eventTracker');
	ga('require', 'outboundLinkTracker');
	ga('require', 'urlChangeTracker');
	ga('send', 'pageview');
	</script>
	<script async src='../../../js/autotrack.js'></script>

	<style>
		.error{
			color: red;
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
		//include_once 'menu.php';
	?>
    <!-- END MOBILE MENU POPUP -->

    <!-- MOBILE USER PROFILE MENU POPUP -->
    <!-- END USER PROFILE MENU POPUP -->

	<?php
        $fname=$dob=$place=$lname=$contact=$aadhar="";

		if(isset($_GET['up_id']))
		{
			$get_id=$_GET['up_id'];
			$str="Select * from tbl_member join tbl_member_detail on tbl_member_detail.Member_ID =tbl_member.Member_ID where tbl_member.Member_ID =".$get_id;
			$res=mysqli_query($conn,$str);
			$row=mysqli_fetch_array($res);
			$fname=$row['Member_Firstname'];
			$lname=$row['Member_Lastname'];
			$dob=$row['Member_DOB'];
			$place=$row['Member_Birthplace'];
		}
		
		if(isset($_POST['submit']))
		{
			if(!empty($get_id))
			{
				$sql="update tbl_member set Member_Firstname = '".$_POST['Fname']."', Member_Lastname = '".$_POST['Lname']."', Member_DOB = '".$_POST['dob']."' where Member_ID =".$get_id;
				mysqli_query($conn,$sql);
			}
			else
			{
				$gender=$_POST['gen'];
				$Last_ID = $_SESSION['member_id'];
				$_SESSION['Member_Firstname']=$_POST['Fname'];
				$_SESSION['Member_Contact']=$_POST['contact'];
				$_SESSION['Member_Gender']=$_POST['gen'];
				$img=$_SESSION['Member_Image']='image_placeholder.jpg';
				date_default_timezone_set('Asia/Kolkata');
				$register_date=date('Y-m-d');
				$current=date('Ys');
				$dob=$_POST['dob'];
				$myDateTime = DateTime::createFromFormat('Y-m-d', $dob);
				$memb_pro_id = $myDateTime->format('dm');
				$member_profile_id=$current.$memb_pro_id;
				$reg_date=date("Y-m-d");

				$str="update tbl_member set Member_City = ".$_POST['cityname'].", Member_Image = '".$img."',Member_Firstname = '".$_POST['Fname']."',Member_Lastname = '".$_POST['Lname']."', Member_Adhar_ID='".$_POST['aadhar']."', Member_Contact = '".$_POST['contact']."', Member_Status = '1', Member_Age = '".$_POST['age']."' , Registration_Date = '".$reg_date."',Member_Gender='".$gender."',Member_DOB = '".$_POST['dob']."' , Member_Profile_ID = '".$member_profile_id."' where Member_ID =".$Last_ID;
				echo $str;
				mysqli_query($conn,$str);
				$hobbies=$_POST['hobby'];
				$hbs=implode(",",$hobbies);
				$language=$_POST['lang'];
				$lng=implode(",",$language);

				$str1="insert into tbl_member_detail values (NULL,".$Last_ID.",'".$_POST['subcommunity_id']."','".$_POST['religion']."','".$lng."','".$_POST['family']."','".$_POST['childs']."','".$_POST['height']."','".$_POST['weight']."','".$_POST['cast']."','".$_POST['maritalstatus']."','".$_POST['body']."','".$_POST['bithplace']."','".$_POST['complexion']."','".$_POST['rashi']."')";
				echo $str1;
				mysqli_query($conn,query: $str1);
				$_SESSION['Detail_ID'] = mysqli_insert_id($conn);

				$Last_ID=$L_ID='';
				$Last_ID = isset($_SESSION['member_id']) ? $_SESSION['member_id'] : '';
				$L_ID = isset($_SESSION['Detail_ID']) ? $_SESSION['Detail_ID'] : '';
				$Family = $_POST['family'];
				$designation= $_POST['designation']; 

				$str="insert into tbl_lifestyle values (NULL,".$L_ID.",'".$_POST['bloodgroup']."','".$hbs."','".$_POST['diet1']."',".$lng.",'".$_POST['residential_add']."','".$_POST['smoke1']."','".$_POST['drink1']."','".$_POST['vehicles']."')";
				echo $str;
				mysqli_query($conn,$str);
				$_SESSION['ID1']=$L_ID;

				if(isset($_SESSION['ID1']))
				{
                    $ID = $_SESSION['ID1'];
				}
				$str="insert into tbl_member_qualification values (NULL,".$ID.",'".$_POST['qualific']."','".$_POST['work']."','".$_POST['occupation']."','".$designation."','".$_POST['company']."','".$_POST['income']."','".$_POST['aboutyou']."')";
				echo $str;
				mysqli_query($conn,$str);
				
				
			}
		}
	?>
    <!-- REGISTER -->
    <section>
        <div class="login pro-edit-update">
            <div class="container">
                <div class="row">
                    <div class="inn">
                        <div class="rhs">
							<div class="form-login">
								<form id="form-registeration" method="POST">
									<!--PROFILE BIO-->
									<div class="edit-pro-parti">
										<div class="form-tit">
											<h1>Basic info</h1>
										</div>
										<div class="row">
											<div class="col-md-6 form-group">
												<label class="lb">First Name:</label>
												<input type="text" class="form-control" placeholder="Enter your First Name" name="Fname" value="<?php echo $fname; ?>"/>
											</div>
											<div class="col-md-6 form-group">
												<label class="lb">Last Name:</label>
												<input type="text" class="form-control" placeholder="Enter your Last Name" name="Lname" value="<?php echo $lname; ?>"/>
											</div>
										</div>
										<div class="row">
											<div class="form-group" style="display: flex; align-items: center; gap: 15px;">
												<label class="lb">Gender:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="radio" checked="checked" name="gen" value="Male" id="male" />
												<label for="male">Male</label>
												<input type="radio" name="gen" value="Female" id="female" />
												<label for="female">Female</label>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 form-group">
											<label class="lb">Date Of Birth:</label>
											<input type="date" id="dob" name="dob" class="form-control" value="<?php echo $dob; ?>" onchange="calculateAge()"/>
										</div>
										<div class="col-md-6 form-group">
											<label class="lb">Age:</label>
											<input type="text" id="age" name="age" class="form-control" />
										</div>
										</div>
										<div class="form-group">
											<label class="lb">Contact No.:</label>
											<input type="text" class="form-control" placeholder="Contact Detail" name="contact" value="<?php echo $contact; ?>"/>
										</div>
										<div class="form-group">
											<label class="lb">Aadhar Card :</label>
											<input type="text" class="form-control" placeholder="Aadhar Card Detail" name="aadhar" value="<?php echo $aadhar; ?>"/>
										</div>
									</div>
									<!--END PROFILE BIO-->
									<!--PROFILE BIO-->
									<div class="edit-pro-parti">
										<div class="form-tit">
											<h1>Location & Cast Detail</h1>
										</div>
										<div class="row">
											<div class="form-group">
												<label class="lb">Birth Place:</label>
												<input type="text" class="form-control" placeholder="Your birthplace" name="bithplace" value="<?php echo $place; ?>"/>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 form-group">
												<label class="lb">State:</label>
												<select class="form-control" onChange="get_city(this.value);" name="State_ID">
													<option selected disabled>Select State</option>
													<?php
														$State_ID="";
														$str_state="Select * from states";
														$res=mysqli_query($conn,$str_state);
														while($row=mysqli_fetch_array($res))
														{
													?>
															<option value="<?php echo $row['id']; ?>" <?php if($row['id']==$State_ID) { echo 'selected'; }?> > <?php echo $row['name']; ?> </option>
													<?php
														}
													?>
											</select>
											</div>
											<div class="col-md-6 form-group">
												<label class="lb">District / City:</label>
												<select name="cityname" id="city_id" class="form-control form-select">
													<option selected disabled value="">Select District/City</option>
												</select>
											</div>
										</div>

										<div class="row">
											<div class="form-group">
												<label class="lb">Residential Address:</label>
												<textarea class="form-control" name="residential_add"></textarea>
											</div>
										</div>
										<div class="row">
											<div class="form-group">
												<label class="lb">Religion:</label>
												<select name="religion" class="form-control form-select chosen-select" data-placeholder="Select your Religion">
													<option selected disabled value="">Select Religious</option>
													<option value="Hindu">Hindu</option>
													<option value="Sikh">Sikh</option>
													<option value="Christian">Christian</option>
													<option value="Muslim">Muslim</option>
													<option value="Buddhist">Buddhist</option>
													<option value="Jain">Jain</option>
													<option value="Parsi">Parsi</option>
													<option value="Hindu">Other</option>
												</select>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 form-group">
												<label class="lb">Your Community :</label>
												<select onChange="getSub_community(this.value);" name="Community_ID" class="form-control form-select chosen-select" data-placeholder="Select your Community">
												<!--<option selected disabled value="">Select Community</option> -->
												<option selected disabled value="">Select Community</option>
												<?php
													$Community_ID="";
													$str_community="select * from tbl_community";
													$res=mysqli_query($conn,$str_community);

													while($row=mysqli_fetch_array($res))
													{
												?>
														<option value="<?php echo $row['Community_ID']; ?>" <?php if($row['Community_ID']==$Community_ID) { echo 'selected'; }?> > <?php echo $row['Community_Name']?> </option>
												<?php
													}
												?>
												<div class="clearfix"> </div>
												</select>
											</div>
											<div class="col-md-6 form-group">
												<label class="lb">Your Sub-Community:</label>
												<select id="sub_id" name="subcommunity_id" class="form-control form-select" data-placeholder="Select your Sub-Community">
												<option selected disabled value="">Select Sub Community</option>
												<?php
													$Sub_Community_ID="";
													$sub_str_community="select * from tbl_sub_community";
													$res=mysqli_query($conn,$sub_str_community);

													while($row=mysqli_fetch_array($res))
													{
												?>
														<option value="<?php echo $row['Sub_Community_ID']; ?>" <?php if($row['Sub_Community_ID']==$Sub_Community_ID) { echo 'selected'; }?> > <?php echo $row['Sub_Community_Name']?> </option>
												<?php
													}
												?>
													
												</select>
											</div>
										</div>
									</div>
									<!--END PROFILE BIO-->
									<!--PROFILE BIO-->
									<div class="edit-pro-parti">
										<div class="form-tit">
											<h1>Family Info.</h1>
										</div>
										<div class="form-group" style="display: flex; align-items: center; gap: 15px;">
											<label class="lb">You live with family?</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" class="radio_1" checked="checked" name="family" value="yes" id="yes" />
											<label for="yes">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" class="radio_1" value="no" name="family" id="no" />
											<label for="no">No</label>
										</div>

										<div class="form-group">
											<label class="lb">Marital Status:</label>
											<select name="maritalstatus" onChange="have_children(this.value);" class="form-control form-select chosen-select" data-placeholder="Select Marital Status">
												<option selected disabled value="">Select Marital Status</option>
												<option value="Separated">Annulled</option>
												<option value="Awaiting">Awaiting Divorced</option>
												<option value="Divorced">Divorced</option>
												<option value="Single">Never Married</option>
												<option value="Widowed">Widowed</option>
											</select>
										</div>
										<div class="form-group form_but1" id="Childrens_id" style="display: none; display: flex; align-items: center; gap: 15px; flex-wrap: wrap;">
											<label class="lb" style="white-space: nowrap;">Do you have any children?</label>
											<input type="radio" value="0" onChange="check_no_of_children(this.value);" class="radio_1" checked="checked" name="child" /> NO
											<input type="radio" value="1" onChange="check_no_of_children(this.value);" class="radio_1" name="child" /> Yes, Living together
											<input type="radio" value="2" onChange="check_no_of_children(this.value);" class="radio_1" name="child" /> Yes, Not Living together
										</div>
										<div class="form-group form_but1" id="No_of_Childrens" style="display: none; display: flex; align-items: center; gap: 15px; flex-wrap: wrap;">
											<label class="lb" style="white-space: nowrap;">Childrens:</label>&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" class="radio_1" checked="checked" value="1" name="childs" /> 1
											<input type="radio" class="radio_1" name="childs" value="2" /> 2
											<input type="radio" class="radio_1" name="childs" value="3" /> 3 or More
										</div>

										<div class="row">
											<div class="col-md-6 form-group">
												<label class="lb">Height:</label>
												<select name="height" class="form-control form-select chosen-select" data-placeholder="Select Height">
													<option selected disabled value="">Select Height</option>
													<option value="4.9">4f.9inc</option>
													<option value="5.1">5f.1inc</option>
													<option value="5.2">5f.2inc</option>
													<option value="5.3">5f.3inc</option>
													<option value="5.4">5f.4inc</option>
													<option value="5.5">5f.5inc</option>
													<option value="5.6">5f.6inc</option>
													<option value="5.7">5f.7inc</option>
													<option value="5.8">5f.8inc</option>
												</select>
											</div>
											<div class="col-md-6 form-group">
												<label class="lb">Weight:</label>
												<select name="weight" class="form-control form-select chosen-select" data-placeholder="Select Height">
													<option selected disabled value="">Select Weight</option>
													<option value="45">45kg</option>
													<option value="50">50kg</option>
													<option value="55">55kg</option>
													<option value="60">60kg</option>
													<option value="65">65kg</option>
													<option value="70">70kg</option>
													<option value="75">75kg</option>
													<option value="80">80kg</option>
													<option value="85">85kg</option>
													<option value="90">90kg</option>
												</select>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 form-group">
												<label class="lb">Physical Status:</label>
												<select name="body" class="form-control form-select chosen-select" data-placeholder="Select Body Type">
													<option selected disabled value="">Body Type</option>
													<option value="skinny">Skinny</option>
													<option value="fat">Fat</option>
													<option value="Normal">Normal</option>
												</select>
											</div>
											<div class="col-md-6 form-group">
												<label class="lb"></label>
												<select name="complexion" class="form-control form-select chosen-select" data-placeholder="Select Complexion">
													<option selected disabled value="">Select Complexion</option>
													<option value="dark">Dark</option>
													<option value="brown">Brown</option>
													<option value="Normal">Normal</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="lb">Your Rashi:</label>
											<select name="rashi" class="form-control form-select chosen-select" data-placeholder="Select Rashi">
												<option selected disabled value="">Select Rashi</option>
												<option value="Mesh">Mesh (Aries)</option>
												<option value="Varishabha">Varishabha (Taurus)</option>
												<option value="Mithuna">Mithuna (Gemini)</option>
												<option value="Karka">Karka (Cancer)</option>
												<option value="Simha">Simha (Leo)</option>
												<option value="Kanya">Kanya (Virgo)</option>
												<option value="Tula">Tula (Libra)</option>
												<option value="Vrischika">Vrischika (Scorpio)</option>
												<option value="Dhanur">Dhanur (Sagittarious)</option>
												<option value="Makara">Makara (Capricorn)</option>
												<option value="Kumbha">Kumbha (Aquarius)</option>
												<option value="Meena">Meena (Pisces)</option>
											</select>
										</div>
										<div class="form-group" style="display: flex; align-items: center; gap: 15px;">
											<label class="lb">Cast no Bar:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" class="radio_1" checked="checked" name="cast" value="1" id="yes" />
											<label for="yes">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="radio" class="radio_1" value="0" name="cast" id="no" />
											<label for="no">No</label>
										</div>
									</div>
									<!--END PROFILE BIO-->
									<!--PROFILE BIO-->
									<div class="edit-pro-parti">
										<div class="form-tit">
											<h1>Other Info.</h1>
										</div>
										<div class="row">
											<div class="form-group">
												<label class="lb">Your Diet:</label>
												<select name="diet1" class="form-control form-select chosen-select" data-placeholder="Select Diet">
													<option selected disabled value="">Select Diet</option>
													<option value="Veg">Veg</option>
													<option value="Non-Veg">Non-Veg</option>
													<option value="Any">Any</option>
												</select>
											</div>
											<div class="form-group">
												<label class="lb">Your Bloodgroup:</label>
												<select name="bloodgroup" class="form-control form-select chosen-select" data-placeholder="Select Diet">
													<option selected disabled value="">Bloodgroup</option>
													<option value="A+">A+ (A Positive)</option>
													<option value="B+">B+ (B Positive)</option>
													<option value="A-">A- (A Negative)</option>
													<option value="B-">B- (B Negative)</option>
													<option value="O+">O+ (O Positive)</option>
													<option value="O-">O- (O Negative)</option>
												</select>
											</div>
											<div class="form-group">
												<label class="lb">Your Hobbies & Intrest:</label>
												<div class="chosenini">
													<div class="form-group">
														<select name="hobby[]" class="chosen-select" data-placeholder="Select your Hobbies" multiple>
															<option></option>
															<option value="Adventure Travel">Adventure Travel </option>
															<option value="Books Reading">Books Reading </option>
															<option value="Cooking">Cooking </option>
															<option value="Hangout with Family">Hangout with Family </option>
															<option value="Modelling">Modelling </option>
															<option value="Music">Music </option>
															<option value="Watching">Watching </option>
															<option value="Movies">Movies </option>
															<option value="Playing">Playing </option>
															<option value="Yoga">Yoga</option>
															<option value="Volleyball">Volleyball</option>
														</select>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="lb">Language Known:</label>
												<div class="chosenini">
													<div class="form-group">
														<select name="lang[]" class="chosen-select" data-placeholder="Select Languages" multiple>
															<option></option>
															<option value="1"> Gujarati </option>
															<option value="2"> Hind </option>
															<option value="3"> Kannad </option>
															<option value="4"> Marathi </option>
															<option value="5"> Punjabi </option>
															<option value="6"> Telugu </option>
															<option value="7"> Urdu </option>
														</select>
													</div>
												</div>
											</div>
											<div class="form-group" style="display: flex; align-items: center; gap: 15px;">
												<label class="lb">Vehicles having:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="radio" class="radio_1" checked="checked" value="1" name="vehicles" id="v1" />
												<label for="v1">1</label>
												<input type="radio" class="radio_1" name="vehicles" value="2" id="v2" />
												<label for="v2">2</label>
												<input type="radio" class="radio_1" name="vehicles" value="3" id="v3" />
												<label for="v3">3 or More</label>
											</div>
											<div class="row">
												<div class="col-md-6 form-group">
													<label class="lb">Habbits:</label>
													<select name="drink1" class="form-control form-select chosen-select" data-placeholder="Select Habbits">
														<option selected value="NULL">Drinking Habbits</option>
														<option value="NO">NO</option>
														<option value="Occasionaly">Occasionaly</option>
													</select>
												</div>
												<div class="col-md-6 form-group">
													<label class="lb"></label>
													<select name="smoke1" class="form-control form-select chosen-select" data-placeholder="Select Habbits">
														<option selected value="NULL">Smoking Habbits</option>
														<option value="NO">NO</option>
														<option value="Occasionaly">Occasionaly</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<!--PROFILE BIO-->
									<div class="edit-pro-parti">
										<div class="form-tit">
											<h1>Career Info.</h1>
										</div>
										<div class="row">
											<div class="col-md-6 form-group">
												<label class="lb">Your Qualification:</label>
												<select name="qualific" class="form-control form-select chosen-select" data-placeholder="Select Qualification">
													<option selected disabled value="">Select Qualification:</option>
													<option value="B.com">B.com</option>
													<option value="B.B.A">B.B.A</option>
													<option value="B.C.A">B.C.A</option>
													<option value="B.A">B.A</option>
													<option value="B.Tech">B.Tech</option>
													<option value="M.com">M.com</option>
													<option value="M.B.A">M.B.A</option>
													<option value="M.C.A">M.C.A</option>
													<option value="B.Ed.">B.Ed.</option>
													<option value="M.Tech">M.Tech</option>
													<option value="L.L.B.">L.L.B.</option>
													<option value="M.B.B.S.">M.B.B.S.</option>
													<option value="Other">Other</option>
												</select>
											</div>
											<div class="col-md-6 form-group">
												<label class="lb">Your Occupation:</label>
												<select name="occupation" class="form-control form-select chosen-select" data-placeholder="Select Qualification">
													<option selected disabled value="">Select Occupation</option>
													<option value="Bussiness">Businessman</option>
													<option value="Doctor">Doctor</option>
													<option value="Librarian">Librarian</option>
													<option value="Manager">Manager</option>
													<option value="Social Worker">Social Worker</option>
													<option value="Teacher">Teacher</option>
													<option value="Other">Other</option>
												</select>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 form-group">
												<label class="lb">Your Designation:</label>
												<select name="designation" class="form-control form-select chosen-select" data-placeholder="Select Designation">
													<option selected disabled value="">Select Designation</option>
													<option value="Admin">Admin</option>
													<option value="Accountant">Accountant</option>
													<option value="clerk">Clerk</option>
													<option value="Financer">Financer</option>
													<option value="HR">HR</option>
													<option value="Other">Other</option>
												</select>
											</div>
											<div class="col-md-6 form-group">
												<label class="lb">Company Name:</label>
												<input type="text" class="form-control" placeholder="Enter Company Name" name="company"/>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 form-group">
												<label class="lb">Work With:</label>
												<select name="work" class="form-control form-select chosen-select" data-placeholder="Select your Work">
													<option selected disabled value="">Select your Work</option>
													<option value="Government">Government</option>
													<option value="Private">Private</option>
													<option value="Self Employee">Self Employee</option>
												</select>
											</div>
											<div class="col-md-6 form-group">
												<label class="lb">Your Income:</label>
												<input type="Number" class="form-control" placeholder="* (Income in a Year)" name="income"/>
											</div>
										</div>
										<div class="form-group">
											<label class="lb">Something About You:</label>
											<textarea name="aboutyou" placeholder="example : about you in 100 Words..." class="textarea1 form-control"></textarea>
										</div>
									</div>
									<!--END PROFILE BIO-->
									<div class="form-actions">
										<input type="submit" id="edit-submit" name="submit" value="Submit" class="btn btn-primary">
									</div>
								</form>
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
		$(function() {
		  $("#form-registeration").validate({
			rules: {
			  Fname: {
				required: true,
				minlength: 3,
				maxlength: 15,
			  },
			  Lname: {
				required: true,
				minlength: 3,
				maxlength: 15
			  },
			  dob: {
				required: true,
			  },
			  age: {
				required: true,
			  },
			  religion: {
				required: true,
			  },
			  State_ID: {
				required: true,
			  },
			  subcommunity_id: {
				required: true,
			  },
			  Community_ID: {
				required: true,
			  },
			  aadhar: {
				maxlength: 12,
				minlength: 12
			  },
			  contact: {
				maxlength: 10,
				minlength: 10
			  },
			  cityname: {
				required: true,
			  }
			},
			messages: {
			  Fname: {
				required: "<p style='color:red; font-size:14px;'>Your data must be at least 3 characters</p>",
				minlength: "<p style='color:red;'>Your data must be at least 3 characters</p>",
				maxlength: "<p style='color:red;'>Your data is too long</p>",
			  },
			  Lname: {
				required: "<p style='color:red; font-size:14px;'>Your data must be at least 3 characters</p>",
				minlength: "<p style='color:red;'>Your data must be at least 3 characters</p>",
				maxlength: "<p style='color:red;'>Your data is too long</p>"
			  },
			  dob: {
				required: "<p style='color:red; font-size:14px;'>Birth Date is required.</p>"
			  },
			  contact: {
				maxlength: "<p style='color:red;'>Your proper Number.</p>",
			  },
			  aadhar: {
				minlength: "<p style='color:red;'>Enter proper Card details</p>",
				maxlength: "<p style='color:red;'>Enter proper Card details</p>",
			  },
			  age: {
				required: "<p style='color:red; font-size:14px;margin-top: 5px;margin-left: -11px;'>Age is required.</p>"
			  },
			  religion: {
				required: "<p style='color:red; font-size:14px;'>Religion is required.</p>"
			  },
			  State_ID: {
				required: "<p style='color:red; font-size:14px;'>State is required.</p>"
			  },
			  cityname: {
				required: "<p style='color:red; font-size:14px;'>City is required.</p>"
			  },
			  Community_ID: {
				required: "<p style='color:red; font-size:14px;'>Community is required.</p>"
			  },
			  subcommunity_id: {
				required: "<p style='color:red; font-size:14px;'>Sub-community is required.</p>"
			  }
			}
		  });
		});

		$(function() {
			$("#form-registeration").validate({
				rules: {
				  maritalstatus: {
					required: true,
				  },
				  height: {
					required: true,
				  },
				  weight: {
					required: true,
				  },
				  rashi: {
					required: true,
				  },
				  diet1: {
					required: true,
				  },
				  bloodgroup: {
					required: true,
				  },
				  cityname: {
					required: true,
				  }
				},
				messages: {
				  maritalstatus: {
					required: "This field is required.",
				  },
				  height: {
					required: "This field is required.",
				  },
				  weight: {
					required: "This field is required.",
				  },
				  rashi: {
					required: "This field is required.",
				  },
				  diet1: {
					required: "This field is required.",
				  },
				  bloodgroup: {
					required: "This field is required.",
				  },
				  cityname: {
					required: "This field is required.",
				  }
				}
			});
		});

		$(function() {
			$("#form-registeration").validate({
                rules: {
                  qualific: {
                    required: true,
                  },
                  occupation: {
                    required: true,
                  },
                  work: {
                    required: true,
                  },
                  designation: {
                    required: true,
                  }
                },
                messages: {
                  qualific: {
                    required: "This field is required.",
                  },
                  occupation: {
                    required: "This field is required.",
                  },
                  work: {
                    required: "This field is required.",
                  },
                  designation: {
                    required: "This field is required.",
                  }
                }
            });
        });
		
		function calculateAge() {
			var dob = document.getElementById('dob').value;
			if (dob) {
				var birthDate = new Date(dob);
				var today = new Date();
				var age = today.getFullYear() - birthDate.getFullYear();
				var m = today.getMonth() - birthDate.getMonth();
				if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
					age--;
				}
				document.getElementById('age').value = age;
			} else {
				document.getElementById('age').value = '';
			}
		}
	</script>
</body>

<!-- Dream Class By user-profile-edit.html  [XR&CO'2014], Fri, 14 Feb 2025 06:49:34 GMT -->
</html>
