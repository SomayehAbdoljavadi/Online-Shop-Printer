<%@ Page Title="" Language="VB" MasterPageFile="~/user_MasterPage.master" AutoEventWireup="false" CodeFile="u_serch.aspx.vb" Inherits="u_serch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style15
        {
            height: 152px;
        }
        .style17
        {
            height: 91px;
            width: 415px;
        }
        .style16
        {
            height: 208px;
            width: 415px;
        }
        .style18
        {
            height: 209px;
            width: 415px;
        }
        .style19
        {
            height: 89px;
            width: 415px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" bgcolor="Black">
    <tr>
        <td class="style15" colspan="2" align="center">
            <asp:Image ID="Image2" runat="server" Height="164px" 
                    ImageUrl="~/image/arm/hp-slate2.jpg" Width="456px" />
        </td>
    </tr>
    <tr>
        <td class="style17">
            <asp:Button ID="Button1" runat="server" Text="جستوجو" />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:PRConnectionString58 %>" 
                SelectCommand="SELECT * FROM [e]"></asp:SqlDataSource>
                </td>
        <td class="style18">
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:PRConnectionString49 %>" 
                SelectCommand="SELECT * FROM [printer] WHERE ([model] = @model)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="model" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackImageUrl="~/image/arm/hp-invent-clean-blue-wallpaper.jpg" 
                DataKeyNames="model" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="model" HeaderText="model" ReadOnly="True" 
                        SortExpression="model" />
                    <asp:BoundField DataField="speed" HeaderText="speed" SortExpression="speed" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" />
                </Columns>
            </asp:GridView>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style19" bgcolor="Black">
            s</td>
        <td class="style18">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16" bgcolor="Black">
                &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

