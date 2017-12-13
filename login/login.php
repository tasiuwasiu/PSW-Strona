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
	
	<?php include '..\inc.php';?>
	
	<div id="main">
	
	<h2 style="text-align:center; padding-top: 20px">Zaloguj się!</h2>
	
	<br>
	
	<div align="center">
	<form>
		Login:<br>
			<input type=text size=40 autofocus><br><br>
		Hasło:<br>
			<input type=text size=40>
			<br><br>
	</form>
	<br><br>
	<button onclick="login()"> ZALOGUJ </button>
	</div>
	</div>
	

	<script>
		function login (){
		var input = document.getElementsByTagName("input");
		if (input[0].value== "admin" && input[1].value=="admin")
			{alert("Zalogowano");
			window.location.href = "../edytor/edytor.php";}
			else
			{	alert("Błędne dane");}
		}
	
	</script>
	
	<?php include '..\fun.php';?>
</body>
	
</html>