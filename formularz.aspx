<%@ Page Title="Formularz" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="formularz.aspx.vb" Inherits="ASP.Formularz" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link rel="stylesheet" type="text/css" href="css/dodaj.css">
	<script src="scripts/dodaj.js"></script>
    <style type="text/css">
        .style1
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

	

<div id="main" align="center" runat="server">

<h1 style="text-align:center; padding-top: 20px">Formularz</h1>
	<form method= "post" action = "formularz.aspx" runat="server">

    <div class="style1" >

    <asp:Label text = "Login: " AssociatedControlID = "nazwa" runat="server" />
    <asp:TextBox ID="nazwa" runat="server" />
    <asp:RequiredFieldValidator ControlToValidate= "nazwa" Text="Wymagane" runat="server" />
    <br />
    <asp:Label text = "Has³o: " AssociatedControlID = "haslo" runat="server" />
    <asp:TextBox ID="haslo" runat="server" />
    <asp:RequiredFieldValidator ControlToValidate= "haslo" Text="Wymagane" runat="server" />
    <br />
    <asp:Label text = "Powtórz has³o: " AssociatedControlID = "haslo2" runat="server" />
    <asp:TextBox ID="haslo2" runat="server" />
    <asp:RequiredFieldValidator ControlToValidate= "haslo2" Text="Wymagane" runat="server" />
    <asp:CompareValidator ControlToCompare="haslo" ControlToValidate="haslo2" Text="Niezgodnoœæ hase³" runat="server"/>
    <br />
    <asp:Label text = "E-mail: " AssociatedControlID = "email" runat="server" />
    <asp:TextBox ID="email" runat="server" />
    <asp:RequiredFieldValidator ControlToValidate= "email" Text="Wymagane" runat="server" />
    <asp:RegularExpressionValidator ControlToValidate="email" ErrorMessage="B³êdny adres" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" />
	<br />
    <asp:Label text = "Telefon: " AssociatedControlID = "tel" runat="server" />
    <asp:TextBox ID="tel" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate= "tel" Text="Wymagane" runat="server" />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="tel" ErrorMessage="B³êdny numer" ValidationExpression="^\d{9}$" runat="server" />
	<br />
    <asp:Button id="btnSubmit" Text="Wyœlij" Runat="server" style="text-align: center" />
    <asp:Button id="btnShow" Text="Wyœwietl" onClick="But_Click" Runat="server" style="text-align: center" />
	</div>
     <asp:Label ID="textlab" runat="server" Visible="false"></asp:Label>
	</form>

    
   

	</div>
</asp:Content>