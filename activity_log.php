<?php
	include('server.php');
?>

<!doctype html>
<html>
<head>
	<title> Activity Log </title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="header">
	<h2>Activity Log</h2>
</div>
	<form method="post" action="activity_log.php">
	<input type="hidden" name="hidden_name">
	<?php include('errors.php')?>
		<?php
			$last = $_SESSION['hidden_name'];
			$time = "";
			$activity = "";

			$errors = array();
			$db = mysqli_connect('localhost','root','','registration');
			$time = date("H:i:s");

			$result = mysqli_query($db,"SELECT * FROM activity_log WHERE username='$last'");

			echo '<table border="2">
					<tr>
						<th>
							 ID
						</th>
						<th>
							Username
						</th>
						<th>
							Activity Log
						</th>
						<th>
							Time
						</th>
					</tr>';

					while($row = mysqli_fetch_array($result)){
						echo '<tr>
							<td>'.$row['id'].'</td>
							<td>'.$row['username'].'</td>
							<td>'.$row['activity'].'</td>
							<td>'.$row['time_log'].'</td>
						</tr>';
					}

					echo '</table>';

						mysqli_close($db);



			if (isset($_POST['returnb'])){		
					header('location: index.php');
			}
		?>

		<br><br>
		<center><button type="submit" name="returnb" class="btn">Return</button></center>
	</form>
</body>
</html>