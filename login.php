<?php include ('server.php'); ?>

<!doctype html>
<html>
<head>
	<title> Login Form </title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="header">
	<h2>Login</h2>
</div>
	<form method="post" action="login.php">
	<?php include('errors.php')?>
		<div class="input-group">
			<label>Username</label>
			<input type="text" name="username">
		</div>
		<div class="input-group">
			<label>Password</label>
			<input type="password" name="password1">
		</div>
		<div class="input-group">
			<center><button type="submit" name="login" class="btn">Login</button></center>
		</div>
		<p>
			Ndi pa kasapi?  <a href="register.php">Sign up na!</a><br>
			Nakalimutan ang password?  <a href="forgot_password.php">Click mo to</a><br>
		</p>
	
</form>
</body>
</html>