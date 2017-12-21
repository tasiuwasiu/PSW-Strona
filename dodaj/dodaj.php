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
	?>
	
	<div id="main">
	
	<?php
	if (isset($_SESSION["name"]))
	{
		?>
			<h1 style="text-align:center; padding-top: 20px">Edycja użytkownika</h1>
		<?php
	}
	else
	{
		?>
			<h1 style="text-align:center; padding-top: 20px">Dodawanie użytkownika</h1>
		<?php
	}
	?>
	<div align="center">
	<form method= "post" action = "check_dodaj.php">
		Login:<br>
			<input id = "l" name = "login" type=text size=20 autofocus><br><br>
		Hasło:<br>
			<input id = "h" name = "pass" type=text size=20>
			<br><br>
		E-mail:<br>
			<input id = "e" name = "email" required placeholder="aaa@bbb.ccc" type=email size=50>
			<br><br>
		<input id = "i" type="hidden"  name="id" value = "0">
		<input type="submit" value="Zapisz">
	</form>
	</div>
	</div>
	
	<?php
	if (isset($_SESSION["name"]))
	{
		$link = mysqli_connect("localhost","root", "pass", "Uzytkownicy");
		if(mysqli_connect_errno())
		{
			die("ERROR CONNECTING DB  </div> </body> </html>");
		}
		$login = $_SESSION["name"];
		$sql = mysqli_query($link, "SELECT * FROM Uzytk WHERE username='$login' LIMIT 1");
		$result = mysqli_fetch_row($sql);
		$password = $result[3];
		$email = $result[2];
		$id = $result[0];
		print "
		<script> 
			setForm('$id', '$login', '$password', '$email');
		</script>";
	}
	?>
	
	<?php include '..\fun.php';?>
</body>
	
</html>