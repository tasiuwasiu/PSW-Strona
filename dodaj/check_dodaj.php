<!DOCTYPE html>
<html>
	
<head>
	<meta charset="utf-8" /> 
	<title>WipeNation</title>
	<meta name="description" content="Strona gildii WipeNation">
	<meta name="keywords" content="wow,world,warcraft,wipenation,gildia,defias">
	<meta name="author" content="Rafał Wasik">
	<link rel="stylesheet" type="text/css" href="../css/dodaj.css">
	<script src="../scripts/dodaj.js"> </script>
</head>

<body>
	<?php session_start(); ?>
	<?php include '..\inc.php';
		include '..\fun.php';
	?>
	
	<div id="main">
	
	<?php
		$link = mysqli_connect("localhost","root", "pass", "Uzytkownicy");
		if(mysqli_connect_errno())
		{
			die("ERROR CONNECTING DB  </div> </body> </html>");
		}
		$login = $_POST["login"];
		$password = $_POST["pass"];
		$email = $_POST["email"];
		$id = $_POST["id"];
		$end = "</div></body></html>";
		
		if ($id == 0)
		{
			$sql = mysqli_query($link, "SELECT * FROM Uzytk WHERE username='$login' LIMIT 1");
			if (mysqli_fetch_row($sql))
			{
				?>
				<h1 style="text-align:center; padding-top: 20px">Nazwa zajęta!</h1>
				<?php
				die( $end );
			}
			
			$sql = mysqli_query($link, "SELECT * FROM Uzytk WHERE email='$email' LIMIT 1");
			if (mysqli_fetch_row($sql))
			{
				?>
				<h1 style="text-align:center; padding-top: 20px">Email zajęty!</h1>
				<?php
				die( $end);
			}

			$sql = "INSERT INTO Uzytk (username, email, password) VALUES ('$login', '$email', '$password')";
			mysqli_query($link, $sql);
			?>
			<h1 style="text-align:center; padding-top: 20px">Dodano użytkownika!</h1>
			<?php
		}
		else
		{	
			$sql = mysqli_query($link, "SELECT * FROM Uzytk WHERE id='$id' LIMIT 1");
			$result = mysqli_fetch_row($sql);
			
			if ($login != $result[1])
			{
				$sql = mysqli_query($link, "SELECT * FROM Uzytk WHERE username='$login' LIMIT 1");
				if (mysqli_fetch_row($sql))
				{
					?>
					<h1 style="text-align:center; padding-top: 20px">Nazwa zajęta!</h1>
					<?php
					die( $end );
				}
			}
			
			if ($email != $result[2])
			{
				$sql = mysqli_query($link, "SELECT * FROM Uzytk WHERE email='$email' LIMIT 1");
				if (mysqli_fetch_row($sql))
				{
					?>
					<h1 style="text-align:center; padding-top: 20px">Email zajęty!</h1>
					<?php
					die( $end);
				}
			}
			
			$sql = "UPDATE Uzytk
            SET username = '$login', email = '$email', password = '$password' 
            WHERE ID='$id'";
			mysqli_query($link, $sql);
			?>
			<h1 style="text-align:center; padding-top: 20px">Zmieniono dane użytkownika!</h1>
			<?php
		}
		?>
	
	
	
	</div>
	
</body>
	
</html>