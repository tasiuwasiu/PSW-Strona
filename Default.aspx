<%@ Page Title="Home Page" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="ASP._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
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
</asp:Content>
