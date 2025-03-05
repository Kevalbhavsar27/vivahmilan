<?php
	include_once 'connection.php';

	if (!empty($_POST["community_id"])) 
	{
		//echo "SELECT * FROM tlb_model WHERE brand_id = '" . $_POST["brand_id"] . "'";die;
		$results=mysqli_query($conn,"SELECT * FROM sub_community_tbl,community_tbl 
					WHERE community_tbl.community_id=sub_community_tbl.community_id and sub_community_tbl.community_id = '" . $_POST["community_id"] . "'");
    ?>
		<option selected disabled>Select Sub Community</option>
<?php 
		while($row=mysqli_fetch_array($results)) 
		{
?>
		<option value="<?php echo $row['sub_community_id']; ?>" ><?php echo $row['sub_community_name']?> </option>
<?php
		}
	}

	if (! empty($_POST["state_id"])) 
	{ 
		//echo "SELECT * FROM tlb_model WHERE brand_id = '" . $_POST["brand_id"] . "'";die;
		$results=mysqli_query($conn,"SELECT * FROM city_tbl,state_tbl
					WHERE state_tbl.state_id=city_tbl.state_id and city_tbl.state_id = '" . $_POST["state_id"] . "'");
?>
		<option selected disabled>Select District/City</option> 
<?php
		while($row=mysqli_fetch_array($results))
		{
?>
		<option value="<?php echo $row['city_id']; ?>" ><?php echo $row['city_name']?> </option>
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


