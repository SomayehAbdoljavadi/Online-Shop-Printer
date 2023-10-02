<%@ Page Title="" Language="VB" MasterPageFile="~/admin-Mastermaster.master" AutoEventWireup="false" CodeFile="edit-serch.aspx.vb" Inherits="edit_serch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style13
        {
            width: 70px;
            height: 23px;
        }
        .style14
        {
            direction: rtl;
    }
    .style17
    {
        width: 70px;
        height: 159px;
    }
    .style18
    {
        height: 159px;
    }
    .style15
    {
        width: 70px;
        height: 47px;
        direction: ltr;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width:100%;" bgcolor="#CCCCCC">
    <tr>
        <td class="style13">
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="model" 
                DataValueField="model" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:PRConnectionString46 %>" 
                        SelectCommand="SELECT [model] FROM [printer]"></asp:SqlDataSource>
        </td>
        <td class="style14" colspan="5" align="left">
            <asp:Button ID="Button4" runat="server" Text="refresh" />
        </td>
    </tr>
    <tr>
        <td class="style17">
        </td>
        <td class="style18" colspan="5">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="model" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="model" HeaderText="model" 
                                SortExpression="model" ReadOnly="True" />
                    <asp:BoundField DataField="speed" HeaderText="speed" SortExpression="speed" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" />
                    <asp:CommandField />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:PRConnectionString47 %>" 
                SelectCommand="SELECT * FROM [printer] WHERE ([model] = @model)" 
                DeleteCommand="DELETE FROM printer WHERE (model = @model)" 
                UpdateCommand="UPDATE printer SET name = @name, price = @price, pic = @pic, speed = @speed WHERE (model = @model)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="model" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="model" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="model" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style15" align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="عکس"></asp:Label>
        </td>
        <td class="style14" align="center">
                    <asp:Label ID="Label4" runat="server" Text="قیمت"></asp:Label>
        </td>
        <td class="style14" align="center">
                    <asp:Label ID="Label3" runat="server" Text="سرعت"></asp:Label>
        </td>
        <td class="style14" align="center">
                    <asp:Label ID="Label2" runat="server" Text="مدل"></asp:Label>
        </td>
        <td class="style14" align="center">
                    <asp:Label ID="Label1" runat="server" Text="نام"></asp:Label>
        </td>
        <td class="style14">
                    &nbsp;</td>
    </tr>
    <tr>
        <td class="style15">
            <asp:FileUpload ID="FileUpload2" runat="server" />
        </td>
        <td class="style14">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td class="style14" align="center">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="style14">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td class="style14">
                    <asp:TextBox ID="TextBox1" runat="server" style="direction: ltr"></asp:TextBox>
        </td>
        <td class="style14">
                    <asp:Button ID="Button3" runat="server" Text="اضافه" Width="48px" />
        </td>
    </tr>
    <tr>
        <td class="style15">
            &nbsp;</td>
        <td class="style14">
                    &nbsp;</td>
        <td class="style14" align="center">
                    &nbsp;</td>
        <td class="style14">
                    &nbsp;</td>
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
        </td>
        <td class="style14">
                    &nbsp;</td>
    </tr>
    </table>
</asp:Content>

