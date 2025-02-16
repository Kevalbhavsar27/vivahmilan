<?php
session_start();
if(!isset($_SESSION["ID"]))
{
  
  header('location:index.php');
}

  include "connection.php";
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
    <title>Package Add | <?php echo $a?></title>
    <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.html">
    <link rel="icon" type="image/png" href="images/icon2.png">
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
    <link rel="stylesheet" type="text/css" href="app-assets/css/plugins/forms/validation/form-validation.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <!-- END: Custom CSS-->

  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="vertical-layout vertical-menu-modern boxicon-layout no-card-shadow 2-columns  navbar-sticky footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="2-columns">

    <!-- BEGIN: Header-->
        <?php include_once 'header.php';?>
    <!-- END: Header-->


    <!-- BEGIN: Main Menu-->
        <?php include_once 'sidebar.php';?>
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content">
      <div class="content-overlay"></div>
      <div class="content-wrapper">
        <div class="content-header row">
          <div class="content-header-left col-12 mb-2 mt-1">
            <div class="breadcrumbs-top">
              <h5 class="content-header-title float-left pr-1 mb-0">Package</h5>
              <div class="breadcrumb-wrapper d-none d-sm-block">
                <ol class="breadcrumb p-0 mb-0 pl-1">
                  <li class="breadcrumb-item"><a href="index.php"><i class="bx bx-home-alt"></i></a>
                  </li>
                  <li class="breadcrumb-item active">Package
                  </li>
                </ol>
              </div>
            </div>
          </div>
        </div>
        <div class="content-body"><!-- Simple Validation start -->
        <?php 
include "connection.php";
include "conn.php";
 
$nm=$pr=$du="";
if(isset($_GET['ID']))
{
  
  $ID=$_GET['ID'];
  $str="select * from tbl_package where  Package_ID =".$ID;
  $data=mysqli_query($conn,$str);
  $row=mysqli_fetch_array($data);
  $nm=$row['Package_Name'];
  $pr=$row['Package_Price'];
  $du=$row['Package_Duration'];
}
if(isset($_POST['submit']))
{
  if(!empty($_GET['ID']))
  {
    $str="update tbl_package set Package_Name ='".$_POST['name']."' , Package_Price ='".$_POST['price']."' , Package_Duration ='".$_POST['pduration']."' where Package_ID = ".$ID;
    mysqli_query($conn,$str);
    $_SESSION['upd_comm']="Package Updated";
    echo " <script>window.location.href = 'package_list.php';</script>";    
  }
  else
  {
    $status=1;
    $str="insert into tbl_package values(NULL,'".$_POST['name']."','".$_POST['price']."','".$_POST['pduration']."','".$status."')";
    $success=mysqli_query($conn,$str);
    $_SESSION['success']="Package Added";
    echo " <script>window.location.href = 'package_list.php';</script>";
  }
     
}

              
?>
<section class="simple-validation">
             
             <div class="row">
                 <div class="col-md-12">
                 <div class="card">
                     <div class="card-header">
                     <h4 class="card-title">Package</h4>
                     </div>
                     <div class="card-body">
                       <?php if(isset($success)) {?>
                       <div class="alert alert-success">
                           <strong>Success!</strong> Package Added
                       </div>
                       <?php } ?>
                     <form id="jquery-val-form" method="post">
                         <div class="form-group">
                         <label class="form-label" for="basic-default-name">Package Name</label>
                         <select name="name" id="" class="form-control" value="<?php echo $nm?>">
                            <option value="Silver" class="form-control">Silver</option>
                            <option value="gold" class="form-control">Gold</option>   
                            <option value="platinum" class="form-control">Platinum</option>                      
                        </select>
                         <label class="form-label" for="basic-default-name">Package Price</label>
                         <input
                             type="text"
                             class="form-control"
                             id="basic-default-name"
                             name="price"
                             placeholder="Enter Package Price Here"
                             value="<?php echo $pr?>"
                             required
                         />
                         <label class="form-label" for="basic-default-name">Package Duration</label>
                         <!-- <input
                             type="text"
                             class="form-control"
                             id="basic-default-name"
                             name="pduration"
                             placeholder="Enter Package-duration here"
                             value="<?php echo $du?>"
                             required
                         /> -->
                         <select name="pduration" id="" class="form-control" value="<?php echo $nm?>">
                            <option value="1" class="form-control">1</option>
                            <option value="2" class="form-control">2</option>   
                            <option value="3" class="form-control">3</option>       
                            <option value="4" class="form-control">4</option>
                            <option value="5" class="form-control">5</option>   
                            <option value="6" class="form-control">6</option>       
                            <option value="7" class="form-control">7</option>
                            <option value="8" class="form-control">8</option>   
                            <option value="9" class="form-control">9</option>       
                            <option value="10" class="form-control">10</option>
                            <option value="11" class="form-control">11</option>   
                            <option value="12" class="form-control">12</option>                      
                        </select>
                         <br>
                         </div>
                         <div class="row">
                         <div class="col-12">
                             <button type="submit" class="btn btn-primary" name="submit" value="Submit">Submit</button>
                         </div>
                         </div>
                     </form>
                     </div>
                 </div>
                 </div>
                 </div>
             </div>
             </section>

            <!-- Input Validation end -->

        </div>
      </div>
    </div>
    <!-- END: Content-->


    <!-- BEGIN: Customizer-->
    
    <!-- End: Customizer-->

    <!-- Buynow Button-->
    
    <!-- demo chat-->
    
    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
        <?php include_once 'footer.php'; ?>
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
    <script>
	
  function toggleStatus(p_id)
  {
      $.ajax({
        url: "status.php",
        type: "POST",
        data: { Pack_id: p_id },
        success: function(result){
          if(result == 1){
            alert("Status set to active");
          }
          else{
            alert("Status set to inactive");
          }
        }
    })
  }
  
  $("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>                     
  </body>
  <!-- END: Body-->

<!-- /index.html by,  04:42:26 GMT -->
</html>