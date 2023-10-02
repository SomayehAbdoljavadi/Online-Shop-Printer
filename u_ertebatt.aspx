<%@ Page Title="" Language="VB" MasterPageFile="~/user_MasterPage.master" AutoEventWireup="false" CodeFile="u_ertebatt.aspx.vb" Inherits="u_ertebatt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 218px;
        }
        .style8
        {
            width: 309px;
        }
        .style9
        {
            width: 218px;
            height: 40px;
        }
        .style10
        {
            width: 309px;
            height: 40px;
        }
        .style11
        {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 99%;">
        <tr>
            <td class="style7">&nbsp;
                </td>
            <td class="style8" align="right">
                <asp:Label ID="Label4" runat="server" Text="admin@yahoo.com"></asp:Label>
                </td>
            <td class="style8">&nbsp;
                <asp:Label ID="Label1" runat="server" Text="مدیر آدرس"></asp:Label>
                </td>
            <td>&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style7">&nbsp;</td>
            <td class="style8" align="right">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          </td>
            <td class="style8">&nbsp;
                <asp:Label ID="Label2" runat="server" Text="کاربر آدرس"></asp:Label>
          </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9"></td>
            <td class="style10" align="right">
                <asp:TextBox ID="TextBox3" runat="server" style="direction: ltr" 
                    TextMode="MultiLine"></asp:TextBox>
          </td>
            <td class="style10">&nbsp;
                <asp:Label ID="Label3" runat="server" Text="متن"></asp:Label>
          </td>
            <td class="style11">&nbsp;
          </td>
        </tr>
        <tr>
            <td class="style9">&nbsp;</td>
            <td class="style10" align="right">
                <asp:Button ID="Button2" runat="server" Text="ارسال" />
          </td>
            <td class="style10">&nbsp;</td>
            <td class="style11">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

