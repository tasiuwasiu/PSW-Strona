<%@ Page Title="Galeria" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
     Inherits="ASP._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
<script src="../scripts/rng.js"> </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

<div id="main">

<h1 style="text-align:center;"> Galeria First Killi</h1>

<button id="btn_tos">Pokaż/ukryj TOS</button>
<button id="btn_ant">Pokaż/ukryj ANT</button>

<div id="TOS">
	
	<br>
	<div>
	<h3 style="text-align:center;">Heroic Misstress Sassz'ine</h3>
	<img src="images/miss.jpg" width=100% alt="Heroic Misstress">
	</div>
	<div>
	<h3 style="text-align:center;">Heroic Sisters of the Moon</h3>
	<img src="images/sis.jpg" width=100% alt="Heroic Sisters">
	</div>
	<div>
	<h3 style="text-align:center;">Heroic Desolate Host</h3>
	<img src="images/sis.jpg" width=100% alt="Heroic Sisters">
	</div>
	<div>
	<h3 style="text-align:center;">Heroic Kil'jaeden</h3>
	<img src="images/kj.jpg" width=100% alt="Heroic Kil'jaeden">
	</div>
	
</div>



<div id="ANT">
	<br><br>
	<div>
	<h3 style="text-align:center;">ANT1e</h3>
	<img src="images/miss.jpg" width=100% alt="Heroic Misstress">
	</div>
	<div>
	<h3 style="text-align:center;">ANT2</h3>
	<img src="images/sis.jpg" width=100% alt="Heroic Sisters">
	</div>
	<div>
	<a id="kil"></a>
	<h3 style="text-align:center;">ANT3</h3>
	<img src="images/kj.jpg" width=100% alt="Heroic Kil'jaeden">
	</div>
	<div>
	<h3 style="text-align:center;">ANT4</h3>
	<img src="images/kj.jpg" width=100% alt="Heroic Kil'jaeden">
	</div>
	
</div>

</div>

<script>
    document.getElementById("btn_tos").addEventListener("click", function () {

        var div = document.getElementById("TOS");
        if (div.style.display !== "none") {
            div.style.display = "none";
        }
        else {
            div.style.display = "block";
        }

    });

    document.getElementById("btn_ant").addEventListener("click", function () {

        var a = document.getElementById("ANT");
        if (a.style.display !== "none") {
            a.style.display = "none";
        }
        else {
            a.style.display = "block";
        }

    });
</script>
</asp:Content>