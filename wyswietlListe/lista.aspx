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
            DataSourceID="ProduktyLINQDataSource" onRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField AccessibleHeaderText="ID Produktu" DataField="idProduktu" 
                    HeaderText="ID Produktu" ReadOnly="True" SortExpression="idProduktu">
                <ItemStyle Width="10%" />
                </asp:BoundField>
                <asp:BoundField AccessibleHeaderText="Nazwa" DataField="nazwa" 
                    HeaderText="Nazwa" ReadOnly="True" SortExpression="nazwa" />
                <asp:BoundField AccessibleHeaderText="Cena" DataField="cena" HeaderText="Cena" 
                    ReadOnly="True" SortExpression="cena" />
                <asp:ButtonField CommandName="Dodaj" Text="Dodaj do koszyka" 
                    ButtonType="Button" CausesValidation="True" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="ProduktyLINQDataSource" runat="server" 
            ContextTypeName="ASP.KategorieDataSourceDataContext" EntityTypeName="" 
            Select="new (idProduktu, nazwa, cena, opis, data_dodania)" 
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