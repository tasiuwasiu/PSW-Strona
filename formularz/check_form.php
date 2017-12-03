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
		$nick = $_POST["nick"];
		$nazwa = $_POST["nazwa"];
		$serwer = $_POST["serwer"];
		$rola = $_POST["rola"];
		$dni[] = array();
		
		function checkString ($str)
		{
			return strlen($str)>0 && strlen($str)<12;
		}
		
		if (empty($_POST["dzien"]))
		{
			?> <p>Nie zaznaczono żadnego dnia rajdowego. Popraw swoje dane!</p>
			<input type='button' onclick="location.href='formularz.html';" value='Powrót'/>
			<?php
		}
		else
		{
			$dni = $_POST["dzien"];
			
			if (checkString($nick) && checkString($nazwa))
			{
				?>
				<p>Zarejestrowano następującego użytkownika: <br>
				<ul>
					<li>Nick: <?= $nick ?></li>
					<li>Nazwa użytkownika: <?= $nazwa ?> </li>
					<li>Rola: <?= $rola ?> </li>
					<li>Wybrane dni rajdowe:
						<ul>
						<?php
						foreach ($dni as $opt)
						{
							echo "<li>", $opt, "</li>";
						}?>
						</ul>
					</li>
				</ul>
				<?php
			}
			else
			{
				?> <p>Wprowadzono niepoprawny nick i/lub nazwę użytkownika. Popraw swoje dane!</p>
				<input type='button' onclick="location.href='formularz.html';" value='Powrót'/>	
				<?php
			}
		}
		?>
		<p> Adres IP z którego został wysłany formularz: <?php echo($_SERVER['REMOTE_ADDR']);	?> </p>
	
	</div>
	
	</body>

</html>