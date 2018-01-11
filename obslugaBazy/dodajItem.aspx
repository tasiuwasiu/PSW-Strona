<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="dodajItem.aspx.vb" Inherits="ASP.dodajItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style1
    {
        text-align: justify;
    }
</style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
<div style="margin-left: 7%">


    <h1>
        <asp:Label ID="Label1" runat="server" Text="Dodaj przedmiot"></asp:Label>
    </h1>
    <p class="style1">
        ID przedmiotu:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p class="style1">
        Nazwa:
        <asp:TextBox ID="TextBox2" runat="server" Width="172px"></asp:TextBox>
    </p>
    <p class="style1">
        Cena :
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" Width="178px"></asp:TextBox>
    </p>
    <p class="style1">
        Opis:
        <asp:TextBox ID="TextBox4" runat="server" Width="184px"></asp:TextBox>
    </p>
    <p class="style1">
        Kategoria:
        <asp:TextBox ID="TextBox5" runat="server" Width="153px"></asp:TextBox>
    </p>
    <p class="style1">
        <asp:Button ID="Button1" runat="server" Text="DODAJ" />
    </p>


</div>
</form>
</asp:Content>
