<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" /> 
	<title>Rekrutacja - WipeNation</title>
	<meta name="description" content="Rekrutacja gildii WipeNation">
	<meta name="keywords" content="wow,world,warcraft,wipenation,gildia,defias">
	<meta name="author" content="Rafał Wasik">
	<link rel="stylesheet" type="text/css" href="../css/form_osoba.css">
	<script src="../scripts/formularz.js"> </script>
</head>

<body>
	
	<?php include '..\inc.php';?>

	<div id="main">

	<h1>Formularz dodatkowy dla obecnych członków gildii</h1>
	
	<form method="post" action="check_form_osoba.php" autocomplete="on" onsubmit="send()" onreset="clearAlert()">
		Imię:<br>
			<input type=text name=fname required autofocus onfocus=showHelp() onblur=hideHelp()> Wpisz imię<br>
		Nazwisko:<br>
			<input type=text name=lname required onfocus=showHelp() onblur=hideHelp()> Wpisz nazwisko (wymagane)<br>
		E-mail: <br>
		<input type=email name=email required placeholder="aaa@bbb.ccc" onfocus=showHelp() onblur=hideHelp()> Wpisz adres e-mail (wymagane)<br>
		
		Miesiąc urodzin:<br>
			<input type=text list="miesiace" name=miesiac>
				<datalist id="miesiace">
					<option value="Styczeń">
					<option value="Luty">
					<option value="Marzec">
					<option value="Kwiecień">
					<option value="Maj">
					<option value="Czerwiec">
					<option value="Lipiec">
					<option value="Sierpień">
					<option value="Wrzesień">
					<option value="Październik">
					<option value="Listopad">
					<option value="Grudzień">
				</datalist>
			Wybierz miesiąc z listy
		<br>
		Telefon: <br>
			<input type=tel name=usrtel pattern=[0-9]{9} placeholder="123456789" onfocus=showHelp() onblur=hideHelp()> Wprowadź 9-cyfrowy numer telefonu<br>
			
		<br>
		Preferowany kolor tabardu: <br>
			<input type="color" name="color"> Wybierz swój ulubiony kolor<br>
		Miesiąc rozpoczęcia gry: <br>
			<input type="month" name="startmonth"> <br>
		Ilość postaci na 110: <br>
			1 <input type="range" name="postaci" min="1" max="12"> 12 <br>
		Wyszukaj w Google: <br>
			<input type="search" name="googlesearch" placeholder="Szukaj"> <br>
		Link do Wowprogress: <br>
			<input type="url" name="wppage" placeholder="wowprogress.com/char..."> <br> <br>
		
		<input type="reset" value="Wyczyść">
		<input type="submit" value="Wyślij">
		
	</form>
	
	<article id="help">
		<p> Wymagane pola: nazwisko, adres e-mail.</p>
		<p> E-mail podaj w formie nazwa@domena.com</p>
		<p> Numer telefonu podaj w postaci 987655321</p>
	</article>

	</div>
	<?php include '..\fun.php';?>
</body>

</html>