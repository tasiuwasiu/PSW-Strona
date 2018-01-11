<%@ Page Language="VB" MasterPageFile="~/Site.Master" CodeBehind="lista.aspx.vb" Inherits="ASP.Lista"%>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link rel="stylesheet" type="text/css" href="css/dodaj.css">
	<script src="~/scripts/dodaj.js"></script>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


    <form id="form1" runat="server">


<div style="margin-left: 7%; background: rgba(255, 255, 255, 0.75);" class="style1">
    
    <h1>
        Lista produktów</h1>
    <p>
        &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            DataSourceID="KategorieLINQDataSource" DataTextField="kategoria" 
        DataValueField="kategoria" AutoPostBack="True">
        </asp:RadioButtonList>
        <asp:LinqDataSource ID="KategorieLINQDataSource" runat="server" 
        ContextTypeName="ASP.KategorieDataSourceDataContext" EntityTypeName="" 
        Select="new (key as kategoria, it as produkties)" TableName="produkties" 
            GroupBy="kategoria">
    </asp:LinqDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            DataSourceID="ProduktyLINQDataSource" onRowCommand="GridView1_RowCommand" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="idProduktu" 
                    HeaderText="idProduktu" ReadOnly="True" SortExpression="idProduktu">
                </asp:BoundField>
                <asp:BoundField DataField="nazwa" 
                    HeaderText="nazwa" ReadOnly="True" SortExpression="nazwa" />
                <asp:BoundField DataField="cena" HeaderText="cena" ReadOnly="True" 
                    SortExpression="cena" />
                    <asp:ButtonField CommandName="Dodaj" Text="Dodaj do koszyka" 
                    ButtonType="Button" CausesValidation="True" />
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
        <asp:LinqDataSource ID="ProduktyLINQDataSource" runat="server" 
            ContextTypeName="ASP.KategorieDataSourceDataContext" EntityTypeName="" 
            Select="new (idProduktu, nazwa, cena)" 
            TableName="produkties" Where="kategoria == @kategoria">
            <WhereParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="kategoria" 
                    PropertyName="SelectedValue" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Liczba produktów w koszyku: "></asp:Label>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </p>
    <p>
        &nbsp;</p>
    
</div>



    </form>



</asp:Content>