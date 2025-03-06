<?php
	include_once 'connection.php';

	if (!empty($_POST["community_id"])) 
	{
		//echo "SELECT * FROM tlb_model WHERE brand_id = '" . $_POST["brand_id"] . "'";die;
		$results=mysqli_query($conn,"SELECT * FROM tbl_sub_community,tbl_community 
					WHERE tbl_community.Community_ID=tbl_sub_community.Community_ID and tbl_sub_community.Community_ID = '" . $_POST["community_id"] . "'");
    ?>
		<option selected disabled>Select Sub Community</option>
<?php
		while($row=mysqli_fetch_array($results)) 
		{
?>
		<option value="<?php echo $row['Sub_Community_ID']; ?>" ><?php echo $row['Sub_Community_Name']?> </option>
<?php
		}
	}

	if (! empty($_POST["state_id"])) 
	{ 
		//echo "SELECT * FROM tlb_model WHERE brand_id = '" . $_POST["brand_id"] . "'";die;
		$results=mysqli_query($conn,"SELECT * FROM tbl_city,tbl_state
					WHERE tbl_state.State_ID=tbl_city.State_ID and tbl_city.State_ID = '" . $_POST["state_id"] . "'");
?>
		<option selected disabled>Select District/City</option> 
<?php
		while($row=mysqli_fetch_array($results))
		{
?>
		<option value="<?php echo $row['City_ID']; ?>" ><?php echo $row['City_Name']?> </option>
<?php
		}
	}
?>
<?php
	if(!empty($_POST['get_gen']))
	{
		if(($_POST['get_gen'])=="Female")
		{
?>
			<option value="Myself">Myself</option>  
			<option value="Son">Son</option>
			<option value="Brother">Brother</option>
<?php	
		}
		else{
?>
			<option value="Myself">Myself</option>
			<option value="Sister">Sister</option>
			<option value="Daughter">Daughter</option>	
<?php
		}
	}
?>


