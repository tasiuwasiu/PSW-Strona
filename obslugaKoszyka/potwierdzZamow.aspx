<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="potwierdzZamow.aspx.vb" Inherits="ASP.potwierdzZamow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <div style="margin-left: 7%; background: rgba(255, 255, 255, 0.75)">
        <h1 style="text-align: center">
            Dziękujemy za złożenie zamówienia!</h1>
        <p style="text-align: center">
            &nbsp;</p>
        <p style="text-align: center">
            &nbsp;</p>
        <p style="text-align: center">
            Twoje zamówienie zostało złożone i zajmiemy się nim jak najszybciej.
        </p>
        <p style="text-align: center">
            Całkowity koszt zamówienia:
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;zł</p>
    </div>
    </form>
</asp:Content>
