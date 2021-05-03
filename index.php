<?php include('server.php'); ?>

<!doctype html>
<html>
<head>
	<title> Home Page </title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="header">
	<h2>Home</h2>
</div>
	<div class="content">
	<form method="post" action="index.php">
		<input type="hidden" name="hidden_name">
		<?php if(isset($_SESSION['success'])): ?>
			<div class="error success">
				<h3>
					<?php
						echo $_SESSION['success'];
						unset ($_SESSION['success']);
					?>
				</h3>
			</div>
		<?php endif ?>
		<?php if(isset($_SESSION['username'])): ?>
			<p>Welcome, <strong><?php echo $_SESSION['hidden_name']; ?></strong></p><br>
			
		<?php endif ?>
		<center><button type="submit" name="act_log" class="btn">Activity Log</button></center><br>
		Nakalimutan ang Password?  <a href="forgot_password.php">Click mo to</a><br><br>
		<center><button type="submit" name="logout" class="btn">Logout</button></center>
	</form>
	</div>
	
</body>
</html>