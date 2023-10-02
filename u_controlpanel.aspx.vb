
Partial Class u_controlpanel
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim a As String = Session("username")
    End Sub
End Class
