Imports System.Data
Imports System.Data.SqlClient

Partial Class Default2
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        SqlDataSource2.Insert()


    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click

        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        con.Open()



        Dim str As String
        Dim s As String
        s = TextBox2.Text

        str = String.Format(" UPDATE picc SET pic= '" + s + "' WHERE (id = '1')")
        TextBox1.Text = str
        Dim c As New SqlCommand(str, con)
        c.ExecuteNonQuery()


    End Sub
End Class
