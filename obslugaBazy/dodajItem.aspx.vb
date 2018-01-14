Imports System.Data.SqlClient
Imports System.Web.Security

Public Class dodajItem
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Label2.Visible = False
        Label3.Visible = False
        Dim id As String = TextBox1.Text
        Dim reader As SqlDataReader
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("SELECT * FROM produkty where idProduktu =@id", con)
        cmd.Parameters.AddWithValue("@id", id)
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If
        reader = cmd.ExecuteReader()

        If reader.HasRows Then
            Label2.Visible = True
            reader.Close()
            con.Close()
        Else
            reader.Close()
            Label3.Visible = True
            Dim nazwa As String = TextBox2.Text
            Dim cena As String = TextBox3.Text
            Dim opis As String = TextBox4.Text
            Dim kategoria As String = TextBox5.Text
            Dim data As DateTime = DateTime.Today

            cmd = New SqlCommand("INSERT INTO produkty VALUES (@id, @nazwa, @cena, @opis, @data, @kategoria)", con)
            cmd.Parameters.AddWithValue("@id", id)
            cmd.Parameters.AddWithValue("@nazwa", nazwa)
            cmd.Parameters.AddWithValue("@cena", cena)
            cmd.Parameters.AddWithValue("@opis", opis)
            cmd.Parameters.AddWithValue("@data", data)
            cmd.Parameters.AddWithValue("@kategoria", kategoria)
            cmd.ExecuteNonQuery()
            con.Close()

            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox3.Text = ""
            TextBox4.Text = ""
            TextBox5.Text = ""
        End If
    End Sub

    Private Sub cmdSignOut_ServerClick(ByVal sender As System.Object, ByVal e As System.EventArgs) _
Handles cmdSignOut.ServerClick
        FormsAuthentication.SignOut()
        Response.Redirect("logon.aspx", True)
    End Sub

End Class