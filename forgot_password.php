<?php include ('server.php'); ?>

<!doctype html>
<html>
<head>
	<title> Login Form </title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="header">
	<h2>Palit password</h2>
</div>
	<form method="post" action="forgot_password.php">
	<?php include('errors.php')?>
		<div class="input-group">
			<label>Username</label>
			<input type="text" name="forgot_username">
		</div>
		<div class="input-group">
			<label>Lumang password</label>
			<input type="text" name="forgot_password">
		</div>
		<div class="input-group">
			<label>Bagong password</label>
			<input type="text" name="new_password">
		</div>
		<div class="input-group">
			<center><button type="submit" name="changepass" class="btn">Change Password</button></center>
		</div>
		<p>
			<a href="login.php">Back</a><br>
		</p>
	
</form>
</body>
</html>