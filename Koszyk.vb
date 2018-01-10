Public Class Koszyk
    Dim idProd As New List(Of String)

    Public Function addProd(ByVal id As String) As Boolean
        idProd.Add(id)
        addProd = True
    End Function

    Public Function getNumber() As Integer
        getNumber = idProd.Count
    End Function

End Class
