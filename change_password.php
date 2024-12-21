<?php
   session_start();
  include_once "connection.php";
  if(isset($_POST['Change_pwd']))
  {
    $qry="select * from admin_tbl where admin_id='".$_SESSION['admin_id']."'";
    $test=mysqli_query($conn,$qry);
    $result=mysqli_fetch_array($test); 
    $old_pwd=$result['admin_password'];
 
     if($old_pwd==$_POST['currpwd'])
     {
         if($_POST['newpwd']===$_POST['cfmpwd'])
          {
            $str="update admin_tbl set admin_password='".$_POST['newpwd']."' where admin_id='".$_SESSION['admin_id']."'";
            mysqli_query($conn,$str);
            echo "echo <script>alert('Password Changed Sucessfully..');
            window.location.href='index.php';
              </script>;";
          }
         else
          {
            $pwd_error="New Password and Confirm Password Doesn't Not Matched";
          }  
      }
      else
      {
         $oldpwd_error="Old Password Not Matched";
      }    
  }
?>
<!DOCTYPE html>

<html class="loading" lang="en" data-textdirection="ltr">
  <!-- BEGIN: Head-->
  
<!-- /index.html by,  04:41:56 GMT -->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description" content="Frest admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Frest admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Change Password</title>
    <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.html">
    <link rel="shortcut icon" type="image/x-icon" href="https://www.pixinvent.com/demo/frest-clean-bootstrap-admin-dashboard-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,600%7CIBM+Plex+Sans:300,400,500,600,700" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/forms/select/select2.min.css">
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
    
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/css/plugins/forms/validation/form-validation.css">
    <!-- END: Page CSS-->

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
        </div>
        <div class="content-body">
          <?php if(isset($oldpwd_error))  { ?>
             <div class="alert alert-danger">
                <strong>Oops!</strong> <?php echo $oldpwd_error; ?></a>.
              </div>
            <?php } ?>
            <?php if(isset($pwd_error))  { ?>
             <div class="alert alert-danger">
                <strong>Oops!</strong> <?php echo $pwd_error; ?></a>.
              </div>
            <?php } ?>
          <!-- Start here Conetent -->
              <section class="simple-validation">

              <div class="row">
                <div class="col-md-12">
                  <div class="card">
                    <div class="card-header">
                      <h4 class="card-title">Change Password</h4>
                    </div>
                    <div class="card-body">
                      <form id="custom_val" method="POST">
                      
                        <div class="form-group">
                          <label class="form-label" for="basic-default-name">Current Password</label>
                          <input
                            type="password"
                            class="form-control"
                            id="currpwd"
                            name="currpwd"
                            placeholder="Enter Your Current Password"
                          />
                        </div>
                        
                        <div class="form-group">
                          <label class="form-label" for="basic-default-name">New Password</label>
                          <input
                            type="password"
                            class="form-control"
                            id="newpwd"
                            name="newpwd"
                            placeholder="Enter Your New Password"
                          />
                        </div>

                         <div class="form-group">
                          <label class="form-label" for="basic-default-name">Confirm Password</label>
                          <input
                            type="password"
                            class="form-control"
                            id="cfmpwd"
                            name="cfmpwd"
                            placeholder="Enter Your Confirm Password"
                          />
                        </div>
                       
                        <div class="row">
                          <div class="col-12">
                            <button type="submit" class="btn btn-primary" name="Change_pwd" value="Submit">Submit</button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </section>

          <!-- End here Conetent -->
            

        </div>
      </div>
    </div>
    <!-- END: Content-->



    </div>
    <!-- End: Customizer-->



    </div>
    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
    <?php include_once "footer.php"; ?>
    <!-- END: Footer-->

    <!-- BEGIN: Vendor JS-->
    <script src="app-assets/vendors/js/vendors.min.js"></script>
    <script src="app-assets/fonts/LivIconsEvo/js/LivIconsEvo.tools.min.js"></script>
    <script src="app-assets/fonts/LivIconsEvo/js/LivIconsEvo.defaults.min.js"></script>
    <script src="app-assets/fonts/LivIconsEvo/js/LivIconsEvo.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="app-assets/js/core/app-menu.min.js"></script>
    <script src="app-assets/js/core/app.min.js"></script>
    <script src="app-assets/js/scripts/components.min.js"></script>
    <script src="app-assets/js/scripts/footer.min.js"></script>
    <script src="app-assets/js/scripts/customizer.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="app-assets/js/scripts/forms/validation/form-validation.js"></script>
    <!-- END: Page JS-->
    <script type="text/javascript">
      
      $(document).ready(function() {
          $("#custom_val").validate({
                rules: {
                    currpwd : {
                        required: true,
                        minlength: 3
                    }, newpwd : {
                        required: true,
                    },  cfmpwd : {
                        required: true,
                    }
                        
                    // age: {
                    //     required: true,
                    //     number: true,
                    //     min: 18
                    // },
                    }
                });
                messages : {
                      currpwd: {
                      required: "Please enter Your old Password"
                    }
                }
         
          });
    </script>>
  </body>
  <!-- END: Body-->

<!-- /form-validation.html by,  04:45:04 GMT -->
</html>