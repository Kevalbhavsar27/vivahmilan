<?php
	include_once 'connection.php';
	if(isset($_POST['city_id']))
	{
		$cid=$_POST['city_id'];
		$str="Select * from member_tbl,member_detail_tbl,member_qualification_tbl where member_tbl.member_id=member_detail_tbl.member_id and member_detail_tbl.member_detail_id=member_qualification_tbl.member_detail_id and member_tbl.member_city='".$cid."'";
		
		echo $str;
	}
	else if($_POST['member_religion'])
	{
		$rid=$_POST['member_religion'];
		$str="Select * from member_tbl,member_detail_tbl,member_qualification_tbl where member_tbl.member_id=member_detail_tbl.member_id and member_detail_tbl.member_detail_id=member_qualification_tbl.member_detail_id and member_detail_tbl.member_religion='".$rid."'";
	}
	else if($_POST['member_min_age'] || $_POST['member_max_age'])
	{
		$minid=$_POST['member_min_age'];
		$maxid=$_POST['member_max_age'];
		
		$str="Select * from member_tbl,member_detail_tbl,member_qualification_tbl where member_tbl.member_id=member_detail_tbl.member_id and member_detail_tbl.member_detail_id=member_qualification_tbl.member_detail_id and member_tbl.member_min_age>='".$minid."' and member_tbl.member_max_age<='".$maxid."'";
	}
	
	$data=mysqli_query($conn,$str);
									
	while($row=mysqli_fetch_array($data))
	{
		?>
		<li>
		<div class="all-pro-box user-avil-onli" data-useravil="avilyes"
			data-aviltxt="Available online">
			<!--PROFILE IMAGE-->
			<div class="pro-img">
				<a href="profile_details.php?member_id=<?php echo $row['member_id']; ?>">
					<img src="member_profiles/<?php echo $row['member_image']; ?>" alt="">
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
					<h5>
						<?php 
							if( $row['member_status'] == 1)
							{
						?>
								<div class="pro-ave" title="User currently available">
									<span class="pro-ave-yes"></span>
								</div>
								<div class="pro-avl-status">
									<h5>Available Online</h5>
								</div>
						<?php
							}
							else
							{
						?>
								<div class="pro-ave" title="User currently unavailable">
									<span class="pro-ave-yes"></span>
								</div>
								<div class="pro-avl-status">
									<h5>Unavailable Offline</h5>
								</div>
						<?php
							}
						?>
					</h5>
				</div>
			</div>
			<!--END PROFILE IMAGE-->

			<!--PROFILE NAME-->
			<div class="pro-detail">
		
				<h4><a href="profile_details.php?member_id=<?php echo $row['member_id']; ?>"><?php echo ucfirst($row['member_lastname']) . " " . ucfirst($row['member_firstname']); ?></a></h4>
				<div class="pro-bio">
					<span><?php echo ucfirst($row['member_qualification']);?></span>
					<span><?php echo ucfirst($row['member_occupation']);?></span>
					<span><?php echo $row['member_age'];?></span>
					<span><?php echo $row['member_height'];?></span>
				</div>
				
				<div class="links">
					<span class="cta-chat">Chat now</span>
					<a href="#!">WhatsApp</a>
					<a href="#!" class="cta cta-sendint" data-bs-toggle="modal" data-bs-target="#sendInter">Send interest</a>
					<a href="profile_details.php">More detaiils</a>
				</div>
			</div>
			<!--END PROFILE NAME-->
			<!--SAVE-->
			<span class="enq-sav" data-toggle="tooltip" title="Click to save this provile."><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></span>
			<!--END SAVE-->
		</div>
	</li>
<?php
	}
?>
