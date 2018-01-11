<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="wyswietlKoszyk.aspx.vb" Inherits="ASP.wyswietlKoszyk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <form id="form1" runat="server">
    <div style="margin-left: 7%; background: rgba(255, 255, 255, 0.75)">
        <h1 class="style1">
            Koszyk</h1>
        <h4>
        <asp:Label ID="pustyLabel" runat="server" Text="Koszyk jest pusty!"></asp:Label>
        </h4>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p class="style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                onRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="key" HeaderText="Nazwa" />
                    <asp:BoundField DataField="value" HeaderText="Cena" />
                    <asp:ButtonField CommandName="Usun" Text="Usun" ButtonType="Button" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </p>
        <p class="style1">
            &nbsp;<asp:Label ID="Label1" runat="server" Text="Całkowita wartość produktów:"></asp:Label>
            <asp:Label ID="calk" runat="server" Text=""></asp:Label>
        &nbsp;zł</p>
        <p class="style1">
            <asp:Label ID="Label2" runat="server" >Sposób dostawy: </asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Kurier</asp:ListItem>
                <asp:ListItem>Poczta Polska</asp:ListItem>
                <asp:ListItem>Odbiór osobisty</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p class="style1">
            <asp:Button ID="Button1" runat="server" style="text-align: justify" Text="ZŁÓŻ ZAMÓWIENIE" />
        </p>
    </div>
    </form>


</asp:Content>
