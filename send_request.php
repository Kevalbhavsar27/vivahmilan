<?php
	include_once 'connection.php';
    session_start();
?>
<!doctype html>
<html lang="en">


<!-- Dream Class By all-profiles.html  [XR&CO'2014], Fri, 14 Feb 2025 06:49:11 GMT -->
<head>
    <title><?php echo $WEB_TITLE?></title>
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
	<?php 
	if(isset($_POST['Btnconnect']))
		{
		  $send_id=implode(",",$_POST['member_connectId']);
		  $req_date=date("Y-m-d");
		  $member_connect="insert into tbl_send_request values(null,'".$_SESSION['member_id']."','".$send_id."','".$req_date."')";
		 // echo $member_connect;die;
		  $memebr_req=mysqli_query($conn,$member_connect);

		  if(isset($memebr_req)){
			echo "<script type='text/javascript'>  window.location='plans.php'; </script>";

		  }
		  else{
			  echo "<script>alert('something went wrong plz try again..')</script>";
		  }
		}
		?>
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
    <!-- END MOBILE MENU POPUP -->

    <!-- MOBILE USER PROFILE MENU POPUP -->
    
    <!-- END USER PROFILE MENU POPUP -->

    <!-- SUB-HEADING -->
    <section>
        <div class="all-pro-head">
            <div class="container">
                <div class="row">
                    <h1>Lakhs of Happy Marriages</h1>
                    <a href="sign-up.html">Join now for Free <i class="fa fa-handshake-o" aria-hidden="true"></i></a>
                </div>
            </div>
        </div>
        <!--FILTER ON MOBILE VIEW-->
        <div class="fil-mob fil-mob-act">
            <h4>Profile filters <i class="fa fa-filter" aria-hidden="true"></i> </h4>
        </div>
    </section>
    <!-- END -->

    <!-- START -->
    <section>
        <div class="all-weddpro all-jobs all-serexp chosenini">
		<form method="POST"> 
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        
                        <div class="all-list-sh view-grid">
                            <ul id="members">
							   	<?php 
									$member_DBgender="select * from tbl_member where Member_ID='".$_SESSION['member_id']."'";
									$res_gender=mysqli_query($conn,$member_DBgender);
									$row_gender=mysqli_fetch_array($res_gender);          
									$member_gender=$row_gender['Member_Looking_For'];
									//echo "hi".$member_gender;die;
									if($member_gender=="Female")
									{
										$member_gender="Male";
									}
									else
									{
										$member_gender="Female";
									}
									$str="select * from tbl_member 
									join tbl_member_detail on tbl_member.Member_ID=tbl_member_detail.Member_ID
									where Member_Looking_For like '".$member_gender."'";
									//echo $str;
									$res=mysqli_query($conn,$str);
									while($row=mysqli_fetch_array($res))
									{
										//echo $row['member_id'];
								?>
									<li>
										<div class="all-pro-box user-avil-onli" data-useravil="avilyes"
											data-aviltxt="Available online">
											<!--PROFILE IMAGE-->
											<div class="pro-img">
												<a href="profile_details.php?member_id=<?php echo $row['Member_ID']; ?>">
												<?php 
													if(!empty($row['Member_Image']))
													{ 
												?>
														<img src="member_profiles/<?php echo $row['Member_Image']; ?>" />
												<?php 
													}
													else
													{ 
												?>
														<img src="member_profiles/image_placeholder.jpg" />
												<?php 
													} 
												?>  

												</a>
												<div class="pro-ave" title="User currently available">
													<span class="pro-ave-yes"></span>
												</div>
												<div class="pro-avl-status">
													<h5>Last login 10 mins ago</h5>
													<span class="marqu">Last login 10 mins ago | I'll be available on 10:00
														AM</span>
												</div>
												<div class="pro-ave" title="User currently available">
													<span class="pro-ave-yes"></span>
												</div>
												<div class="pro-avl-status">
													
												</div>
											</div>
											<!--END PROFILE IMAGE-->

											<!--PROFILE NAME-->
											<div class="pro-detail">
										
												<h4><a href="profile_details.php?member_id=<?php echo $row['Member_ID']; ?>"><?php echo ucfirst($row['Member_Lastname']) . " " . ucfirst($row['Member_Firstname']); ?></a></h4>
												<div class="pro-bio">
													<span><?php echo ucfirst($row['Member_Rashi']);?></span>
													<span><?php echo ucfirst($row['Member_Weight']);?></span>
													<span><?php echo $row['Member_Age'];?></span>
													<span><?php echo $row['Member_Height'];?></span>
												</div>
												<input type="checkbox" name="member_connectId" value="<?php echo $row['Member_ID']; ?>" style="margin: -20px -65px 0 0;" class="checkbox01" checked>
											</div>
											<!--END PROFILE NAME-->
											<!--SAVE-->

											<span class="enq-sav" data-toggle="tooltip" title="Click to save this provile.">
											<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
											</span>
											<!--END SAVE-->
										</div>
									</li>
								<?php
									}
								?>
                            </ul>
									<div class="form-actions">
											<input type="submit" id="edit-submit" style="border-radius: 17px; width: 400px; margin-left: 32%;" name="Btnconnect" value="Connect with Selected" class="btn_1 submit"> 
									</div>
                        </div>
                    </div>
                </div>
            </div>
			</form>
        </div>
    </section>
    <!-- END -->


    <!-- INTEREST POPUP -->
    <div class="modal fade" id="sendInter">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title seninter-tit">Send interest to <span class="intename2">Jolia</span></h4>
                    <button type="button" class="close" data-bs-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body seninter">
                    <div class="lhs">
                        <img src="images/profiles/1.jpg" alt="" class="intephoto2">
                    </div>
                    <div class="rhs">
                        <h4>Permissions: <span class="intename2">Jolia</span> Can able to view the below details</h4>
                        <ul>
                            <li>
                                <div class="chbox">
                                    <input type="checkbox" id="pro_about" checked="">
                                    <label for="pro_about">About section</label>
                                </div>
                            </li>
                            <li>
                                <div class="chbox">
                                    <input type="checkbox" id="pro_photo">
                                    <label for="pro_photo">Photo gallery</label>
                                </div>
                            </li>
                            <li>
                                <div class="chbox">
                                    <input type="checkbox" id="pro_contact">
                                    <label for="pro_contact">Contact info</label>
                                </div>
                            </li>
                            <li>
                                <div class="chbox">
                                    <input type="checkbox" id="pro_person">
                                    <label for="pro_person">Personal info</label>
                                </div>
                            </li>
                            <li>
                                <div class="chbox">
                                    <input type="checkbox" id="pro_hobbi">
                                    <label for="pro_hobbi">Hobbies</label>
                                </div>
                            </li>
                            <li>
                                <div class="chbox">
                                    <input type="checkbox" id="pro_social">
                                    <label for="pro_social">Social media</label>
                                </div>
                            </li>
                        </ul>
                        <div class="form-floating">
                            <textarea class="form-control" id="comment" name="text"
                                placeholder="Comment goes here"></textarea>
                            <label for="comment">Write some message to <span class="intename"></span></label>
                        </div>
                    </div>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Send interest</button>
                    <button type="button" class="btn btn-outline-danger" data-dismiss="modal">Cancel</button>
                </div>

            </div>
        </div>
    </div>
    <!-- END INTEREST POPUP -->

    <!-- CHAT CONVERSATION BOX START -->
    <div class="chatbox">
        <span class="comm-msg-pop-clo"><i class="fa fa-times" aria-hidden="true"></i></span>

        <div class="inn">
            <form name="new_chat_form" method="post">
                <div class="s1">
                    <img src="images/user/2.jpg" class="intephoto2" alt="">
                    <h4><b class="intename2">Julia</b>,</h4>
                    <span class="avlsta avilyes">Available online</span>
                </div>
                <div class="s2 chat-box-messages">
                    <span class="chat-wel">Start a new chat!!! now</span>
                    <div class="chat-con">
                        <div class="chat-lhs">Hi</div>
                        <div class="chat-rhs">Hi</div>
                    </div>
                    <!--<span>Start A New Chat!!! Now</span>-->
                </div>
                <div class="s3">
                    <input type="text" name="chat_message" placeholder="Type a message here.." required="">
                    <button id="chat_send1" name="chat_send" type="submit">Send <i class="fa fa-paper-plane-o" aria-hidden="true"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
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
	<script>
		function get_member(val) {
			//alert(val);
			$.ajax({
				type: "POST",
				url: "get_member.php",
				data:'city_id='+val,
				success: function(data){
					$("#members").html(data);
				}
			});
			
			/* $.ajax({
				type: "POST",
				url: "get_member.php",
				data:'member_religion='+val,
				success: function(data){
					$("#members").html(data);
				}
			});
			
			$.ajax({
				type: "POST",
				url: "get_member.php",
				data:'member_min_age='+val,
				success: function(data){
					$("#members").html(data);
				}
			});
			$.ajax({
				type: "POST",
				url: "get_member.php",
				data:'member_max_age='+val,
				success: function(data){
					$("#members").html(data);
				}
			});
 */		}
	</script>
</body>


<!-- Dream Class By all-profiles.html  [XR&CO'2014], Fri, 14 Feb 2025 06:49:13 GMT -->
</html>