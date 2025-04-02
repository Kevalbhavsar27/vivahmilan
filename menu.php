<?php
    include_once 'connection.php';
?>


<style>
.al {
    float: left;
    position: relative;
    width: 150px;
    top: 25px;
    margin: -20px;
}
.notif-badge {
    position: absolute;
    top: -6px;
    right: 108px;
    min-width: 16px;
    height: 16px;
    background-color: red;
    color: white;
    font-size: 11px;
    padding: 0 4px;
    border-radius: 50%;
    font-weight: bold;
    text-align: center;
    line-height: 16px;
    display: none;
}

.notification-dropdown {
    display: none;
    position: absolute;
    top: 35px;
    right: 0;
    background: #fff;
    width: 250px;
    max-height: 300px;
    overflow-y: auto;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    border-radius: 8px;
    z-index: 999;
    font-size: 14px;
}

.notification-title {
    background: #f0f0f0;
    padding: 10px;
    font-weight: bold;
    border-bottom: 1px solid #ccc;
}

#notification-list {
    padding: 10px;
}

@media screen and (max-width: 1450px) {
    .hom-top:before, .pg-soon:before {
        width: 140px;
        height: 123px;
        background-size: 0px;
        background-position: -33px -43px;
    }
}
</style>


<!-- MENU POPUP -->
<div class="menu-pop menu-pop1">
	<span class="menu-pop-clo"><i class="fa fa-times" aria-hidden="true"></i></span>
	<div class="inn">
		<img src="images/icon1.png" alt="" loading="lazy" class="logo-brand-only">
		<p><strong>Best Vivaah Milan</strong>  Uniting Souls, Creating Everlasting Love!" 💍❤️</p>
		<ul class="menu-pop-info">
			<li><a href="#!"><i class="fa fa-phone" aria-hidden="true"></i>+91 9998675436</a></li>
			<li><a href="#!"><i class="fa fa-whatsapp" aria-hidden="true"></i>+91 9558659975</a></li>
			<li><a href="#!"><i class="fa fa-envelope-o" aria-hidden="true"></i>vivaahmilan123@gmail.com</a></li>
			<li><a href="#!"><i class="fa fa-map-marker" aria-hidden="true"></i>113,Raj Victoria, New Pal Lake Rd, opp. Raj Arcade, Near Galaxy Circle, Pal Gam-395009 Surat, Gujarat (India)</a></li>
		</ul>
		<div class="menu-pop-help">
			<h4>Support Team</h4>
			<div class="user-pro">
				<img src="./admin/admin_profiles/.jpg " alt="" loading="lazy">
			</div>
			<div class="user-bio">
				<h5>Vivaah Milan</h5>
				<ul>
					<li>Dhvanit Trivedi</li>
					<li>Uday Chauhan</li>
					<li>Shubham Mali</li>
					
				</ul>
				<!--<span>Senior personal advisor</span>
				<a href="enquiry.html" class="btn btn-primary btn-sm">Ask your doubts</a>-->
			</div>
		</div>
		<!--<div class="menu-pop-soci">
			<ul>
				<li><a href="#!"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
				<li><a href="#!"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="#!"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li>
				<li><a href="#!"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
				<li><a href="#!"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
				<li><a href="#!"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
			</ul>
		</div>-->
	</div>
</div>
<!-- END -->

