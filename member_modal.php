<!DOCTYPE html>
<?php
	include_once 'connection.php';
	if(!isset($_SESSION["Email"]))
	{
		header('location:index.php');
	}
	 
	$memberid = $_POST['member_id'];                 

	$sql = "Select * from member_tbl,member_detail_tbl,community_tbl,sub_community_tbl,state_tbl,city_tbl,language_tbl,
			member_qualification_tbl,lifestyle_tbl,package_tbl,package_detail_tbl 
			where member_tbl.member_id=member_detail_tbl.member_id and sub_community_tbl.community_id=community_tbl.community_id and member_detail_tbl.member_sub_community_id=sub_community_tbl.sub_community_id and 
			state_tbl.state_id=city_tbl.state_id and member_tbl.member_city=city_tbl.city_id and member_detail_tbl.language_id=language_tbl.language_id and 
			member_detail_tbl.member_detail_id=lifestyle_tbl.member_detail_id and member_detail_tbl.member_id=package_detail_tbl.member_id and 
			member_detail_tbl.member_detail_id=member_qualification_tbl.member_detail_id and
			package_detail_tbl.package_id=package_tbl.package_id and member_tbl.member_id=$memberid";
	//echo $sql;		
	$data = mysqli_query($conn,$sql);
	$row = mysqli_fetch_array($data);

	$member_image=$row['member_image'];   
	$member_fname=ucfirst($row['member_firstname']);
	$member_lname=ucfirst($row['member_lastname']);
	$community_name=$row['community_name'];
	$member_subcommunity_name=$row['sub_community_name'];
	$language_name=$row['language_name'];
	$member_with_family=$row['member_with_family'];
	$member_childrens=$row['member_childrens'];
	$member_height=$row['member_height'];
	$member_weight=$row['member_weight'];
	$caste_no_bar=$row['caste_no_bar'];
	$member_body_type=$row['member_body_type'];
	$member_complexion=$row['member_complexion'];
	
	$member_email=$row['member_email']; 
	$member_contact=$row['member_contact']; 
	$member_gender=$row['member_gender'];  
	if($row['member_gender'] == "Female")
	{
		$member_gender = "F";
	}
	elseif($row['member_gender'] == "Male")
	{
		$member_gender = "M";
	}
	else
	{
		$member_gender = "O";
	}
	
	$member_dob=$row['member_dob']; 
	$member_state=$row['state_name']; 
	$member_city=$row['city_name']; 
	
	$member_age=$row['member_age'];
	$registration_date=$row['registration_date'];
	$member_profile_id=$row['member_profile_id'];
	$member_adhar_id=$row['member_adhar_id'];
	$member_profile_for=$row['member_profile_for'];
	$member_looking_for=$row['member_looking_for'];
	$member_company_name=$row['member_company_name'];
	$member_min_age=$row['member_min_age'];
	$member_max_age=$row['member_max_age'];
	
	$member_qualification=$row['member_qualification'];
	$member_work_with=$row['member_work_with'];
	$member_occupation=$row['member_occupation'];
	$member_designation=$row['member_designation'];
	$member_company_name=$row['member_company_name'];
	$member_income=$row['member_income'];
	$member_description=$row['member_description'];

	$package_name=$row['package_name'];
	$package_price=$row['package_price'];
	$package_duration=$row['package_duration'];
	$purchase_date=$row['purchase_date'];
	$package_exp_date=$row['package_exp_date'];
