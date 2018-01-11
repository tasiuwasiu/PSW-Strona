Imports System.Data.SqlClient

Public Class modyfItem
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (IsPostBack) Then
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
                TextBox2.Text = reader.Item("nazwa").ToString

            End If

        End If
    End Sub

End Class