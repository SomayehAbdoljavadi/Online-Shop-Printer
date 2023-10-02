Imports System.Data
Imports System.Data.SqlClient

Partial Class edit_serch
    Inherits System.Web.UI.Page


    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        con.Open()





        Dim str As String

        str = String.Format("insert into printer values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + "dd')")
        Dim c As New SqlCommand(str, con)
        c.ExecuteNonQuery()
        DropDownList1.DataBind()

    End Sub




    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        DropDownList1.DataBind()
    End Sub
End Class
