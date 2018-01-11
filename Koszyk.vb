Public Class Koszyk
    Dim idProd As New List(Of String)
    Dim nazwy As New List(Of String)
    Dim ceny As New List(Of String)

    Public Sub addProd(ByVal id As String, ByVal naz As String, ByVal cena As String)
        idProd.Add(id)
        nazwy.Add(naz)
        ceny.Add(cena)
    End Sub

    Public Sub delProd(ByVal id As Integer)
        idProd.RemoveAt(id)
        nazwy.RemoveAt(id)
        ceny.RemoveAt(id)
    End Sub

    Public Function getNumber() As Integer
        getNumber = idProd.Count
    End Function

    Public Function getIDS() As List(Of String)
        getIDS = idProd
    End Function
End Class
