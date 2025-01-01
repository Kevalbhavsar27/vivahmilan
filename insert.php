<?php	
	$conn=mysqli_connect('127.0.0.1','root','','uday');	
	if(isset($_POST['BtnInsert']))
	{
		$sql="insert into test1 values(NULL,'".$_POST['fname']."','".$_POST['lname']."','".$_POST['age']."','".$_POST['email']."','".$_POST['password']."','".$_POST['date']."','".$_POST['profile']."')";
		$success=mysqli_query($conn,$sql);
	}
?>
<html>
	<head>
		<link rel="stylesheet" href="bootstrap.min.css">
	</head>
	<body class="bg-light">
	<center>
		<h1 style="color:blue" class="bg-light">Welcome To Register Page</h1>
	</center>
		<ul class="nav nav-tabs">
			<li class="bg-dark"><a href="show.php">Show Records</a></li>
		</ul><br>
		<center>
			<?php if (isset($success)) { ?>
				<div class="alert alert-success">
					Register Successfully...
				</div>
		<?php } ?>
		</center>
		<form method="POST">
			<div class="container mt-4">
				<div>
					<label>First Name</label>
					<input type="text" name="fname" class="form-control">
				</div>
				<div>
					<label>Last Name</label>
					<input type="text" name="lname" class="form-control">
				</div>
				<div>
					<label>Age</label>
					<input type="text" name="age" class="form-control">
				</div>
				<div>
					<label>Email</label>
					<input type="text" name="email" class="form-control">
				</div>
				<div>
					<label>Password</label>
					<input type="password" name="password" class="form-control">
				</div>
				<div>
					<label>Date</label>
					<input type="date" name="date" class="form-control">
				</div>
				<div>
					<label>Profile</label>
					<input type="file" name="profile" class="form-control">
				</div><br>
				<input type="submit" name="BtnInsert" class="btn btn-outline-dark">
				</div>
		</form>
	</body>
</html>