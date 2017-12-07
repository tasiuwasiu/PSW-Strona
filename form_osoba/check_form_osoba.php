<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" /> 
	<title>Rekrutacja - WipeNation</title>
	<meta name="description" content="Rekrutacja gildii WipeNation">
	<meta name="keywords" content="wow,world,warcraft,wipenation,gildia,defias,zapisy,rekrutacja">
	<meta name="author" content="Rafał Wasik">
	<link rel="stylesheet" type="text/css" href="../css/formularz.css">
	<script src="../scripts/rng.js"> </script>
</head>

<body>
	
	<div class="flex-container">
		<div id="menu_logo"><a href = "../index.html"><img src="../images/logo.jpg" height=100% width=75%/></a></div>
		<div><a href = "../index.html">Główna</a></div>
		<div>
			<a href = "../kille/kille.html">Galeria</a>
			<div class="menu_content"><a href = "#">ToS</a></div>
			<div class="menu_content"><a href = "#">Antorus</a></div>
		</div>
		<div><a href = "../sklad/sklad.html">Skład</a>
		<div class="menu_content"><a href = "#">Main</a></div>
		<div class="menu_content"><a href = "#">Rezerwa</a></div>
		</div>
		<div><a href = "formularz.html">Rekrutacja</a></div>
		<div><a href = "../form_osoba/form_osoba.html">Formularz</a></div>
		<div><a href = "../login/login.html">Zaloguj</a></div>
		<div><p id="RNG" onclick="rng()">ROLL</p> </div>
	</div>
	
	<div id="form">
	
	<h1 style="text-align = center"> Wynik </h1>
	
	<?php 
		$imie = $_POST["fname"];
		$nazwisko = $_POST["lname"];
		$email = $_POST["email"];
		$postaci = $_POST["postaci"];
		$telefon;
		$miesiac;
		$startgry;
		
		function checkName ($str)
		{
			return preg_match('/^[a-zA-ZążśźęćńółĄŻŚŹĘĆŃÓŁ]+$/ui', $str);
		}

		function checkTel ($str)
		{
			return preg_match('/^[0-9]{9}$/i', $str);
		}

		function checkMail ($str)
		{
			return filter_var($str, FILTER_VALIDATE_EMAIL);
		}
		
		if (checkName($imie) && checkName($nazwisko))
			echo "Imię i nazwisko użytkownika: ", $imie , " " , $nazwisko;	
		else
		{
			?> <p>Wprowadzono niepoprawne imię/nazwisko. Popraw swoje dane!</p>
			<input type='button' onclick="location.href='form_osoba.html';" value='Powrót'/>
			<?php
			die();
		}

		if (checkMail($email))
			echo "<br>Adres e-mail użytkownika: ", $email;
		else
		{
			?> <p>Wprowadzono niepoprawny e-mail. Popraw swoje dane!</p>
			<input type='button' onclick="location.href='form_osoba.html';" value='Powrót'/>
			<?php
			die();
		}

		if (!empty($_POST["usrtel"]))
		{
			$telefon = $_POST["usrtel"];
			if (checkTel($telefon))
				echo "<br>Telefon użytkownika: ", $telefon;
			else
				echo "<br>Błędny numer telefonu!";
		}

		if (!empty($_POST["miesiac"]))
		{
			$miesiac = $_POST["miesiac"];
			echo "<br>Miesiąc urodzin użytkownika: ", $miesiac;
		}

		if (!empty($_POST["startmonth"]))
		{
			$startgry = $_POST["startmonth"];
			echo "<br>Miesiąc rozpoczęcia gry: ", $startgry;
		}

		echo "<br>Ilość postaci użytkownika: ", $postaci;
		?>
		<p> Adres IP z którego został wysłany formularz: <?php echo($_SERVER['REMOTE_ADDR']);	?> </p>
	
	</div>
	
	</body>

</html>

