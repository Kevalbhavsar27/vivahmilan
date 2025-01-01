<?php
	include_once 'connection.php';
	if(isset($_post['btn-Submit']))	
	{
		echo "<pre>";
		print_r($_FILES);
		di;
		move_uploaded_file($_FILES['profile']['emp_name'],"images/".$_FILES['Profile']['name']);
		$img=$_FILES['profile']['name'];
		$str="insert into emp values('".$_POST['emp_name']."','".$_POST['emp_mail']."','".$_POST['emp_pwd']."')";
		mysqli_query($con,$str);
		echo "<h1>Success</h1>";
	}
?>
<html>
	<body style="background-color:yellow">	
		<h1>Employee Details</h1>
		<form method="POST" enctype="multipart	/form-data">
			<table>
				<tr>
					<th>Name</th>
					<td><input type="text" name="emp_name"></td>
				</tr>
				<tr>
					<th>Email</th>
					<td><input type="text" name="emp_mail"></td>
				</tr>
				<tr>
					<th>Password</th>
					<td><input type="text" name="emp_pwd"></td>
				</tr>
				<tr>
					<th></th>
					<td>	
						<input type="submit" name="btn-submit" value="sign-up">
						<input type="button" name="btn-update" value="Update">
						<input type="button" name="btn-delete" value="Delete">	
					</td>
				</tr>
			</table>
		</form>
			<a href="login.php">Login here</a>
		</body>
	</html>