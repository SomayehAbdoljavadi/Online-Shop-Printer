<%@ Page Title="" Language="VB" MasterPageFile="~/admin-Mastermaster.master" AutoEventWireup="false" CodeFile="serch.aspx.vb" Inherits="serch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            height: 152px;
        }
        .style16
        {
            height: 208px;
            width: 415px;
        }
        .style17
        {
            height: 91px;
            width: 415px;
        }
        .style18
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/arm/10074525_1.jpg" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width:100%;" bgcolor="Black">
        <tr>
            <td class="style15" colspan="2" align="center">
                <asp:Image ID="Image2" runat="server" Height="164px" 
                    ImageUrl="~/image/arm/hp-slate2.jpg" Width="456px" />
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Button ID="search" runat="server" Text="search" />
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="tsearch" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style18" rowspan="3">
                <asp:Image ID="Image3" runat="server" />
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style16" bgcolor="Black">
                <asp:GridView ID="GridView1" runat="server" 
                    BackImageUrl="~/image/arm/hp-invent-clean-blue-wallpaper.jpg">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style16" bgcolor="Black">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