<!-- CONTACT EXPERT -->
<div class="menu-pop menu-pop2">
	<span class="menu-pop-clo"><i class="fa fa-times" aria-hidden="true"></i></span>
	<div class="inn">
		<?php
			if(isset($_SESSION["updated_image"]) || isset($_SESSION["user_profile"])){
		?>
				<div class="menu-pop-help">
					<div class="user-pro">
						<img src="member_profiles/<?php if(isset($_SESSION["updated_image"])){ echo $_SESSION["updated_image"];}elseif(isset($_SESSION["user_profile"])){echo $_SESSION["user_profile"];}else{echo 'image_placeholder.jpg';}?>" alt="" loading="lazy">
					</div>
					<div class="user-bio">
						<h5><?php if(isset($_SESSION["Fname"]) && isset($_SESSION["Lname"])){ echo $_SESSION["Fname"]." ".$_SESSION["Lname"];}elseif(isset($_SESSION["user_fname"]) && isset($_SESSION["user_lname"])){echo $_SESSION["user_fname"]." ".$_SESSION["user_lname"];}?></h5><br>
						<a href="logout.php" class="btn btn-primary btn-sm">Sign out</a>
					</div>
				</div>
				<!--<div class="menu-pop-soci">
					<ul>
						<li><a href="#!"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="#!"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#!"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li>
						<li><a href="#!"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						<li><a href="#!"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
						<li><a href="#!"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					</ul>
				</div>-->
		<?php
			}
		?>
		
		<!--<div class="late-news">
			<h4>Latest news</h4>
			<ul>
				<li>
					<div class="rel-pro-img">
						<img src="images/couples/1.jpg" alt="" loading="lazy">
					</div>
					<div class="rel-pro-con">
						<h5>Long established fact that a reader distracted</h5>
						<span class="ic-date">12 Dec 2023</span>
					</div>
					<a href="blog-detail.html" class="fclick"></a>
				</li>
				<li>
					<div class="rel-pro-img">
						<img src="images/couples/3.jpg" alt="" loading="lazy">
					</div>
					<div class="rel-pro-con">
						<h5>Long established fact that a reader distracted</h5>
						<span class="ic-date">12 Dec 2023</span>
					</div>
					<a href="blog-detail.html" class="fclick"></a>
				</li>
				<li>
					<div class="rel-pro-img">
						<img src="images/couples/4.jpg" alt="" loading="lazy">
					</div>
					<div class="rel-pro-con">
						<h5>Long established fact that a reader distracted</h5>
						<span class="ic-date">12 Dec 2023</span>
					</div>
					<a href="blog-detail.html" class="fclick"></a>
				</li>
			</ul>
		</div>-->

		<!-- HELP BOX -->
		<!--<div class="prof-rhs-help">
			<div class="inn">
				<h3>Tell us your Needs</h3>
				<p>Tell us what kind of service you are looking for.</p>
				<a href="enquiry.html">Register for free</a>
			</div>
		</div>-->
		<!-- END HELP BOX -->
	</div>
</div>


