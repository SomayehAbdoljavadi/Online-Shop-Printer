Imports System.Data
Imports System.Data.SqlClient

Partial Class Default2
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load





    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("UserControlPanel.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim con As New SqlConnection()
        con.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        con.Open()
        Dim com As String
        Dim a As String
        Dim birth As String
        birth = DropDownList7.SelectedValue + "/" + DropDownList6.SelectedValue + "/" + DropDownList5.SelectedValue
        If (DropDownList8.SelectedValue = "s") Then
            a = "0"
        Else
            a = "1"
        End If

        Dim tr As String
        Dim test As String
        tr = "select user1 from tb1 where user1='" + TextBox7.Text + "'"
        Dim comand As New SqlCommand(tr, con)
        test = comand.ExecuteScalar()
        If (test <> "") Then
            MsgBox("کاربری با این نام قبلا ثبت شده است")

        Else
            com = String.Format("insert into tb1 values('" + TextBox1.Text + "','" + TextBox11.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + a + "','" + birth + "','" + DropDownList3.SelectedValue() + "','" + DropDownList4.SelectedValue() + "','" + TextBox7.Text + "','" + TextBox8.Text + "' ,'" + TextBox4.Text + "' ,'" + TextBox13.Text + "' ,'0'," + " ' 1  '," + "' 1' " + " ," + "'1' ," + "'0'" + ")")
            TextBox12.Text = com
            Dim comm As New SqlCommand(com, con)
            comm.ExecuteNonQuery()
        End If
        'SqlDataSource1.Insert()
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click

        'Dim con As New SqlConnection()
        'con.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        'con.Open()
        'Dim com As String
        'com = "select val from ostan1"
        'Dim comm As New SqlCommand(com, con)
        'Dim c
        'c = comm.ExeuteReader
        'DropDownList3.DataSource = c
        'DropDownList3.DataBind()


    End Sub

    Protected Sub DropDownList3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList3.SelectedIndexChanged
        'Dim con As New SqlConnection()
        'con.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        'con.Open()\
        'Dim com As String
        'com = "select * from shahr where ostan='" + DropDownList3.SelectedValue + "'"
        'Dim comm As New SqlCommand(com, con)
        'Dim a = comm.ExecuteScalar

        '        DropDownList4.DataSource = a
        ' DropDownList4.DataBind()

    End Sub

    Protected Sub SqlDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting
        FileUpload1.SaveAs(MapPath("~/image/user" + FileUpload1.FileName))
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        FileUpload1.SaveAs(MapPath("~/image/user" + FileUpload1.FileName))

        Image1.ImageUrl = "~/image/user" + FileUpload1.FileName
    End Sub
End Class
