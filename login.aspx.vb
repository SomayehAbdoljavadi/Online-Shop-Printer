Imports System.Data
Imports System.Data.SqlClient
Partial Class login
    Inherits System.Web.UI.Page




    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("main-page.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        ' Session.Add("username", TextBox1.Text)
        'Session.Add("password", TextBox2.Text)
        'Dim user As New HttpCookie("user", TextBox1.Text)
        'user.Expires = DateTime.MaxValue
        'Response.Cookies.Add(user)
        'Dim con As New SqlConnection()
        'con.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        'con.Open()
        'Dim str As String
        'str = "SELECT user1 FROM tb1 WHERE (name = 'admin')"
        'Dim com As New SqlCommand(str, con)
        'Dim l As String
        'l = com.ExecuteScalar()
        'Label1.Text = l
        'con.Close()
        'If (TextBox1.Text = l) Then
        'Dim con1 As New SqlConnection()
        'con1.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        'con1.Open()
        'Dim str1 As String
        'str1 = "SELECT password FROM tb1 WHERE (user1 = 'admin')"
        'Dim com1 As New SqlCommand(str1, con1)
        'l = com1.ExecuteScalar
        'Label1.Text = +"qwe" + "   " + l
        'TextBox3.Text = l
        'con1.Close()
        'If (l = TextBox2.Text) Then
        'Response.Redirect("contorolpanel.aspx")
        'End If
        'Else
        'Dim con2 As New SqlConnection()
        'con2.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        'con2.Open()
        'Str = "SELECT password FROM tb1 WHERE (name = '" + TextBox1.Text + "')"
        'Dim com2 As New SqlCommand(Str, con2)
        'l = com2.ExecuteScalar()
        'con2.Close()
        'If (l = TextBox2.Text) Then
        'Response.Redirect("u_controlpanel.aspx")
        'End If
        'End If
        Session.Add("username", TextBox1.Text)
        Session.Add("password", TextBox2.Text)
        Dim con11 As New SqlConnection()
        con11.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        con11.Open()
        Dim str11 As String
        str11 = "SELECT q FROM tb1 WHERE (user1 = '" + TextBox1.Text + "' and password='" + TextBox2.Text + "')"
        Dim com11 As New SqlCommand(str11, con11)
        Dim s As String = com11.ExecuteScalar()
        If (s = 1) Then
            Response.Redirect("contorolpanel.aspx")
        ElseIf (s = 0) Then
            Response.Redirect("u_controlpanel.aspx")
        End If



    End Sub
End Class
