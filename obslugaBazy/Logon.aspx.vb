Imports System.Data.SqlClient
Imports System.Web.Security

Public Class Logon
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Function ValidateUser(ByVal userName As String, ByVal passWord As String) As Boolean
        Dim conn As SqlConnection
        Dim cmd As SqlCommand
        Dim lookupPassword As String

        lookupPassword = Nothing

        If ((userName Is Nothing)) Then
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.")
            Return False
        End If
        If ((userName.Length = 0) Or (userName.Length > 15)) Then
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.")
            Return False
        End If

        If (passWord Is Nothing) Then
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.")
            Return False
        End If
        If ((passWord.Length = 0) Or (passWord.Length > 25)) Then
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.")
            Return False
        End If

        Try
            conn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True")
            conn.Open()
            cmd = New SqlCommand("Select haslo from uzytkownicy where login=@userName", conn)
            cmd.Parameters.Add("@userName", SqlDbType.VarChar, 25)
            cmd.Parameters("@userName").Value = userName
            lookupPassword = cmd.ExecuteScalar()
            cmd.Dispose()
            conn.Dispose()
        Catch ex As Exception
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " & ex.Message)
        End Try

        If (lookupPassword Is Nothing) Then
            Return False
        End If

        Return (String.Compare(lookupPassword, passWord, False) = 0)

    End Function

    Private Sub cmdLogin_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) _
   Handles cmdLogin.ServerClick
        If ValidateUser(txtUserName.Value, txtUserPass.value) Then
            FormsAuthentication.RedirectFromLoginPage(txtUserName.Value, _
            chkPersistCookie.Checked)
        Else
            Response.Redirect("logon.aspx", True)
        End If
    End Sub

End Class