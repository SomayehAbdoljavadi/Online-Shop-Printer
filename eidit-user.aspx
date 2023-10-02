<%@ Page Title="" Language="VB" MasterPageFile="~/admin-Mastermaster.master" AutoEventWireup="false" CodeFile="eidit-user.aspx.vb" Inherits="eidit_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 70px;
            height: 23px;
        }
        .style14
        {
            width: 470px;
            }
    .style15
    {
        width: 70px;
        height: 47px;
    }
    .style16
    {
        width: 470px;
        height: 47px;
    }
    .style17
    {
        width: 70px;
        }
    .style18
    {
        width: 470px;
        height: 159px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <table style="width:100%;" bgcolor="#CCCCCC">
            <tr>
                <td class="style13">
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="user1" DataValueField="user1" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:PRConnectionString43 %>" 
                        SelectCommand="SELECT [user1] FROM [tb1]"></asp:SqlDataSource>
                </td>
                <td class="style14">
                    <asp:Button ID="Button1" runat="server" Text="refresh" />
                </td>
            </tr>
            <tr>
                <td class="style17" rowspan="2">
                </td>
                <td class="style18">
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
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:PRConnectionString44 %>" 
                        SelectCommand="SELECT * FROM [tb1] WHERE ([user1] = @user1)" 
                        DeleteCommand="DELETE FROM tb1 WHERE (user1 = @user1)" 
                        UpdateCommand="UPDATE tb1 SET name = @name, id = @id, family = @family, state = @state, tel = @tel, city = @city, ostan = @ostan, birth = @birth, password = @password, datef = @datef, dates = @dates, check1 = @check1, pic = @pic, fish = @pic, email = @pic WHERE (user1 = @user1)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="user1" 
                                PropertyName="SelectedValue" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="user1" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="user1" 
                                PropertyName="SelectedValue" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style14">
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
    </p>
</asp:Content>

