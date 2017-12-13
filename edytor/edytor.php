<!DOCTYPE html>
<html>
	
<head>
	<meta charset="utf-8" /> 
	<title>WipeNation</title>
	<meta name="description" content="Strona gildii WipeNation">
	<meta name="keywords" content="wow,world,warcraft,wipenation,gildia,defias">
	<meta name="author" content="Rafał Wasik">
	<link rel="stylesheet" type="text/css" href="../css/edytor.css">
	<script src="../scripts/edytor.js"> </script>
</head>

<body onload=init()>
	
	<?php include '..\inc.php';?>

	<div id="main">
	
	<div class ="image-container">
		<div id="img1" onclick=replaceImage("../images/miss.jpg")><img src="../images/miss.jpg" width=80% height= 80% alt="Heroic Misstress"></div>
		<div id="img2" onclick=replaceImage("../images/sis.jpg")><img src="../images/sis.jpg" width=80% height= 80% alt="Heroic Sisters"></div>
		<div id="img3" onclick=replaceImage("../images/bg.jpg")><img src="../images/bg.jpg" width=80% height= 80% alt="Background"></div>
		<div id="img4" onclick=replaceImage("../images/kj.jpg")><img src="../images/kj.jpg" width=80% height= 80% alt="Heroic Kil'jaeden"></div>
		
	</div>
	<br>
	<div id="canv">
	<p>Edytor obrazków</p>
	<canvas id="myCanvas" width=800 height=600 style="margin-left:5%">
	Coś nie działa.
	</canvas><br>
		<button onclick=respondClick(event)> Zmiana</button>
	</div>
	

	</div>
	
	<?php include '..\fun.php';?>
</body>


</html>