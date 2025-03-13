<!DOCTYPE html>
<?php
 session_start();
 
 
 require_once("connection.php");
 // if(!isset($_SESSION['admin_mail']))
 // {
 //  header('location:index.php');
 //  }
  
 ?>
<!-- beautify ignore:start -->
<html lang="en" class="light-style  customizer-hide" dir="ltr" data-theme="theme-default" data-assets-path="assets/" data-template="vertical-menu-template">

  
<!--  auth-forgot-password-basic       , Wed, 09 Feb 2022 09:14:39 GMT -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Forgot Password | <?php echo $a;?></title>
    
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 5" />
    <meta name="keywords" content="dashboard, bootstrap 5 dashboard, bootstrap 5 design, bootstrap 5">
    <!-- Canonical SEO -->
    <link rel="canonical" href="https://1.envato.market/frest_admin">
    
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="https://pixinvent.com/demo/frest-clean-bootstrap-admin-dashboard-template/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" href="assets/vendor/fonts/boxicons.css" />
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome.css" />
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="assets/vendor/libs/typeahead-js/typeahead.css" />
    <!-- Vendor -->
<link rel="stylesheet" href="assets/vendor/libs/formvalidation/dist/css/formValidation.min.css" />

    <!-- Page CSS -->
    <!-- Page -->
<link rel="stylesheet" href="assets/vendor/css/pages/page-auth.css">
    <!-- Helpers -->
    <script src="assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="assets/js/config.js"></script>
    
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async="async" src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
      dataLayer.push(arguments);
    }
    gtag('js', new Date());
    gtag('config', 'GA_MEASUREMENT_ID');
    </script>
    <!-- Custom notification for demo -->
    <!-- beautify ignore:end -->

</head>

<body>
 <?php
  if(isset($_POST['sbtn']))
 {  
    $qry="select * from tbl_admin where Admin_Email='".$_POST['eid']."'";
    //echo $qry;die;
     $result=mysqli_query($conn,$qry);
     if(mysqli_num_rows($result)>0)
     {
        $_SESSION['admin_mail']=$_POST['eid'];
        $otp=rand(100000,999999);
        $status=1;
        $time=time();

        
        require 'PHPMailer/PHPMailerAutoload.php';
        require 'PHPMailer/class.phpmailer.php';
       // require 'PHPMailer/class.smtp.php';
        $data=mysqli_fetch_array($result);
        $_SESSION['user_name_data']=$data['Admin_Name'];
        $otp=rand(100000,999999);
        $_SESSION['random_otp']=$otp;
        //$to_id = $_POST['toid'];
        //$_SESSION['forgot_email']=$uid;
        $uid=$_POST['eid'];
        $subject = "Forgot Password";
        $setfrom="Vivaahmilan";
        
        // Retrieve the email template required
        $message = '
                    <html>
                    <head>
                    <title>HTML email</title>
                    <style>

                    </style>
                    </head>
                    <body>
                    
                    <div class="c-email" style="width:60%;margin:auto;border:1px solid #BAE3FF;border-radius:5px;padding:30px 30px 12px 30px;">
                
                      <div style="text-align:center">
                       Vivaahmilan
                      </div>
                      
                      <div class="c-email__content">
                        <p style="font-size:14px;font-family:roboto;color:#383838;font-weight:bold;">
                          Dear '.$_SESSION['user_name_data'].',</p>

                        <o>You have requested to recover your password for online access to our website. We have generated a One - Time Passcode for you which will verify that you have requested access. This One - Time Passcode is time sensitive and valid for a single use.</o><br>

                        <div class="c-email__code" style="text-align:center;margin-top:10px;margin-bottom:10px">
                          <span style="font-size:15px;font-family:roboto;color:#388080;font-weight:bold;">'.$_SESSION['random_otp'].'</span>
                        </div>
                      </div>
                     
                        <hr>
                        <div style="font-size:10px;font-family:roboto;color:#383838;text-align:center">
                            <o>Thank you for utilising our services</o><br>
                            <o>-</o><br>
                            <o>Vivaahmilan</o><br>
                            <o>99552 44556, 99556 22885</o><br>
                            <o>www.vivaahmilan123@gmail.com</o><br>
                            <o>Dream Infotech User Authentication</o>
                        </div>
                    </div>
                    </body>
                    </html>
            ';
            $mail = new PHPMailer();
        
            $mail->isSMTP();
            //$mail->SMTPDebug = 2;
            $mail->Host = 'smtp.gmail.com';
            $mail -> SMTPSecure = 'tls';
            $mail -> SMTPAuth = true;
            $mail->CharSet = "UTF-8";
            $mail->Port = 587;
            $mail->Username   = 'vivaahmilan123@gmail.com';
            $mail->Password   = 'cqtebwsyvwpyrzkv';
            $mail->FromName = $setfrom;
            $mail->addAddress($uid);
            $mail->Subject = $subject;
            $mail->msgHTML($message);
            if($mail->send())
            {
                $str="insert into otp_status values(NULL,'".$otp."','".$status."','".$time."')";
                //echo $str;die;
                $success=mysqli_query($conn,$str);
               

                if($success)
                {
                  //header('location:verify_code.php');
                 //   echo "hii".$str;die;
                ?> 
                    <script>
                        swal({
                              title: 'Good Job',
                              text: 'OTP send sucessfully.please check your email',
                              icon: "success",
                            }).then(function() {
                                window.location.href = "verify_code.php";
                            })
                    </script>

                    <!-- echo ("<script>window.alert('OTP send sucessfully.please check your email') ; window.location.href='code.php'; </script>"); -->
                    <?php
                    //header('location:code.php');
                }
            }  
     }
    else
    {
    ?>
    <script>
        swal({
        title: "OOPS!",
        text: "Incorrect mail",
        icon: "error",
        //button: "Aww yiss!",
        });
    </script>
    <?php } } ?>
  <!-- Content -->

