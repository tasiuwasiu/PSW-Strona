<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="wyswItem.aspx.vb" Inherits="ASP.wyswItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

<div style="margin-left: 7%; background: rgba(255, 255, 255, 0.75)">



    <h1>
        <asp:Label ID="Label1" runat="server" style="text-align: center" 
            Text="Wyświetl przedmiot"></asp:Label>
    </h1>
    <p>
        <strong>Wybierz ID:&nbsp; </strong><asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="idLINQDataSource" DataTextField="idProduktu" 
            DataValueField="idProduktu" Height="17px" Width="127px" 
            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <asp:LinqDataSource ID="idLINQDataSource" runat="server" 
            ContextTypeName="ASP.KategorieDataSourceDataContext" EntityTypeName="" 
            OrderBy="idProduktu" Select="new (idProduktu)" TableName="produkties">
        </asp:LinqDataSource>
    </p>
    <p>
        <strong>Nazwa:</strong>&nbsp; <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    <p>
        <strong>Kategoria:</strong>&nbsp;
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </p>
    <p>
        <strong>Cena:
        </strong>&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
    </p>
    <p>
        <strong>Data ostatniej modyfikacji:</strong>&nbsp; <asp:Label ID="Label5" 
            runat="server"></asp:Label>
    </p>
    <p>
        <strong>Opis:</strong>&nbsp; <asp:Label ID="Label6" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
        <input type="submit" Value="Wyloguj" runat="server" id="cmdSignOut">



</div>
    </form>
</asp:Content>
