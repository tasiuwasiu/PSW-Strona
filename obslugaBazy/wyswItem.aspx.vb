Imports System.Data.SqlClient
Imports System.Web.Security

Public Class wyswItem
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim id As String = DropDownList1.Text
        Dim reader As SqlDataReader
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("SELECT * FROM produkty where idProduktu =@id", con)
        cmd.Parameters.AddWithValue("@id", id)
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
        reader = cmd.ExecuteReader()
        Dim strStatus As String = ""
        If reader.HasRows Then
            reader.Read()
            Label2.Text = reader.Item("nazwa").ToString
            Label4.Text = reader.Item("cena")
            Label6.Text = reader.Item("opis").ToString
            Label3.Text = reader.Item("kategoria").ToString
            If Not IsDBNull(reader.Item("data_dodania")) Then
                Label5.Text = reader.Item("data_dodania")
            Else
                Label5.Text = ""
            End If
        End If
    End Sub

    Private Sub cmdSignOut_ServerClick(ByVal sender As System.Object, ByVal e As System.EventArgs) _
Handles cmdSignOut.ServerClick
        FormsAuthentication.SignOut()
        Response.Redirect("logon.aspx", True)
    End Sub


End Class