
<?php
    include 'connection.php';
    
	#package status manage here

	//if(isset['Pack_id'])
	if(isset($_POST['Pack_id']))
	{
		$td_id = $_POST['Pack_id'];
		$str_degree = "select * from tbl_package WHERE Package_ID=$td_id";
		$result_degree = mysqli_query($conn, $str_degree);
		$row_degree = mysqli_fetch_array($result_degree);
		$status_degree = $row_degree['Package_Status'];
		// Toggle the status
		if ($status_degree == 1) {
			$status_degree = 0; 
		} else {
			$status_degree = 1; 
		}
		$update_degree = "UPDATE tbl_package SET Package_Status='$status_degree' WHERE Package_ID=$td_id";
		$data_degree= mysqli_query($conn, $update_degree);
		if ($data_degree) {
			echo $data_degree;  
		}
	}
	#package status end here
	
	
	
	#community status manage here

	//if(isset(['c_id']))
	if(isset($_POST['c_id']))
	{
		$td_id = $_POST['c_id'];
		$str_degree = "select * from tbl_community WHERE Community_ID=$td_id";
		$result_degree = mysqli_query($conn, $str_degree);
		$row_degree = mysqli_fetch_array($result_degree);
		$status_degree = $row_degree['Community_Status'];
		// Toggle the status
		if ($status_degree == 1) {
			$status_degree = 0; 
		} else {
			$status_degree = 1; 
		}
		$update_degree = "UPDATE tbl_community SET Community_Status='$status_degree' WHERE Community_ID=$td_id";
		$data_degree= mysqli_query($conn, $update_degree);
		if ($data_degree) {
			echo $data_degree;  
		}
	}	
	
	#community status end here
	
	#sub community status manage here

	//if(isset['sc_id'])

	if(isset($_POST['sc_id']))

	{
		$td_id = $_POST['sc_id'];
		$str_degree = "select * from tbl_sub_community WHERE Sub_Community_ID=$td_id";
		//echo $str_degree;
		$result_degree = mysqli_query($conn, $str_degree);
		$row_degree = mysqli_fetch_array($result_degree);
		$status_degree = $row_degree['Sub_Community_Status'];
		// Toggle the status
		if ($status_degree == 1) {
			$status_degree = 0; 
		} else {
			$status_degree = 1; 
		}
		$update_degree = "UPDATE tbl_sub_community SET Sub_Community_Status='$status_degree' WHERE Sub_Community_ID=$td_id";
		$data_degree= mysqli_query($conn, $update_degree);
		if ($data_degree) {
			echo $data_degree;  
		}
	}	
	#sub community status end here
	
	
	#language status manage here

	//if(isset['l_id'])
	if(isset($_POST['l_id']))
	{
		$td_id = $_POST['l_id'];
		$str_degree = "select * from tbl_language WHERE Language_ID=$td_id";
		$result_degree = mysqli_query($conn, $str_degree);
		$row_degree = mysqli_fetch_array($result_degree);
		$status_degree = $row_degree['Language_Status'];
		// Toggle the status
		if ($status_degree == 1) {
			$status_degree = 0; 
		} else {
			$status_degree = 1; 
		}
		$update_degree = "UPDATE tbl_language SET Language_Status='$status_degree' WHERE Language_ID=$td_id";
		$data_degree= mysqli_query($conn, $update_degree);
		if ($data_degree) {
			echo $data_degree;  
		}
	}	
	#language status end here
	
	#FAQ status manage here

	//if(isset['f_id'])

	if(isset($_POST['f_id']))
	{
		$td_id = $_POST['f_id'];
		$str_degree = "select * from tbl_faq WHERE Faq_ID=$td_id";
		$result_degree = mysqli_query($conn, $str_degree);
		$row_degree = mysqli_fetch_array($result_degree);
		$status_degree = $row_degree['Faq_Status'];
		// Toggle the status
		if ($status_degree == 1) {
			$status_degree = 0; 
		} else {
			$status_degree = 1; 
		}
		$update_degree = "UPDATE tbl_faq SET Faq_Status='$status_degree' WHERE Faq_ID=$td_id";
		$data_degree= mysqli_query($conn, $update_degree);
		if ($data_degree) {
			echo $data_degree;  
		}
	}	
	#FAQ status end here
	
	#member status manage here

	//if(isset['m_id'])
	if(isset($_POST['m_id']))
	{
		$td_id = $_POST['m_id'];
		$str_degree = "select * from tbl_member WHERE Member_ID=$td_id";
		$result_degree = mysqli_query($conn, $str_degree);
		$row_degree = mysqli_fetch_array($result_degree);
		$status_degree = $row_degree['Member_Status'];
		// Toggle the status
		if ($status_degree == 1) {
			$status_degree = 0; 
		} else {
			$status_degree = 1; 
		}
		$update_degree = "UPDATE tbl_member SET Member_Status='$status_degree' WHERE Member_ID=$td_id";
		$data_degree= mysqli_query($conn, $update_degree);
		if ($data_degree) {
			echo $data_degree;  
		}
	}	
	#member status end here
	
	#testimonial status manage here

	//if(isset['t_id'])
	if(isset($_POST['t_id']))
	{
		$td_id = $_POST['t_id'];
		$str_degree = "select * from tbl_testimonial WHERE Testimonial_ID=$td_id";
		$result_degree = mysqli_query($conn, $str_degree);
		$row_degree = mysqli_fetch_array($result_degree);
		$status_degree = $row_degree['Testimonial_Status'];
		// Toggle the status
		if ($status_degree == 1) {
			$status_degree = 0; 
		} else {
			$status_degree = 1; 
		}
		$update_degree = "UPDATE tbl_testimonial SET Testimonial_Status='$status_degree' WHERE Testimonial_ID=$td_id";
		$data_degree= mysqli_query($conn, $update_degree);
		if ($data_degree) {
			echo $data_degree;  
		}
	}	
	#testimonial status end here
	#citys status start here
	if(isset($_POST['c_id']))
	{
		$td_id = $_POST['c_id'];
		$str_degree = "select * from cities WHERE id =$td_id";
		$result_degree = mysqli_query($conn, $str_degree);
		$row_degree = mysqli_fetch_array($result_degree);
		$status_degree = $row_degree['status'];
		// Toggle the status
		if ($status_degree == 1) {
			$status_degree = 0; 
		} else {
			$status_degree = 1; 
		}
		$update_degree = "UPDATE cities SET status='$status_degree' WHERE id=$td_id";
		$data_degree= mysqli_query($conn, $update_degree);
		if ($data_degree) {
			echo $data_degree;  
		}
	}	
		#citys status End here
	#state status start here
if(isset($_POST['s_id']))
	{
		$td_id = $_POST['c_id'];
		$str_degree = "select * from states WHERE id =$td_id";
		$result_degree = mysqli_query($conn, $str_degree);
		$row_degree = mysqli_fetch_array($result_degree);
		$status_degree = $row_degree['status'];
		// Toggle the status
		if ($status_degree == 1) {
			$status_degree = 0; 
		} else {
			$status_degree = 1; 
		}
		$update_degree = "UPDATE states SET status='$status_degree' WHERE id=$td_id";
		$data_degree= mysqli_query($conn, $update_degree);
		if ($data_degree) {
			echo $data_degree;  
		}
	}	
	#state status End here
?>


