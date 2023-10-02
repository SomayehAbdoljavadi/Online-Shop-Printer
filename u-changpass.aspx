<%@ Page Title="" Language="VB" MasterPageFile="~/user_MasterPage.master" AutoEventWireup="false" CodeFile="u-changpass.aspx.vb" Inherits="u_changpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
    }
    .style8
    {
        width: 256px;
    }
    .style9
    {
        width: 284px;
    }
        .style10
        {
            width: 284px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td align="center" class="style8">
            <asp:Label ID="Label1" runat="server" Text="a"></asp:Label>
        </td>
        <td class="style9">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7" colspan="2" rowspan="3">
            <asp:Button ID="Button1" runat="server" Text="ارسال" />
        </td>
        <td align="right" class="style9">
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="style9">
            <asp:Label ID="Label2" runat="server" Text="رمز قبلی"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right" class="style9">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="style9">
            <asp:Label ID="Label4" runat="server" Text="رمز جدید"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right" class="style10">
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox3" ControlToValidate="TextBox2" 
                ErrorMessage="رمز یکی نیست!"></asp:CompareValidator>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password">رمز جدید</asp:TextBox>
        </td>
        <td class="style10">
            <asp:Label ID="Label3" runat="server" Text="تکرار رمز جدید"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

