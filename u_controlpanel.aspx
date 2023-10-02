<%@ Page Title="" Language="VB" MasterPageFile="~/user_MasterPage.master" AutoEventWireup="false" CodeFile="u_controlpanel.aspx.vb" Inherits="u_controlpanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
    }
    .style8
    {
        width: 268px;
    }
    .style9
    {
        width: 275px;
        direction: ltr;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style8" align="center">
            <asp:Label ID="Label1" runat="server" Text="a"></asp:Label>
        </td>
        <td class="style9">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7" colspan="2" rowspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="user1" DataSourceID="SqlDataSource1">
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
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:PRConnectionString50 %>" 
                SelectCommand="SELECT * FROM [tb1] WHERE ([user1] = @user1)">
                <SelectParameters>
                    <asp:SessionParameter Name="user1" SessionField="username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td class="style9" align="center">
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/u-changpass.aspx">تغییر رمز</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style9" align="center">
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/u_edit.aspx">ویرایش</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

