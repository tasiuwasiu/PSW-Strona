<%@ Page Title="Formularz" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="formularz.aspx.vb" Inherits="ASP.Formularz" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

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

	

<div id="main" align="center" runat="server" style="margin-left: 7%; background: rgba(255, 255, 255, 0.75)">
<h1>Formularz</h1>
	<form id="form1" runat="server">


    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
        Height="112px" Width="421px">
        <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="Dane logowania">
            <ContentTemplate>
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:Label runat="server" AssociatedControlID="nazwa" text="Login: " />
                        </td>
                        <td>
                            <asp:TextBox ID="nazwa" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="nazwa" Display="None" ErrorMessage="Pole wymagane" 
                                Text="Wymagane" />
                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                                runat="server" Enabled="True" PopupPosition="Right" 
                                TargetControlID="RequiredFieldValidator2">
                            </asp:ValidatorCalloutExtender>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" AssociatedControlID="haslo" text="Has³o: " />
                        </td>
                        <td>
                            <asp:TextBox ID="haslo" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="haslo" Display="None" ErrorMessage="Pole wymagane" 
                                Text="Wymagane" />
                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                                runat="server" Enabled="True" PopupPosition="Right" 
                                TargetControlID="RequiredFieldValidator3">
                            </asp:ValidatorCalloutExtender>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" AssociatedControlID="haslo2" text="Powtórz has³o: " />
                        </td>
                        <td>
                            <asp:TextBox ID="haslo2" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="haslo2" Display="None" ErrorMessage="Pole wymagane" 
                                Text="Wymagane" />
                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
                                runat="server" Enabled="True" PopupPosition="Right" 
                                TargetControlID="RequiredFieldValidator4">
                            </asp:ValidatorCalloutExtender>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="haslo" ControlToValidate="haslo2" Display="None" 
                                ErrorMessage="Niezgodnoœæ hase³" Text="Niezgodnoœæ hase³" />
                            <asp:ValidatorCalloutExtender ID="CompareValidator1_ValidatorCalloutExtender" 
                                runat="server" Enabled="True" PopupPosition="Right" 
                                TargetControlID="CompareValidator1">
                            </asp:ValidatorCalloutExtender>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Dane osobiste">
            <ContentTemplate>
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:Label runat="server" AssociatedControlID="email" text="E-mail: " />
                        </td>
                        <td>
                            <asp:TextBox ID="email" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="email" Display="None" ErrorMessage="Pole wymagane" 
                                Text="Wymagane" />
                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
                                runat="server" Enabled="True" PopupPosition="Right" 
                                TargetControlID="RequiredFieldValidator5">
                            </asp:ValidatorCalloutExtender>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="email" Display="None" ErrorMessage="B³êdny adres" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                            <asp:ValidatorCalloutExtender ID="RegularExpressionValidator2_ValidatorCalloutExtender" 
                                runat="server" Enabled="True" PopupPosition="Right" 
                                TargetControlID="RegularExpressionValidator2">
                            </asp:ValidatorCalloutExtender>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" AssociatedControlID="tel" text="Telefon: " />
                        </td>
                        <td>
                            <asp:TextBox ID="tel" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="tel" Display="None" ErrorMessage="Pole wymagane" 
                                Text="Wymagane" />
                            <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                                runat="server" Enabled="True" PopupPosition="Right" 
                                TargetControlID="RequiredFieldValidator1">
                            </asp:ValidatorCalloutExtender>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="tel" Display="None" ErrorMessage="B³êdny numer" 
                                ValidationExpression="^\d{9}$" />
                            <asp:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
                                runat="server" Enabled="True" PopupPosition="Right" 
                                TargetControlID="RegularExpressionValidator1">
                            </asp:ValidatorCalloutExtender>
                        </td>

                    </tr>
                </table>
            </ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>

    <div class="style1" >



    <br />
    <br />
    <br />
	<br />
	<br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button id="btnSubmit" Text="Wyœlij" Runat="server" 
    style="text-align: center" />
                <asp:Button ID="btnShow" Runat="server" onClick="But_Click" 
                    style="text-align: center" Text="Wyœwietl" />
                <br />
                <br />
                <asp:Label ID="textlab" runat="server" Visible="false"></asp:Label>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnShow" />
                <asp:AsyncPostBackTrigger ControlID="btnSubmit" />
            </Triggers>
        </asp:UpdatePanel>
        <br />
        <br />
     </form>

    
   

	</div>
</asp:Content>