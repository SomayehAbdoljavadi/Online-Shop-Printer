Imports System.Data
Imports System.Data.SqlClient
Partial Class tikmali
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        con.Open()



        Dim str As String
        str = String.Format("UPDATE tb1 SET check1='1' WHERE (user1= '" + DropDownList1.SelectedValue + "')")
        Dim c As New SqlCommand(str, con)
        c.ExecuteNonQuery()
        GridView1.DataBind()
        DropDownList1.DataBind()

    End Sub
End Class
