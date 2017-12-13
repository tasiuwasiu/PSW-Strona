<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" /> 
	<title>Rekrutacja - WipeNation</title>
	<meta name="description" content="Rekrutacja gildii WipeNation">
	<meta name="keywords" content="wow,world,warcraft,wipenation,gildia,defias,zapisy,rekrutacja">
	<meta name="author" content="Rafał Wasik">
	<link rel="stylesheet" type="text/css" href="../css/formularz.css">
	<script src="../scripts/formularz.js"> </script>
</head>

<body>
	
	<?php include '..\inc.php';?>
	
	
	<div id="main">
	
	<h1 style="text-align:center;"> Rekrutacja </h1>
	<h3> Jeżeli chcesz dołączyć do naszej gildii, wypełnij ten formularz :></h3>

	
	<form method= "post" action = "check_form.php" onsubmit="send()" onreset="clearAlert()">
		Nick:<br>
			<input name="nick" type=text size=40 required><br>
		Nazwa postaci:<br>
			<input name="nazwa" type=text size=40 required><br>
		Serwer:<br>
			<select name= "serwer">
				<optgroup label="Połączone">
					<option value="Defias Brotherhood">Defias Brotherhood</option>
					<option value="Venture Co">Venture Co</option>
				</optgroup>
				<optgroup label="Niepołączone">
					<option value="Scarshield Legion">Scarshield Legion</option>
					<option value="Ravenholdt">Ravenholdt</option>
				</optgroup>
			</select><br>
		Rola:<br>
			<input type="radio" name="rola" value="DPS" checked> DPS &nbsp;
			<input type="radio" name="rola" value="Tank"> Tank &nbsp;
			<input type="radio" name="rola" value="Healer"> Healer<br>
		Dni rajdowe:<br>
			<input type="checkbox" name="dzien[]" value="Poniedziałek">Poniedziałek &nbsp;
			<input type="checkbox" name="dzien[]" value="Wtorek">Wtorek &nbsp;
			<input type="checkbox" name="dzien[]" value="Środa">Środa &nbsp;
			<input type="checkbox" name="dzien[]" value="Czwartek">Czwartek &nbsp;
			<input type="checkbox" name="dzien[]" value="Piątek">Piątek &nbsp;
			<input type="checkbox" name="dzien[]" value="Sobota">Sobota &nbsp;
			<input type="checkbox" name="dzien[]" value="Niedziela">Niedziela
				<br>
		Coś o sobie:<br>
			<textarea rows=5 cols=40 maxlength=200> </textarea><br>
		
		<input type="reset" value="Wyczyść">
		<input type="submit" value="Wyślij">
		
	</form>
	</div>
	
	<?php include '..\fun.php';?>
	
</body>

</html>