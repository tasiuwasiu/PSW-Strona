Public Class wyswietlKoszyk
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("tab").Count > 0 Then
            pustyLabel.Visible = False
            GridView1.Visible = True
            calk.Visible = True
            GridView1.DataSource = Session("tab")
            GridView1.DataBind()
            Button1.Visible = True
            Label1.Visible = True
            Label2.Visible = True
            DropDownList1.Visible = True

        Else
            pustyLabel.Visible = True
            GridView1.Visible = False
            calk.Visible = False
            Button1.Visible = False
            Label1.Visible = False
            Label2.Visible = False
            DropDownList1.Visible = False

        End If
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs)
        If (e.CommandName = "Usun") Then
            Dim index As Integer = Convert.ToInt32(e.CommandArgument)
            Dim row As GridViewRow = GridView1.Rows(index)
            Session("tab").remove(row.Cells(0).Text)
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)



        End If
    End Sub

    Protected Sub GV_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.DataBound
        Dim Volume As Decimal = 0
        For Each r As GridViewRow In GridView1.Rows
            If r.RowType = DataControlRowType.DataRow Then
                Volume += Convert.ToDecimal(r.Cells(1).Text)
            End If
        Next
        calk.Text = Math.Round(Volume, 0).ToString()

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Session("tab") = New Hashtable()
        Session("wart") = calk.Text
        Response.Redirect("potwierdzZamow.aspx")
    End Sub
End Class