<!-- MAIN MENU -->
<div class="hom-top">
	<div class="container">
		<div class="row">
			<div class="hom-nav">
				<!-- LOGO -->
				<div class="logo">
					<span class="menu desk-menu">
						<i></i><i></i><i></i>
					</span>
					<a href="index.php" class="logo-brand"><img src="images/icon1.png" style="height: 49px;" alt="" loading="lazy"
							class="ic-logo"></a>
				</div>

				<!-- EXPLORE MENU -->
				<div class="bl">
					<ul>
						<li><a href="index.php">Home</a></li>
						<li><a href="about.php">About</a></li>
						<li><a href="faq.php">Faq</a></li>
						
						<?php if(isset($_SESSION["member_id"])) {?>
						<li><a href="all_profiles.php">All-Profile</a></li>
							
						<li class="smenu-pare">
							<span class="smenu">Dashboard</span>
							<div class="smenu-open smenu-single">
								<ul>
									<?php 
										$str="Select * from member_tbl,member_detail_tbl,member_qualification_tbl,lifestyle_tbl where member_tbl.member_id=member_detail_tbl.member_id and member_detail_tbl.member_detail_id=member_qualification_tbl.member_detail_id and lifestyle_tbl.member_detail_id=member_detail_tbl.member_detail_id 
										AND member_tbl.member_id='".$_SESSION["member_id"]."'";
										$data=mysqli_query($conn,$str);
										$row=mysqli_fetch_array($data);
									?>
									<li><a href="user_dashboard.php?member_id=<?php echo $row['member_id']; ?>&religion=<?php echo $row['member_religion']; ?>&gen=<?php echo $row['member_gender']; ?>&city=<?php echo $row['member_city']; ?>">Dashboard</a></li>
									<!--<li><a href="user_profile.php">My profile</a></li>-->
									<li><a href="user_interests.php">Interests</a></li>
									<!--<li><a href="user_chat.php">Chat lists</a></li>-->
									<li><a href="user_plan.php">My plan details</a></li>
									<!--<li><a href="user_setting.php">Profile settings</a></li>-->
									<li><a href="user_profile_edit.php?member_id=<?php echo $_SESSION['member_id']; ?>">Edit full profile</a></li>
									<li><a href="testimonial.php?member_id=<?php echo $_SESSION['member_id']; ?>">Add Feedback</a></li>
								</ul>
							</div>
						</li>
						<?php } ?>
					</ul>
				</div>
				<?php if(isset($_SESSION["member_id"])) {?>
				
					<div class="al">
						<!-- 🔔 Notification Bell with Dropdown -->
						<div style="position: relative; margin-right: 15px;top:5px;">
						
							<div class="notification-wrapper" onclick="toggleNotificationDropdown()" style="cursor: pointer;">
								<i class="fa fa-bell" style="font-size: 17px; color: #333;"></i>
								<span id="notification-count" class="notif-badge">0</span>
							</div>
							<!-- Notification Dropdown -->
							<div id="notification-dropdown" class="notification-dropdown">
								<div class="notification-title">Notifications</div>
								<div id="notification-list">No new notifications.</div>
							</div>
						</div>
					
						<div class="head-pro" style="position:relative;left:30px;top:-35px;">
							<img src="member_profiles/<?php if(isset($_SESSION["updated_image"])){ echo $_SESSION["updated_image"];}elseif(isset($_SESSION["user_profile"])){echo $_SESSION["user_profile"];}else{echo 'image_placeholder.jpg';}?>"  alt="" loading="lazy">
							
							<?php $currentPage = basename($_SERVER['PHP_SELF']);
								if($currentPage=="send_request.php" ) {
							?>
							<h4 style="top: 15px;position: relative;"><a href="logout.php">Sign-in</a></h4>
							<?php } else { ?>
							<h4 style="top: 15px;position: relative;"><?php if(isset($_SESSION["Fname"]) && isset($_SESSION["Lname"])){ echo $_SESSION["Fname"]." ".$_SESSION["Lname"];}elseif(isset($_SESSION["user_fname"]) && isset($_SESSION["user_lname"])){echo $_SESSION["user_fname"]." ".$_SESSION["user_lname"];}?></h4>
							<?php } ?>
						</div>
					</div>
				<?php } else { ?>
				   <div class="al">
				   
                        <div class="head-pro">
						<?php if(isset($_SESSION["member_id"])) {?>
                            <img src="images/profiles/1.jpg" alt="" loading="lazy">
                            <b></b><br>
						<?php } ?>
                            <a href="login.php"><h4 style="top: 0px;position: relative;">Sign Up</h4></a>
                            <!--<span class="fclick"></span>-->
                        </div>
                    </div>
                <?php } ?>
				<!--MOBILE MENU-->
				<div class="mob-menu">
					<div class="mob-me-ic">
						<span class="ser-open mobile-ser">
							<img src="images/icon/search.svg" alt="">
						</span>
						<span class="mobile-exprt" data-mob="dashbord">
							<img src="images/icon/users.svg" alt="">
						</span>
						<span class="mobile-menu" data-mob="mobile">
							<img src="images/icon/menu.svg" alt="">
						</span>
					</div>
				</div>
				<!--END MOBILE MENU-->
			</div>
		</div>
	</div>
</div>
<!-- END -->



<!-- MOBILE USER PROFILE MENU POPUP -->
<div class="mob-me-all dashbord_menu">
	<div class="mob-me-clo"><img src="images/icon/close.svg" alt=""></div>
	<div class="mv-bus">
		<div class="head-pro">
			<img src="member_profiles/<?php if(isset($_SESSION["updated_image"])){ echo $_SESSION["updated_image"];}elseif(isset($_SESSION["user_profile"])){echo $_SESSION["user_profile"];}else{echo 'image_placeholder.jpg';}?>" alt="" loading="lazy">
			<b>user profile</b><br>
			<h4><?php if(isset($_SESSION["Fname"]) && isset($_SESSION["Lname"])){ echo $_SESSION["Fname"]." ".$_SESSION["Lname"];}elseif(isset($_SESSION["user_fname"]) && isset($_SESSION["user_lname"])){echo $_SESSION["user_fname"]." ".$_SESSION["user_lname"];}?></h4>
		</div>
		<ul>
			<li><a href="login.php">Login</a></li>
			<li><a href="logout.php">Sign-up</a></li>
			<li><a href="plans.php">Pricing plans</a></li>
			<li><a href="all_profiles.php">Browse profiles</a></li>
		</ul>
	</div>
