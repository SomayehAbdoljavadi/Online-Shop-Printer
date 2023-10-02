<%@ Page Title="" Language="VB" MasterPageFile="~/admin-Mastermaster.master" AutoEventWireup="false" CodeFile="tikmali.aspx.vb" Inherits="tikmali" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
        }
        .style14
        {
            width: 200px;
        }
    .style15
    {
        height: 51px;
    }
    .style17
    {
        width: 327px;
        height: 32px;
    }
    .style18
    {
        width: 200px;
        height: 32px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width:100%;" bgcolor="#CCCCCC">
        <tr>
            <td class="style13" rowspan="4">
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="user1" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="user1" HeaderText="user1" ReadOnly="True" 
                            SortExpression="user1" />
                        <asp:BoundField DataField="fish" HeaderText="fish" SortExpression="fish" />
                        <asp:BoundField DataField="check1" HeaderText="check1" 
                            SortExpression="check1" />
                        <asp:BoundField DataField="dates" HeaderText="dates" SortExpression="dates" />
                        <asp:BoundField DataField="datef" HeaderText="datef" SortExpression="datef" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PRConnectionString38 %>" 
                    
                    SelectCommand="SELECT [user1], [fish], [check1], [dates], [datef] FROM [tb1] WHERE ([user1] = @user1)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="user1" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="user1" DataValueField="user1" 
                    AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PRConnectionString37 %>" 
                    SelectCommand="SELECT [user1] FROM [tb1] WHERE ([check1] = @check1)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="check1" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style13">
                <asp:Button ID="Button1" runat="server" Text="تایید تیک مالی" />
                </td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" colspan="3">
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
</asp:Content>

