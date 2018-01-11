Partial Public Class Lista
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Literal1.Text = Session("tab").Count

        If IsPostBack Then
            Literal1.Text = Session("tab").Count
        End If
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs)
        If (e.CommandName = "Dodaj") Then
            Dim index As Integer = Convert.ToInt32(e.CommandArgument)
            Dim row As GridViewRow = GridView1.Rows(index)
            Dim str As String = row.Cells(1).Text
            If (Not Session("tab").ContainsKey(str)) Then
                Session("tab").Add(str, row.Cells(2).Text)
                Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
            End If


        End If
    End Sub



End Class
