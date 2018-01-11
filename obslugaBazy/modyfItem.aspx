<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="modyfItem.aspx.vb" Inherits="ASP.modyfItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
<div style="margin-left: 7%">
    <h1>
        <asp:Label ID="Label1" runat="server" Text="Modyfikuj przedmiot"></asp:Label>
    </h1>
    <p class="style1">
        ID przedmiotu:
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="idLINQDataSource" DataTextField="idProduktu" 
            DataValueField="idProduktu" Height="17px" Width="127px">
        </asp:DropDownList>
        <asp:LinqDataSource ID="idLINQDataSource" runat="server" 
            ContextTypeName="ASP.KategorieDataSourceDataContext" EntityTypeName="" 
            OrderBy="idProduktu" Select="new (idProduktu)" TableName="produkties">
        </asp:LinqDataSource>
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
