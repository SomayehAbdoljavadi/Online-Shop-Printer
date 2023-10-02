'Imports System.Web.Mail
'Imports System.Web.Mail.SmtpMail
Imports System.Data
Imports System.Data.SqlClient


Partial Class u_ertebatt
    Inherits System.Web.UI.Page






    '      Dim ObjMailer As New MySmtpMail()
    ' ObjMailer.From = "EveryOne@Server.Com"
    ' ObjMailer.To = "EveryOne@AnotherServer.Com"
    ' ObjMailer.Subject = "New Email Object"

    'ObjMailer.Body = "The body of your mail in each language"
    '       ObjMailer.Send()





    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim con As New SqlConnection
        con.ConnectionString = "Data Source=.;Initial Catalog=PR;Integrated Security=True"
        con.Open()





        Dim str As String

        str = String.Format("insert into e values('" + Label4.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')")
        Dim c As New SqlCommand(str, con)
        c.ExecuteNonQuery()
    End Sub
End Class
