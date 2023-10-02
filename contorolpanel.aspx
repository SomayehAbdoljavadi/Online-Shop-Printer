<%@ Page Title="" Language="VB" MasterPageFile="~/admin-Mastermaster.master" AutoEventWireup="false" CodeFile="contorolpanel.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style16
        {
            width: 200px;
            direction: rtl;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:Image ID="Image1" runat="server" Height="108px" 
        ImageUrl="~/image/arm/10074525_1.jpg" Width="134px" />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PRConnectionString15 %>" 
                    SelectCommand="SELECT user1 FROM tb1"></asp:SqlDataSource>
            </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width:100%; height: 382px;" bgcolor="#CCCCCC">
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
                لیست&nbsp; printer</td>
            <td class="style16">
                لیست اعضا&nbsp;</td>
            <td class="style16" align="right">
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="model" DataValueField="model">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PRConnectionString14 %>" 
                    SelectCommand="SELECT [model], [name] FROM [printer]"></asp:SqlDataSource>
            </td>
            <td class="style16">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="user1" DataValueField="user1">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PRConnectionString40 %>" 
                    SelectCommand="SELECT [user1] FROM [tb1]"></asp:SqlDataSource>
            </td>
            <td class="style16" align="right">
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style16" rowspan="6">
                &nbsp;</td>
            <td class="style16" rowspan="6">
                &nbsp;</td>
            <td class="style16" rowspan="6">
                <br />
                <br />
                <br />
                <br />
                </td>
            <td class="style16" align="right">
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/tikmali.aspx">تیک مالی</asp:HyperLink>
                </td>
        </tr>
        <tr>
            <td class="style16" align="right">
                <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/del-user.aspx">حذف اعضا</asp:HyperLink>
                </td>
        </tr>
        <tr>
            <td class="style16" align="right">
                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/eidit-user.aspx">ویرایش اطلاعات اعضا</asp:HyperLink>
                </td>
        </tr>
        <tr>
            <td class="style16" align="right">
                <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/edit-serch.aspx">ویرایش جدول جستو جو</asp:HyperLink>
                </td>
        </tr>
        <tr>
            <td class="style16">
                </td>
        </tr>
        <tr>
            <td class="style16">
                <br />
                </td>
        </tr>
        </table>
</asp:Content>