</div>
<!-- END USER PROFILE MENU POPUP -->

<script>
// Load the notification sound
const notificationSound = new Audio("sound/message-notification.mp3");

function toggleNotificationDropdown() {
	const dropdown = document.getElementById("notification-dropdown");
	const notifCount = document.getElementById("notification-count");

	// Toggle dropdown visibility
	const isVisible = dropdown.style.display === "block";
	dropdown.style.display = isVisible ? "none" : "block";

	// Mark notifications as read if opening
	if (!isVisible) {
		fetch("mark_notifications_read.php", { method: "POST" })
			.then(res => res.text())
			.then(() => {
				notifCount.style.display = "none"; // Hide the badge
				loadNotifications(); // Fetch notifications
			})
			.catch(error => console.error("Error marking as read:", error));
	}
}

function loadNotifications() {
	console.log("Fetching Notifications...");
	fetch("fetch_notifications.php")
		.then(response => response.text())
		.then(data => {
			document.getElementById("notification-list").innerHTML = data;
		})
		.catch(error => console.error("Error fetching notifications:", error));
}

function loadNotificationCount() {
	fetch("notification_count.php")
		.then(res => res.text())
		.then(count => {
			const badge = document.getElementById("notification-count");
			const countNum = parseInt(count, 10);
			const storedCount = parseInt(localStorage.getItem("lastNotifCount") || "0", 10);

			if (countNum > 0) {
				if (countNum > storedCount) { // Only play sound if new notifications arrive
					notificationSound.play();
					loadNotifications(); 
				}
				badge.style.display = "inline-block";
				badge.textContent = count;
			} else {
				badge.style.display = "none";
			}

			// Store the latest notification count
			localStorage.setItem("lastNotifCount", countNum);
		})
		.catch(error => console.error("Error fetching notification count:", error));
}

// Load notifications on page load and refresh every 5 seconds
loadNotificationCount();
loadNotifications(); // Initial Load
setInterval(loadNotificationCount, 5000);
setInterval(loadNotifications, 5000); // Auto refresh notifications list

// Close dropdown when clicking outside
window.addEventListener("click", function (event) {
	if (!event.target.closest(".notification-wrapper")) {
		document.getElementById("notification-dropdown").style.display = "none";
	}
});
</script>


<!--<script>
	function toggleNotificationDropdown() {
		
		const dropdown = document.getElementById("notification-dropdown");
		const notifCount = document.getElementById("notification-count");

		// Toggle dropdown visibility
		dropdown.style.display = (dropdown.style.display === "block") ? "none" : "block";

		// If shown, mark as read via AJAX and reload notification list
		if (dropdown.style.display === "block") {
			fetch("mark_notifications_read.php", {
				method: "POST"
			})
			.then(res => res.text())
			.then(data => {
				notifCount.style.display = "none"; // hide red badge
				loadNotifications(); // load actual notification content
			});
		}
	}


	function loadNotifications() {
		console.log("hiii");
		fetch("fetch_notifications.php")
			.then(response => response.text())
			.then(data => {
				document.getElementById("notification-list").innerHTML = data;
			});
	}

	function loadNotificationCount() {
		fetch("notification_count.php")
			.then(res => res.text())
			.then(count => {
				const badge = document.getElementById("notification-count");
				if (parseInt(count) > 0) {
					badge.style.display = "inline-block";
					badge.textContent = count;
				} else {
					badge.style.display = "none";
				}
			});
	}

	// Load initially and refresh every 5 seconds
	loadNotificationCount();
	setInterval(loadNotificationCount, 5000);

	// Optional: Close dropdown when clicking outside
	window.onclick = function(event) {
		if (!event.target.closest('.notification-wrapper')) {
			document.getElementById("notification-dropdown").style.display = "none";
		}
	};
</script>-->