?>
<html>
	<!-- fa-fa Link -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- fa-fa Link -->
	<style>
	body{
		margin-top:20px;
		color: #1a202c;
		text-align: left;
		background-color: #e2e8f0;    
	}
	.main-body {
		padding: 15px;
	}
	.card {
		box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
	}

	.card {
		position: relative;
		display: flex;
		flex-direction: column;
		min-width: 0;
		word-wrap: break-word;
		background-color: #fff;
		background-clip: border-box;
		border: 0 solid rgba(0,0,0,.125);
		border-radius: .25rem;
	}

	.card-body {
		flex: 1 1 auto;
		min-height: 1px;
		padding: 1rem;
	}

	.gutters-sm {
		margin-right: -8px;
		margin-left: -8px;
	}

	.gutters-sm>.col, .gutters-sm>[class*=col-] {
		padding-right: 8px;
		padding-left: 8px;
	}
	.mb-3, .my-3 {
		margin-bottom: 1rem!important;
	}

	.bg-gray-300 {
		background-color: #e2e8f0;
	}
	.h-100 {
		height: 100%!important;
	}
	.shadow-none {
		box-shadow: none!important;
	}
	</style>
	<div class="container">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		<div class="main-body">
			<div class="row gutters-sm">
				<div class="col-md-4 mb-3">
					<div class="card">
						<div class="card-body">
							<div> <!-- <div class="d-flex flex-column align-items-center text-center"> -->
								<center><img src="../member_profiles/<?php echo $member_image;?>" alt="Member" class="rounded-circle" height="170px" width="170px" ></center>
								<div class="mt-3">
									<span class="text-secondary" style="font-size: 16px;"><?php echo "# " . $member_profile_id . " - ";?>
										<span><b ><?php echo $member_lname;?>&nbsp;<?php echo $member_fname; echo " [".$member_gender."]"?></b></span>
									</span>
									<p class="text-muted" style="font-size: 10px;"><?php echo $member_description;?></p><br><br><br><br><div></div><div></div><div></div><div></div><div></div>
									<h6 class="d-flex align-items-center mb-3"><i class="fa fa-info-circle" style='font-size:18px'></i><i class="material-icons text-info mr-2"> Other Info</i></h6>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Community</h6></div><div class="col-sm-6 text-secondary"><?php echo $community_name;?>&nbsp;&nbsp;<?php echo "-  ".$member_subcommunity_name;?></div>
									</div>
									<hr>
										<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">CasteNo Bar</h6></div><div class="col-sm-6 text-secondary"><?php echo $caste_no_bar;?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Languages Known</h6></div><div class="col-sm-6 text-secondary"><?php echo $language_name;?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Family / Childrens</h6></div><div class="col-sm-6 text-secondary"><?php echo $member_with_family . " / " . $member_childrens;?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Height / Weight</h6></div><div class="col-sm-6 text-secondary"><?php echo $member_height . " / ". $member_weight;?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Body type</h6></div><div class="col-sm-6 text-secondary"><?php echo $member_body_type;?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Complexion</h6></div><div class="col-sm-6 text-secondary"><?php echo $member_complexion;?></div>
									</div>

									<!-- <button class="btn btn-primary">Follow</button> -->
									<!-- <button class="btn btn-outline-primary">Message</button> -->
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-8">
					<!-- <h3>Student Information</h3> -->
					<div class="card mb-3">
						<div class="card-body">
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Email</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<?php echo $member_email; ?>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Phone</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<?php echo $member_contact;?>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">State</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<?php echo $member_state;?>&nbsp;&nbsp;<?php echo "-  ". $member_city; ?>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">DOB</h6>
								</div>
								<div class="col-sm-4 text-secondary">
									<?php echo date("d-M-Y" , strtotime($member_dob));?>&nbsp;&nbsp;<?php echo $member_age."-Y"; ?><br>  
								</div>
								<div class="col-sm-2">
									<h6 class="mb-0">DOJ</h6>
								</div>
								<div class="col-sm-3 text-secondary">
									<?php echo date("d-M-Y" , strtotime($registration_date));?>   
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-3">
									<h6 class="mb-0">Profile for</h6>
								</div>
								<div class="col-sm-4 text-secondary">
									<?php echo $member_profile_for; ?>
								</div>
								<div class="col-sm-2">
									<h6 class="mb-0">Looking for</h6>
								</div>
								<div class="col-sm-3 text-secondary">
									<?php echo $member_looking_for ."<br>(Age : ". $member_min_age . " - " . $member_max_age . ")"; ?>
								</div>
							</div>
							<hr>
							<div class="row"> 
								<div class="col-sm-3">
									<h6 class="mb-0">Package</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<?php echo $package_name . " - ₹" . $package_price . " for " . $package_duration . " (" . $purchase_date . " to " . $package_exp_date . ")"; ?> 
								</div>
							</div>
						</div>
					</div>
					<br>  
					<div class="row">
						<div class="col-sm-6 mb-3">
							<div class="card h-100">
								<div class="card-body">
									<h6 class="d-flex align-items-center mb-3"><i class='fa fa-graduation-cap' style='font-size:18px'></i><i class="material-icons text-info mr-2"> Qualification Info</i></h6>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Qualification</h6></div><div class="col-sm-6 text-secondary"><?php echo $member_qualification; ?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Work With</h6></div><div class="col-sm-6 text-secondary"><?php echo $member_work_with; ?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Occupation</h6></div><div class="col-sm-6 text-secondary"><?php echo $member_occupation; ?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Designation</h6></div><div class="col-sm-6 text-secondary"><?php echo $member_designation; ?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Company Name</h6></div><div class="col-sm-6 text-secondary"><?php echo $member_company_name; ?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Income</h6></div><div class="col-sm-6 text-secondary"><?php echo "₹ " . $member_income; ?></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 mb-3">
							<div class="card h-100">
								<div class="card-body">
									<h6 class="d-flex align-items-center mb-3"><i class="fa fa-gratipay" style='font-size:18px'></i><i class="material-icons text-info mr-2"> Lifestyle Info</i></h6>
									<?php  
										$bloodgroup=$row['bloodgroup'];
										$hobbies_interest=$row['hobbies_interest'];
										$member_diet=$row['member_diet'];
										$language_known=$row['language_known'];
										$residential_status=$row['residential_status'];
										$smoking_habbits=$row['smoking_habbits'];
										$vehicles_having=$row['vehicles_having'];
									?>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Bloodgroup</h6></div><div class="col-sm-6 text-secondary"><?php echo $bloodgroup; ?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Hobbies</h6></div><div class="col-sm-6 text-secondary"><?php echo $hobbies_interest; ?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Diet</h6></div><div class="col-sm-6 text-secondary"><?php echo $member_diet; ?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Language Known</h6></div><div class="col-sm-6 text-secondary"><?php echo $language_known; ?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Residential Known</h6></div><div class="col-sm-6 text-secondary"><?php echo $residential_status; ?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Smoking Habbits</h6></div><div class="col-sm-6 text-secondary"><?php echo $smoking_habbits; ?></div>
									</div>
									<hr>
									<div class="row">
										<div class="col-sm-6"><h6 class="mb-0">Vehicles Having</h6></div><div class="col-sm-6 text-secondary"><?php echo $vehicles_having; ?></div>
									</div>
								</div>
							</div>
						</div>
					</div>

					
				</div>	
			</div>
		</div>
	</div>
</html>    
<!--<div class="row">
		<div class="col-sm-3">
				<h6 class="mb-0">Gender</h6>
		</div>
		<div class="col-sm-9 text-secondary">
			<?php /* echo $member_gender; */ ?> 
		</div>
		<?php /*
		$qry="select * from user_tbl where user_tbl.user_id=$user_id";
		$gender_test=mysqli_query($conn,$qry);
		while($gen_result=mysqli_fetch_array($gender_test))
		{
			if($gen_result['user_gender']==1)
			{
				echo "Male";
			}
			else
			{
				echo "Female";
			}
		} 
		*/?> 
	</div>
	<hr> 
--!>