<%@ Page Title="" Language="VB" MasterPageFile="~/admin-Mastermaster.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style14
        {
            direction: rtl;
    }
    .style17
    {
        width: 418px;
        height: 68px;
    }
    .style18
    {
        height: 68px;
    }
    .style15
    {
            height: 47px;
            direction: ltr;
        }
        .style19
        {
            height: 167px;
            width: 418px;
        }
        .style20
        {
            direction: rtl;
            height: 167px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <table style="width:100%;" bgcolor="#CCCCCC">
    <tr>
        <td class="style19">
            <br />
        </td>
        <td class="style20" align="left">
            </td>
    </tr>
    <tr>
        <td class="style17" align="right">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td class="style18">
            <asp:Label ID="Label6" runat="server" Text="نام کاربری"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style15" align="right">
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        <td class="style14" align="left">
                    <asp:Label ID="Label7" runat="server" Text="رمز ورود"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style15" align="right">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="انصراف" />
            </td>
        <td class="style14" align="left">
                    <asp:Button ID="Button1" runat="server" Text="ورود" Width="42px" />
        </td>
    </tr>
    <tr>
        <td class="style15" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style15" colspan="2">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
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

