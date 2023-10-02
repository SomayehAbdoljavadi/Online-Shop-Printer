Imports System.Data
Imports System.Data.SqlClient
Partial Class u_changpass
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        con.Open()

        Dim str As String

        str = String.Format("UPDATE tb1 SET password='" + TextBox2.Text + "'where (user1='" + Session("username") + "')")

        Dim c As New SqlCommand(str, con)
        c.ExecuteNonQuery()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim a As String = Session("username")
    End Sub
End Class
