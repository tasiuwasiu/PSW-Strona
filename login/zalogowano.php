<!DOCTYPE html>
<html>
	
<head>
	<meta charset="utf-8" /> 
	<title>WipeNation</title>
	<meta name="description" content="Strona gildii WipeNation">
	<meta name="keywords" content="wow,world,warcraft,wipenation,gildia,defias">
	<meta name="author" content="Rafał Wasik">
	<link rel="stylesheet" type="text/css" href="../css/login.css">
	<script src="../scripts/rng.js"> </script>
</head>

<body>
	
	<div id="main">
	<?php 
	session_start();
	
	$link = mysqli_connect("localhost","root", "pass", "Uzytkownicy");
	if(mysqli_connect_errno())
	{
		die("ERROR CONNECTING DB  </div> </body>
			</html>");
	}
	$login = $_POST["login"];
	$password = $_POST["pass"];
	$sql = mysqli_query($link, "SELECT * FROM Uzytk WHERE username='$login' LIMIT 1");
	$result = mysqli_fetch_row($sql);
	if (isset($result))
	{
		if ($result[2] == $password)
		{
			$_SESSION["name"] = $_POST["login"];
		
	?>
	<h1 style="text-align:center; padding-top: 20px">Zalogowano!</h1>
	<?php 
		}
		else 
		{?>
			<h1 style="text-align:center; padding-top: 20px">BŁĘDNE HASŁO!</h1>
		<?php
		}
	}
	else 
	{ ?>
		<h1 style="text-align:center; padding-top: 20px">Brak użytkownika o podanej nazwie!</h1>
    <?php
	}
	?>
	</div>
	<?php include '..\fun.php';
	include '..\inc.php';?>
</body>
	
</html>