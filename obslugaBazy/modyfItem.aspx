<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="modyfItem.aspx.vb" Inherits="ASP.modyfItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server" method="post">
<div style="margin-left: 7%; background: rgba(255, 255, 255, 0.75)">
    <h1>
        <asp:Label ID="Label1" runat="server" Text="Modyfikuj przedmiot"></asp:Label>
    </h1>
    <p class="style1">
        ID przedmiotu:
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="idLINQDataSource" DataTextField="idProduktu" 
            DataValueField="idProduktu" Height="17px" Width="127px" 
            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>
        <asp:LinqDataSource ID="idLINQDataSource" runat="server" 
            ContextTypeName="ASP.KategorieDataSourceDataContext" EntityTypeName="" 
            OrderBy="idProduktu" Select="new (idProduktu)" TableName="produkties">
        </asp:LinqDataSource>
    </p>
    <p class="style1">
        Nazwa:
        <asp:TextBox ID="TextBox2" name = "TextBox2" runat="server" Width="172px"></asp:TextBox>
    </p>
    <p class="style1">
        Cena :
        <asp:TextBox ID="TextBox3" name="TextBox3" runat="server" TextMode="Number" Width="178px"></asp:TextBox>
    </p>
    <p class="style1">
        Opis: 
        <asp:TextBox ID="TextBox4" name="TextBox4" runat="server" Width="184px"></asp:TextBox>
    </p>
    <p class="style1">
        Kategoria: 
        <asp:TextBox ID="TextBox5" name="TextBox5" runat="server" Width="153px"></asp:TextBox>
    </p>
    <p class="style1">
        <asp:Button ID="Button1" runat="server" Text="ZAPISZ" 
            CausesValidation="False" />
        <asp:Button ID="butUs" runat="server" Text="USUŃ" />
    </p>

    <input type="submit" Value="Wyloguj" runat="server" id="cmdSignOut">
    </div>
</form>
</asp:Content>
