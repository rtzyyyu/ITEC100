<?php 
	include('server.php');
?>

<!doctype html>
<html>
<head>
	<title> Registration Form </title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="header">
	<h2>Gawa Account</h2>
</div>
	<form method="post" action="register.php">
	<?php include('errors.php')?>
		<div class="input-group">
			<label>Username</label>
			<input type="text" name="username">
		</div>
		<div class="input-group">
			<label>Email</label>
			<input type="email" name="email">
		</div>
		<div class="input-group">
			<label>Password</label>
			<input type="password" name="password1">
		</div>
		<div class="input-group">
			<label>Confirm Password</label>
			<input type="password" name="password2">
		</div>
		<div class="input-group">
			<center><button type="submit" name="register" class="btn">Register</button></center>
		</div>
		<p>
			Member kana diba?  <a href="login.php">Sign in</a>
		</p>
	
	
</form>
</body>
</html>