<?php
include_once 'connection.php';

$alert = "";

if (isset($_POST['btnSubmit'])) {
    $email = trim($_POST['email']);
    $password = trim($_POST['passwd']);

    // Prepared statement to fetch active user
    $stmt = $conn->prepare("SELECT * FROM member_tbl WHERE member_email = ? AND member_password = ? AND member_status = 1");
    $stmt->bind_param("ss", $email, $password);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_assoc();
    $count = $result->num_rows;
    $stmt->close();

    if ($count > 0) {
        // Set user session variables
        $_SESSION["user_fname"] = $user['member_firstname'];
        $_SESSION["user_lname"] = $user['member_lastname'];
        $_SESSION["user_Email"] = $user['member_email'];
        $_SESSION["user_profile"] = $user['member_image'];
        $_SESSION["user_id"] = $user['member_id'];
        $_SESSION["member_gender"] = $user['member_gender'];
        $_SESSION["member_id"] = $user['member_id'];

        // Set looking for based on user's gender
        $looking_for = ($user['member_looking_for'] == "Male") ? "Female" : "Male";
        $_SESSION['member_looking_for'] = $looking_for;

        $member_id = $_SESSION['member_id'];

        // Insert login detail
        $stmt = $conn->prepare("INSERT INTO login_details (user_id) VALUES (?)");
        $stmt->bind_param("i", $member_id);
        $stmt->execute();
        $_SESSION['login_details_id'] = $stmt->insert_id;
        $stmt->close();

        // Update package status if expiry is today
        $stmt = $conn->prepare("UPDATE package_detail_tbl SET package_detail_status = 0 WHERE member_id = ? AND package_exp_date = CURDATE()");
        $stmt->bind_param("i", $member_id);
        $stmt->execute();
        $stmt->close();

        // Check for active packages
        $stmt = $conn->prepare("SELECT * FROM package_detail_tbl WHERE package_detail_status = 1 AND member_id = ?");
        $stmt->bind_param("i", $member_id);
        $stmt->execute();
        $result = $stmt->get_result();
        $_SESSION['cnt_member'] = $result->num_rows;
        $stmt->close();

        // Handle "remember me" cookies
        if (isset($_POST['agree'])) {
            setcookie("user_email", $email, time() + (60 * 2));
            setcookie("user_pass", $password, time() + (60 * 2));
        } else {
            setcookie("user_email", "", time() - 3600);
            setcookie("user_pass", "", time() - 3600);
        }

        // Redirect to homepage
        header('Location: index.php');
        exit;
    } else {
        // Check if user is denied
        $stmt = $conn->prepare("SELECT * FROM member_tbl WHERE member_email = ? AND member_status = 0");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows > 0) {
            $alert = "<span style='color:red'>Your Profile is Denied By Admin</span>";
        } else {
            $alert = "<span style='color:red'>Invalid Email or Password</span>";
        }

        $stmt->close();
    }
}
?>

<!-- HTML form part (if needed) -->
<?php if (!empty($alert)) echo $alert; ?>

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
								   
                                    <h1>Sign in to Vivah Milan</h1>
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
