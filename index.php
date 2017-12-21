<!DOCTYPE html>
<html>
	
<head>
	<meta charset="utf-8" /> 
	<title>WipeNation</title>
	<meta name="description" content="Strona gildii WipeNation">
	<meta name="keywords" content="wow,world,warcraft,wipenation,gildia,defias">
	<meta name="author" content="Rafał Wasik">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<script src="scripts/index.js"> </script>
</head>

<body>

<?php
session_start();
?>
	
	<div class="flex-container">
		<div id="menu_logo"><a href = "index.php"><img src="images/logo.jpg" height=100% width=75%/></a></div>
		<div><a href = "index.php">Główna</a></div>
		<div>
			<a href = "kille/kille.php">Galeria</a>
			<div class="menu_content"><a href = "#">ToS</a></div>
			<div class="menu_content"><a href = "#">Antorus</a></div>
		</div>
		<div><a href = "sklad/sklad.php">Skład</a>
		<div class="menu_content"><a href = "#">Main</a></div>
		<div class="menu_content"><a href = "#">Rezerwa</a></div>
		</div>
		<div><a href = "formularz/formularz.php">Rekrutacja</a></div>
		<div><a href = "form_osoba/form_osoba.php">Formularz</a></div>
		<div><p id="RNG" onclick="rng()">ROLL</p> </div>
		<div>
			<select id=selectList onchange="changeAppearance()">
			<option value="1">Wygląd 1</option>
			<option value="2">Wygląd 2</option>
			<option value="3">Wygląd 3</option>
			</select>
		</div>
		<?php
		if (!isset($_SESSION["name"]))
		{ ?>
		<div><a href = "login/login.php">Zaloguj</a></div>
		<div><a href = "dodaj/dodaj.php">Dodaj</a></div>
		<?php 
		}
		?>
		<?php
		if (isset($_SESSION["name"]))
		{ ?>
			<div><a href = "edytor/edytor.php">Edytor</a></div>
			<div><?php echo $_SESSION["name"]; ?></div>
			<div><a href = "login/wyloguj.php">WYLOGUJ</a></div>
		<?php
		}
		?>
	</div>

	<div id="main">
	<article id="mainarticle">
	<h1 style="text-align:center; padding-top:20px"> Witaj na stronie gildii WipeNation!</h1>
	<br>
	
	<section>
	<h3>Słówko o nas</h3>
	<p>Cześć! Jesteśmy całkiem sporą, lecz zgraną ekipą graczy na serwerzy Defias Brotherhood. Na co dzień
		zabawni, lecz na czas rajdu poważniejemy i skupiamy się na maksa! Naszym ostatnim osiągnięciem jest
		pokonanie Kil'jaedena na Heroicu. Obecnie poszukujemy więcej ludzi 
		do progresu Mythic Tomb of Sargeras. Jeżeli jesteś zainteresowany, złóż swoją kandydaturę poprzez
		formularz poniżej.<br>
		Do zobaczenia w grze!
	</p>
	</section>
	
	<section>
	<h3>Co robimy?</h3>  <button id=but_on onclick=rozwin()>Rozwiń</button>  <button id=but_off onclick=zwin()>Zwiń</button>
	<ul>
		<li>Poniedziałek
			<ul id="list1">
			</ul>
		</li>
		<li>Czwartek
			<ul id="list2">
			</ul>
		</li>
		<li>Piątek
			<ul id="list3">
			</ul>
		</li>
		<li>Sobota
			<ul id="list4">
			</ul>
		</li>
		<li>Niedziela
			<ul id="list5">
			</ul>
		</li>
	</ul>
	</section>
	
	<section>
	<h3>Kogo szukamy?</h3>
	<ol>
		<li>DPS &nbsp; &nbsp; <meter value="0.7"></meter>
			<ul>
				<li>Affliction Warlock</li>
				<li><b>Arms Warrior</b></li>
				<li>Shadow Priest</li>
				<li>Subtlety Rouge</li>
			</ul>
		</li>
		<li>Healer &nbsp; &nbsp; <meter value="0.4"></meter>
			<ul>
				<li><b>Holy Paladin</b></li>
				<li>Holy Priest</li>
			</ul>
		</li>
		<li>Tank &nbsp; &nbsp; <meter value="0.1"></meter>
			<ul>
				<li><b>Guardian Druid</b></li>
				<li>Blood Death Knight</li>
			</ul>
		</li>
	</ol>
	</section>
	</article>

	<article id="endArt">
	
	<aside id="logi">
	<p><a href = "test.txt" download = "plik.txt">Pobierz plik z logami z serwera HTTP</a></p>
	<p><a href = "ftp://speedtest.tele2.net/100MB.zip">Pobierz plik z logami z serwera FTP</a></p>
	</aside>

	
	<br>
	<a href= "http://eu.battle.net/wow/en/guild/defias-brotherhood/WipeNation/"><img src="images/wow_logo.jpg" height="50" width="50" alt="WN na stronie WoW"/></a>
	<a href= "https://www.wowprogress.com/guild/eu/defias-brotherhood/WipeNation"><img src="images/wprogress.jpg" height="50" alt="WN na stronie WowProgress"/></a>
	
	<br>
	
	<footer>
		<p>Jeśli masz więcej pytań to śmiało wyślij do nas wiadomość.</p>
		<p><a href = "mailto:oficerka@wipenation.eu">Wyślij mail</a></p>
	</footer>
	</article>
	</div>
	
	<details>
		<summary>Autor - Rafał Wasik</summary>
		<p> Strona internetowa powstała w trakcie laboratorium z PSW. Wrocław, 2017</p>
	</details>	
	
	<?php
	if(isset($_COOKIE["appearance"]))
	{
		?>
		<script>
			changeAppear(<?php echo $_COOKIE["appearance"] ?>);
			selectEle(<?php echo $_COOKIE["appearance"] ?>);
		</script>
<?php
}?>
</body>


</html>