<div class="container-xxl">
  <div class="authentication-wrapper authentication-basic container-p-y">
    <div class="authentication-inner py-4">
      <!-- Forgot Password -->
      <div class="card">
        <div class="card-body">
          <!-- Logo -->
          <div class="app-brand justify-content-center">
            <a href="index.php" class="app-brand-link gap-2">
            <div class="brand-logo">
              
              <img src="icon.png" alt="" height="60px" width="60px">
            </div>

              </span>
              <span class="app-brand-text demo h3 mb-0 fw-bold">Vivaahmilan</span>
            </a>
          </div>
          <!-- /Logo -->
          <h4 class="mb-2">Forgot Password? 🔒</h4>
          <p class="mb-4">Enter your email and we'll send you instructions to reset your password</p>
          <form id="formAuthentication" class="mb-3" method="POST" >
            <div class="mb-3">
              <label for="email" class="form-label">Email</label>
              <input type="email" class="form-control" id="email" name="eid" placeholder="Enter your email" autofocus>
            </div>
            <button type="submit" name="sbtn" class="btn btn-primary glow position-relative w-100">Send Reset Link<i id="icon-arrow" class="bx bx-right-arrow-alt"></i></button>
          </form>
          <div class="text-center">
            <a href="index.php" class="d-flex align-items-center justify-content-center">
              <i class="bx bx-chevron-left scaleX-n1-rtl"></i>
              Back to login
            </a>
          </div>
        </div>
      </div>
      <!-- /Forgot Password -->
    </div>
  </div>
</div>

<!-- / Content -->

  
  
  

  <!-- Core JS -->
  <!-- build:js assets/vendor/js/core.js -->
  <script src="assets/vendor/libs/jquery/jquery.js"></script>
  <script src="assets/vendor/libs/popper/popper.js"></script>
  <script src="assets/vendor/js/bootstrap.js"></script>
  <script src="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
  <script src="assets/vendor/libs/hammer/hammer.js"></script>
  <script src="assets/vendor/libs/i18n/i18n.js"></script>
  <script src="assets/vendor/libs/typeahead-js/typeahead.js"></script>
  
  <script src="assets/vendor/js/menu.js"></script>
  <!-- endbuild -->

  <!-- Vendors JS -->
  <script src="assets/vendor/libs/formvalidation/dist/js/FormValidation.min.js"></script>
<script src="assets/vendor/libs/formvalidation/dist/js/plugins/Bootstrap5.min.js"></script>
<script src="assets/vendor/libs/formvalidation/dist/js/plugins/AutoFocus.min.js"></script>

  <!-- Main JS -->


  <!-- Page JS -->

</body>


<!--  auth-forgot-password-basic       , Wed, 09 Feb 2022 09:14:39 GMT -->
</html>
