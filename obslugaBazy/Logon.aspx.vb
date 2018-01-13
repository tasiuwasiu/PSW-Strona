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

        ' Check for an invalid userName.
        ' userName  must not be set to nothing and must be between one and 15 characters.
        If ((userName Is Nothing)) Then
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.")
            Return False
        End If
        If ((userName.Length = 0) Or (userName.Length > 15)) Then
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.")
            Return False
        End If

        ' Check for invalid passWord.
        ' passWord must not be set to nothing and must be between one and 25 characters.
        If (passWord Is Nothing) Then
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.")
            Return False
        End If
        If ((passWord.Length = 0) Or (passWord.Length > 25)) Then
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.")
            Return False
        End If

        Try
            ' Consult with your SQL Server administrator for an appropriate connection
            ' string to use to connect to your local SQL Server.
            conn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\database.mdf;Integrated Security=True;User Instance=True")
            conn.Open()

            ' Create SqlCommand to select pwd field from the users table given a supplied userName.
            cmd = New SqlCommand("Select haslo from uzytkownicy where login=@userName", conn)
            cmd.Parameters.Add("@userName", SqlDbType.VarChar, 25)
            cmd.Parameters("@userName").Value = userName


            ' Execute command and fetch pwd field into lookupPassword string.
            lookupPassword = cmd.ExecuteScalar()

            ' Cleanup command and connection objects.
            cmd.Dispose()
            conn.Dispose()
        Catch ex As Exception
            ' Add error handling here for debugging.
            ' This error message should not be sent back to the caller.
            System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " & ex.Message)
        End Try

        ' If no password found, return false.
        If (lookupPassword Is Nothing) Then
            ' You could write failed login attempts here to the event log for additional security.
            Return False
        End If

        ' Compare lookupPassword and input passWord by using a case-sensitive comparison.
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