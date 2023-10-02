<%@ Page Title="" Language="VB" MasterPageFile="~/user_MasterPage.master" AutoEventWireup="false" CodeFile="u_edit.aspx.vb" Inherits="u_edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
        }
        .style8
        {
            width: 273px;
        }
        .style9
        {
            width: 276px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
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
                        <asp:BoundField DataField="fish" HeaderText="fish" SortExpression="fish" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="user1" HeaderText="user1" ReadOnly="True" 
                            SortExpression="user1" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:CommandField />
                        <asp:CommandField />
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PRConnectionString52 %>" 
                    SelectCommand="SELECT name, family, id, tel, state, birth, ostan, fish, email, user1, city FROM tb1 WHERE (user1 = @user1)" 
                    
                    UpdateCommand="UPDATE tb1 SET name =@name, family =@family, id =@id, tel =@tel, ostan =@ostan, birth =@birth, state =@state, city =@city, email =@email, fish =@fish WHERE user1=(@user1)">
                    <SelectParameters>
                        <asp:SessionParameter Name="user1" SessionField="username" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="Label1" Name="user1" PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

