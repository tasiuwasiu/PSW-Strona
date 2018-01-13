<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Logon.aspx.vb" Inherits="ASP.Logon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div style="margin-left: 7%; background: rgba(255, 255, 255, 0.75)">
<form runat="server">
    <h1>
        Zaloguj się</h1>
    <br />
    <table>
   <tr>
      <td>Login:</td>
      <td><input id="txtUserName" type="text" runat="server"></td>
      <td><ASP:RequiredFieldValidator ControlToValidate="txtUserName"
           Display="Static" ErrorMessage="*" runat="server" 
           ID="vUserName" /></td>
   </tr>
   <tr>
      <td>Hasło: </td>
      <td><input id="txtUserPass" type="password" runat="server"></td>
      <td><ASP:RequiredFieldValidator ControlToValidate="txtUserPass"
          Display="Static" ErrorMessage="*" runat="server" 
          ID="vUserPass" />
      </td>
   </tr>
   <tr>
      <td>Zapamiętaj:</td>
      <td><ASP:CheckBox id="chkPersistCookie" runat="server" autopostback="false" /></td>
      <td></td>
   </tr>
</table>

    <input type="submit" Value="Zaloguj" runat="server" ID="cmdLogin">
</form>
</div>
</asp:Content>
