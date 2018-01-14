Imports System.Data.SqlClient
Imports System.Web.Security

Public Class modyfItem
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not (IsPostBack) Then
            DropDownList1.SelectedIndex = -1
        End If
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
            TextBox2.Text = reader.Item("nazwa").ToString
            TextBox3.Text = reader.Item("cena")
            TextBox4.Text = reader.Item("opis").ToString
            TextBox5.Text = reader.Item("kategoria").ToString
        End If
    End Sub

    Private Sub cmdSignOut_ServerClick(ByVal sender As System.Object, ByVal e As System.EventArgs) _
Handles cmdSignOut.ServerClick
        FormsAuthentication.SignOut()
        Response.Redirect("logon.aspx", True)
    End Sub



    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim id As String = DropDownList1.Text
        Dim nazwa As String = TextBox2.Text
        Dim cena As String = TextBox3.Text
        Dim opis As String = TextBox4.Text
        Dim kategoria As String = TextBox5.Text
        Dim data As DateTime = DateTime.Today
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("UPDATE produkty SET nazwa=@nazwa, cena=@cena, opis=@opis, data_dodania=@data, kategoria=@kategoria where idProduktu =@id", con)
        cmd.Parameters.AddWithValue("@id", id)
        cmd.Parameters.AddWithValue("@nazwa", nazwa)
        cmd.Parameters.AddWithValue("@cena", cena)
        cmd.Parameters.AddWithValue("@opis", opis)
        cmd.Parameters.AddWithValue("@data", data)
        cmd.Parameters.AddWithValue("@kategoria", kategoria)
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If

        cmd.ExecuteNonQuery()
        con.Close()
    End Sub

    Protected Sub butUs_Click(ByVal sender As Object, ByVal e As EventArgs) Handles butUs.Click
        Dim id As String = DropDownList1.Text
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("DELETE FROM produkty where idProduktu =@id", con)
        cmd.Parameters.AddWithValue("@id", id)
        If con.State = ConnectionState.Closed Then
            con.Open()
        End If

        cmd.ExecuteNonQuery()
        con.Close()
        DropDownList1.DataBind()
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
    End Sub

End Class