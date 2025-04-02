<?php 
	include_once 'connection.php';
	
	if(isset($_POST['btnSubmit']))
	{
		$str="select * from member_tbl where member_email='".$_POST['email']."' and member_password='".$_POST['passwd']."' and member_status=1";	
		$str2="select * from member_tbl where member_status='0'";
		$result2=mysqli_query($conn,$str2);
		$count2=mysqli_num_rows($result2);
		$result=mysqli_query($conn,$str);
		$data=mysqli_fetch_array($result);
		$count=mysqli_num_rows($result);
		//echo $str2;
		
		if($count>0)
		{
			$_SESSION["user_fname"]=$data['member_firstname'];
			$_SESSION["user_lname"]=$data['member_lastname'];
			$_SESSION["user_Email"]=$data['member_email'];
			$_SESSION["user_profile"]=$data['member_image'];
			$_SESSION["user_id"]=$data['member_id'];
			$_SESSION["member_gender"]=$data['member_gender'];
			$_SESSION["member_id"]=$data['member_id'];
			$looking_for=$data['member_looking_for']=="Male"?"Female":"Male";
			$_SESSION['member_looking_for']=$looking_for;
			
			$M_ID=$_SESSION['member_id'];
			
			$sub_query = "INSERT INTO login_details (user_id) VALUES ('".$_SESSION['member_id']."')";
			$statement=mysqli_query($conn,$sub_query);
			$last_id=mysqli_insert_id($conn);
			//$statement = $conn->prepare($sub_query);
			//$statement->execute();
			$_SESSION['login_details_id'] = $last_id;
			
			$member_id = $_SESSION['member_id']; // Make sure this is already set during login

			// Update package status to 0 if today is the expiry date for the logged-in member
			$sql = "UPDATE package_detail_tbl SET package_detail_status = 0 WHERE member_id = '$member_id' AND package_exp_date = CURDATE()";
			$data=mysqli_query($conn, $sql);
			$total=mysqli_num_rows($data);
			//echo $total;die;
			$_SESSION['cnt_member']=$total;
			
			$cnt="select * from package_detail_tbl where package_detail_status='1' and member_id=".$_SESSION['member_id'];
			//echo $cnt;
			$data=mysqli_query($conn,$cnt);
			$total=mysqli_num_rows($data);
			$_SESSION['cnt_member']=$total;
			
			if(isset($_POST['agree']))
			{
				setcookie("user_email",$_POST['email'],time()+(60*2));
				setcookie("user_pass",$_POST['passwd'],time()+(60*2));
			}
			else
			{
				if(isset($_COOKIE["user_email"]))
				{
					setcookie("user_email","");
				}
				if(isset($_COOKIE["user_pass"]))
				{
					setcookie("user_pass","");
				}
			}
			header('location:index.php');
			
		}
		
		else
		{
			if($count2>0)
			{
				$alert="<span style='color:red'>Your Profile is Denied By Admin</span>";
			}
			else
			{
				$alert="<span style='color:red'>Invalid Email or Password</span>";
			}
			
		}
	}	
?>
<!doctype html>
<html lang="en">


<!-- Dream Class By login.html  -->
<head>
    <title><?php echo $WEB_TITLE; ?></title>
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
	<?php include_once 'header.php' ?>
    <!-- END PRELOADER -->

    <!-- HEADER & MENU -->
    <!-- END HEADER & MENU -->

    <!-- HEADER & MENU -->
	<?php include_once 'menu.php'; ?>
    <!-- END HEADER & MENU -->

    <!-- HEADER & MENU -->
            <!-- HELP BOX -->
            <!-- END HELP BOX -->
    <!-- END HEADER & MENU -->

    <!-- HEADER & MENU -->
                    <!-- LOGO -->
                    <!-- TOP MENU -->
                    <!-- USER PROFILE -->
                    <!--MOBILE MENU-->
                    
                    <!--END MOBILE MENU-->

    <!-- END HEADER & MENU -->

    <!-- MOBILE MENU POPUP -->
    <!-- END MOBILE MENU POPUP -->

    <!-- MOBILE USER PROFILE MENU POPUP -->
    <!-- END USER PROFILE MENU POPUP -->

    <!-- LOGIN -->
    <section>
        <div class="login">
            <div class="container">
                <div class="row">
                    <div class="inn">
                        <div class="lhs">
                            <div class="tit">
                                <h2>Now <b>Find <br> your life partner</b> Easy and fast.</h2>
                            </div>
                            <div class="im">
                                <img src="images/login-couple.png" alt="">
                            </div>
                            <div class="log-bg">&nbsp;</div>
                        </div>
                        <div class="rhs">
                            <div>
                                <div class="form-tit">
								   
                                    <h1>Sign in to Matrimony</h1>
                                    <p>Not a member? <a href="sign_up.php">Sign up now</a></p>
									 <div><?php if(isset($alert)){echo $alert;}?></div>
                                </div>
                                <div class="form-login">
                                    <form method="POST">
                                        <div class="form-group">
                                            <label class="lb">Email:</label>
                                            <input type="email" class="form-control" id="email"
                                                placeholder="Enter email" name="email" value="<?php if(isset($_COOKIE["user_email"])){ echo $_COOKIE["user_email"];}?>">
                                        </div>
                                         
										<div class="form-group">
                                            <label class="lb">Password:</label>
                                            <input type="password" class="form-control" id="pwd"
                                                placeholder="Enter password" name="passwd" value="<?php if(isset($_COOKIE["user_pass"])){ echo $_COOKIE["user_pass"];}?>">
                                        </div>
										<div class="form-group form-check d-flex flex-md-row flex-column justify-content-between align-items-center">
                                            <div class="text-left">
											    <div class="checkbox checkbox-sm">
											       <label class="form-check-label">
                                                   <input class="form-check-input" type="checkbox" <?php if(isset($_COOKIE["user_email"])){ echo "checked";}?> name="agree"> Remember me
													</label>
												</div>
											</div>
											<div class="text-right"><a href="forgott_password.php" class="card-link"><small>Forgot Password?</small></a></div>
                                        </div>
                                        <button type="submit" class="btn btn-primary" name="btnSubmit">Sign in</button>
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

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/select-opt.js"></script>
    <script src="js/custom.js"></script>
	
	 <!-- FOOTER -->
	<?php include_once 'footer.php'; ?>
    <!-- END --> 
</body>


<!-- Dream Class By login.html  -->
</html>
