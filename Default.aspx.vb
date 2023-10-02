Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As New SqlConnection()
        con.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        con.Open()
        Dim str As String
        str = "insert into ertebat values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')"
        Dim com As New SqlCommand(str, con)
        com.ExecuteNonQuery()
        con.Close()
        DropDownList1.DataBind()


    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        GridView1.DataBind()


    End Sub
End Class
