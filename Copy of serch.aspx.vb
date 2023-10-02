Imports System.Data
Imports System.Data.SqlClient
Partial Class serch
    Inherits System.Web.UI.Page


    Protected Sub search_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles search.Click
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        con.Open()



        Dim str As String

        str = String.Format("SELECT name,model,speed,price FROM printer WHERE model =" + tsearch.Text)
        Dim c As New SqlCommand(str, con)
        Dim sqlread As SqlDataReader
        sqlread = c.ExecuteReader()
        GridView1.DataSource = sqlread
        GridView1.DataBind()



        con.Close()
    End Sub
End Class
