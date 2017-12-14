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
	
	<?php 
	session_start();
	$_SESSION["name"] = $_POST["login"];
	include '..\inc.php';
	
	?>

	<div id="main">
	
	<h1 style="text-align:center; padding-top: 20px">Zalogowano!</h1>
	
	</div>
	<?php include '..\fun.php';?>
</body>
	
</html>