Partial Public Class Lista
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal1.Text = Session("koszyk").getNumber()

        If IsPostBack Then
            Literal1.Text = Session("koszyk").getNumber()
        End If
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs)
        If (e.CommandName = "Dodaj") Then
            Dim index As Integer = Convert.ToInt32(e.CommandArgument)
            Dim row As GridViewRow = GridView1.Rows(index)
            Session("Koszyk").addProd(ID:=row.Cells(1).Text)


            
        End If
    End Sub



End Class
