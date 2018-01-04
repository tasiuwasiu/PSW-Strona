Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack Then
            Validate()

            If IsValid Then
                Dim name As String = nazwa.Text
                Dim pass As String = haslo.Text
                Dim em As String = email.Text
                Dim tl As String = tel.Text
                textlab.Text = String.Format("Login: {0}{1} Hasło: {2}{1} E-mail:{3}{1} Telefon: {4}", name, "<br/>", pass, em, tl)
                textlab.Visible = True
            End If
        End If
    End Sub

    Protected Sub But_Click()
        Dim name As String = nazwa.Text
        Dim pass As String = haslo.Text
        Dim em As String = email.Text
        Dim tl As String = tel.Text

        textlab.Text = String.Format("Login: {0}{1} Hasło: {2}{1} E-mail:{3}{1} Telefon: {4}", name, "<br/>", pass, em, tl)
        textlab.Visible = True
    End Sub

End Class