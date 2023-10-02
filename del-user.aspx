<%@ Page Title="" Language="VB" MasterPageFile="~/admin-Mastermaster.master" AutoEventWireup="false" CodeFile="del-user.aspx.vb" Inherits="del_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 240px;
            height: 220px;
        }
        .style15
        {
            width: 77px;
            height: 220px;
        }
    .style16
    {
        width: 77px;
        height: 43px;
    }
    .style17
    {
        width: 240px;
        height: 43px;
    }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <table style="width:100%;" bgcolor="#CCCCCC">
            <tr>
                <td class="style16" align="center">
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="user1" DataValueField="user1" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:PRConnectionString41 %>" 
                        SelectCommand="SELECT [user1] FROM [tb1]"></asp:SqlDataSource>
                    </td>
                <td class="style17">
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="style15">
                    </td>
                <td class="style14">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="user1" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="family" HeaderText="family" 
                                SortExpression="family" />
                            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                            <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel" />
                            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                            <asp:BoundField DataField="birth" HeaderText="birth" SortExpression="birth" />
                            <asp:BoundField DataField="ostan" HeaderText="ostan" SortExpression="ostan" />
                            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                            <asp:BoundField DataField="user1" HeaderText="user1" ReadOnly="True" 
                                SortExpression="user1" />
                            <asp:BoundField DataField="password" HeaderText="password" 
                                SortExpression="password" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="fish" HeaderText="fish" SortExpression="fish" />
                            <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" />
                            <asp:BoundField DataField="check1" HeaderText="check1" 
                                SortExpression="check1" />
                            <asp:BoundField DataField="dates" HeaderText="dates" SortExpression="dates" />
                            <asp:BoundField DataField="datef" HeaderText="datef" SortExpression="datef" />
                            <asp:CommandField />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:PRConnectionString42 %>" 
                        SelectCommand="SELECT * FROM [tb1] WHERE ([user1] = @user1)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="user1" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="حذف کاربر" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    </td>
            </tr>
        </table>
  
   
</asp:Content>

