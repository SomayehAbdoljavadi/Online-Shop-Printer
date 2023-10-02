<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:CommandField />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PRConnectionString30 %>" 
            SelectCommand="SELECT * FROM [picc]" 
            UpdateCommand="UPDATE picc SET pic = @pic WHERE (id = 1)">
            <UpdateParameters>
                <asp:Parameter Name="pic" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" Text="Button" />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="488px"></asp:TextBox>
        <br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/arm/images (2).jpg" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PRConnectionString %>" 
            InsertCommand="INSERT INTO t(d, n) VALUES ( @d , @n )" 
            SelectCommand="SELECT * FROM [picc]">
            <InsertParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="d" 
                    PropertyName="SelectedDate" />
                <asp:ControlParameter ControlID="TextBox1" Name="n" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
