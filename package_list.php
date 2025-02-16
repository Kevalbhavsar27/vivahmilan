<!DOCTYPE html>
<?php 
session_start();
if(!isset($_SESSION["ID"]))
{
  
  header('location:index.php');
}

include("connection.php")?>
<html class="loading" lang="en" data-textdirection="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description" content="Frest admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Frest admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Package List | <?php echo $a?></title>
    <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.html">
    <link rel="icon" type="image/png" href="images/icon2.png">
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,600%7CIBM+Plex+Sans:300,400,500,600,700" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/datatable/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/datatable/responsive.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/tables/datatable/buttons.bootstrap4.min.css">
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
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <!-- END: Custom CSS-->

    <style>
        .gold {
            color: #FFD700; /* Gold color */
            font-weight: bold;
        }

        .silver {
            color: #C0C0C0; /* Silver color */
            font-weight: bold;
        }

        .platinum {
            color: #E5E4E2; /* Platinum color */
            font-weight: bold;
        }
    </style>



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

    <!--BEGIN  Fa Fa Link-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- END Fa Fa Link-->

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
                  <li class="breadcrumb-item"><a href="dashboard.php"><i class="bx bx-home-alt"></i></a>
                  </li>
                  <li class="breadcrumb-item"><a href="package_list.php">Package List</a>
                  </li>
                </ol>
              </div>
            </div>
          </div>
        </div>
        <div class="content-body"><!-- Simple Validation start -->
        <section id="column-selectors">
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">
                  <a href="package.php"><button type="submit" class="btn btn-primary" name="submit" value="Submit">+ Add Package</button></a><br><br>
                  Package list
                  </h4>
                </div>

                
                <div class="card-body card-dashboard">
                 <!-- insert msg start here-->
                 <?php if(isset($_SESSION['success'])) {?>
                          <div class="alert alert-success">
                              <strong>Success!</strong> Package Added
                          </div>
                      <?php } 
                      unset($_SESSION['success']);
                      ?>
                  <!-- insert msg end here-->

                    <!-- update msg start here-->
                    <?php 
                          if(isset($_SESSION['upd_comm'])) {?>
                                <div class="alert alert-info">
                                    <strong>Success!</strong>Package Updated
                                </div>
                            <?php } 
                            unset($_SESSION['upd_comm']);
                        ?>
                   <!-- update3 msg end here-->

                  <div class="table-responsive">
                    <table class="table table-striped dataex-html5-selectors">
                      <thead>
                        <tr>
                          <th>Package ID</th>
                          <th>Package Name</th>
                          <th>Package Price (₹)</th>
                          <th>Package Duration</th>
                          <th>Package Status</th>
                          <th>Action</th>
                          
                        </tr>
                      </thead>
                      <tbody>
                        <?php 
                          $query="select * from tbl_package";
                          $display= mysqli_query($conn, $query) or die(mysqli_error($conn));
                          while ($row=mysqli_fetch_array($display)){
                          ?>
                          <tr>
                            <td><?php echo $row['Package_ID'];?></td>
                            <td>
                            <?php
                              // Assuming $row['Package_Name'] contains the package name
                              if ($row  ['Package_Name'] == "Silver") {
                                  echo "<b style='color:#ad9a9a;'>" . ucfirst($row['Package_Name']) . "</b>";
                              } elseif ($row['Package_Name'] == "Gold") {
                                  echo "<b style='color:gold;'>" . ucfirst($row['Package_Name']) . "</b>";
                              } elseif ($row['Package_Name'] == "Platinum") {
                                  echo "<b style='color:#8b8bec;'>" . ucfirst($row['Package_Name']) . "</b>";
                              } else {
                                  // Default styling for unknown package names
                                  echo "<b>" . ucfirst($row['Package_Name']) . "</b>";
                              }
                              ?>

                            </td>                                  

                            <td><?php echo $row['Package_Price'];?></td>
                            <td><?php echo $row['Package_Duration'];?></td>
                            <td>
                            <span class="custom-control custom-switch">
                              <input type="checkbox" class="custom-control-input"
                              id="packageSwitch_<?php echo $row['Package_ID']; ?>"
                              <?php if($row['Package_Status'] == '1') { echo 'checked'; } ?>
                              onclick="toggleStatus( <?php echo $row['Package_ID']; ?> )">
                              <label class="custom-control-label" for="packageSwitch_<?php echo $row['Package_ID']; ?>"></label>
                            </span>
                            </td>
                            <td><a href="package.php?ID=<?php echo $row['Package_ID'];?>"><i class="fa fa-edit" style="font-size:20px;color:black"></i></a></td>
                          </tr>
                          <?php } ?>
                      </tfoot>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

        </div>
      </div>
    </div>
    <!-- END: Content-->
                 
    <!-- BEGIN: Customizer-->
  
    <!-- End: Customizer-->

    
<!-- widget chat demo footer button ends -->
<!-- widget chat demo start -->
<div class="widget-chat widget-chat-demo d-none">
  <div class="card mb-0">
    <div class="card-header border-bottom p-0">
      <div class="media m-75">
        <a href="JavaScript:void(0);">
          <div class="avatar mr-75">
            <img src="app-assets/images/portrait/small/avatar-s-2.jpg" alt="avtar images" width="32"
              height="32">
            <span class="avatar-status-online"></span>
          </div>
        </a>
        <div class="media-body">
          <h6 class="media-heading mb-0 pt-25"><a href="javaScript:void(0);">Kiara Cruiser</a></h6>
          <span class="text-muted font-small-3">Active</span>
        </div>
      </div>
      <div class="heading-elements">
        <i class="bx bx-x widget-chat-close float-right my-auto cursor-pointer"></i>
      </div>
    </div>
    <div class="card-body widget-chat-container widget-chat-demo-scroll">
      <div class="chat-content">
        <div class="badge badge-pill badge-light-secondary my-1">today</div>
        <div class="chat">
          <div class="chat-body">
            <div class="chat-message">
              <p>How can we help? 😄</p>
              <span class="chat-time">7:45 AM</span>
            </div>
          </div>
        </div>
        <div class="chat chat-left">
          <div class="chat-body">
            <div class="chat-message">
              <p>Hey John, I am looking for the best admin template.</p>
              <p>Could you please help me to find it out? 🤔</p>
              <span class="chat-time">7:50 AM</span>
            </div>
          </div>
        </div>
        <div class="chat">
          <div class="chat-body">
            <div class="chat-message">
              <p>Stack admin is the responsive bootstrap 4 admin template.</p>
              <span class="chat-time">8:01 AM</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="card-footer border-top p-1">
      <form class="d-flex" onsubmit="widgetChatMessageDemo();" action="javascript:void(0);">
        <input type="text" class="form-control chat-message-demo mr-75" placeholder="Type here...">
        <button type="submit" class="btn btn-primary glow px-1"><i class="bx bx-paper-plane"></i></button>
      </form>
    </div>
  </div>
</div>
<!-- widget chat demo ends -->

    </div>
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
    <script src="app-assets/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/dataTables.bootstrap4.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/dataTables.buttons.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/buttons.bootstrap4.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
    <script src="app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="app-assets/js/core/app-menu.min.js"></script>
    <script src="app-assets/js/core/app.min.js"></script>
    <script src="app-assets/js/scripts/components.min.js"></script>
    <script src="app-assets/js/scripts/footer.min.js"></script>
    <script src="app-assets/js/scripts/customizer.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="app-assets/js/scripts/datatables/datatable.min.js"></script>
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