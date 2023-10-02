<%@ Page Language="VB" AutoEventWireup="false" CodeFile="sabtenam.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
        .style2
        {
            width: 30%;
            height: 26px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:78%; height: 58px;" align="center">
            <tr>
                <td align="center" class="style3" colspan="3">
                    <br />
                    فرم ثبت نام کاربر جدید<br />
                <hr ></td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    &nbsp;</td>
                <td align="right" class="style4">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-right: 0px"></asp:TextBox>
                </td>
                <td align="center">
                    نام </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    &nbsp;</td>
                <td align="right" class="style4">
                    <asp:TextBox ID="TextBox11" runat="server" style="margin-right: 0px"></asp:TextBox>
                </td>
                <td align="center">
                    نام خانوادگی</td>
            </tr>
            <tr>
                <td style="margin-left: 40px;" align="right" class="style3">
                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="حداکثر 5 رقم" MaximumValue="99999" 
                        MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
                <td style="margin-left: 40px;" align="right" class="style4">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td align="center">
                    شماره شناسنامه</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:RangeValidator ID="RangeValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="موبایل" 
                        MaximumValue="09999999999" MinimumValue="09"></asp:RangeValidator>
                </td>
                <td align="right" class="style4">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td style="width:30%" align="center">
                    تلفن</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    &nbsp;</td>
                <td align="right" class="style4">
                    <asp:DropDownList ID="DropDownList8" runat="server" 
                        DataSourceID="SqlDataSource6" DataTextField="st" DataValueField="st">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:PRConnectionString57 %>" 
                        SelectCommand="SELECT * FROM [s]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:PRConnectionString55 %>" 
                        SelectCommand="SELECT * FROM [s]"></asp:SqlDataSource>
                </td>
                <td style="width:30%" align="center">
                    وضعیت تاهل</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="ایمیل نادرست وارد شده" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td align="right" class="style4">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td style="width:30%" align="center">
                    ایمیل</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    &nbsp;</td>
                <td align="right" class="style4">
                    <asp:DropDownList ID="DropDownList5" runat="server">
                       <asp:ListItem></asp:ListItem>
                        <asp:ListItem>1360</asp:ListItem>
                        <asp:ListItem>1361</asp:ListItem>
                    <asp:ListItem>1362</asp:ListItem>
                        <asp:ListItem>1363</asp:ListItem>
                    <asp:ListItem>1364</asp:ListItem>
                        <asp:ListItem>1365</asp:ListItem>
                    <asp:ListItem>1366</asp:ListItem>
                        <asp:ListItem>1367</asp:ListItem>
                    <asp:ListItem>1368</asp:ListItem>
                        <asp:ListItem>1369</asp:ListItem>
                    <asp:ListItem>1370</asp:ListItem>
                        <asp:ListItem>1371</asp:ListItem>
                    <asp:ListItem>1372</asp:ListItem>
                        <asp:ListItem>1373</asp:ListItem>
                    <asp:ListItem>1374</asp:ListItem>
                        <asp:ListItem>1375</asp:ListItem>
                    <asp:ListItem>1376</asp:ListItem>
                        <asp:ListItem>1377</asp:ListItem>
                    <asp:ListItem>1378</asp:ListItem>
                        <asp:ListItem>1379</asp:ListItem>
                        <asp:ListItem>1380</asp:ListItem>
                        <asp:ListItem>1381</asp:ListItem>
                    <asp:ListItem>1382</asp:ListItem>
                        <asp:ListItem>1383</asp:ListItem>
                    <asp:ListItem>1384</asp:ListItem>
                        <asp:ListItem>1385</asp:ListItem>
                    
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList6" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                                            </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList7" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem Value="20"></asp:ListItem>
                        <asp:ListItem Value="21"></asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width:30%" align="center">
                    تاریخ تولد</td>
            </tr>
            <tr>
                <td align="right" class="style3" rowspan="2">
                    <asp:Image ID="Image1" runat="server" />
                </td>
                <td align="right" class="style4">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource5" DataTextField="st" DataValueField="st">
                        <asp:ListItem>mashhad</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:PRConnectionString56 %>" 
                        SelectCommand="SELECT [st] FROM [s]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:PRConnectionString %>" 
                        SelectCommand="SELECT [name] FROM [ostan1]"></asp:SqlDataSource>
                </td>
                <td style="width:30%" align="center">
                    استان</td>
            </tr>
            <tr>
                <td align="right" class="style4">
                    <asp:DropDownList ID="DropDownList4" runat="server" 
                        DataSourceID="SqlDataSource3" DataTextField="shahr" DataValueField="shahr">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:PRConnectionString6 %>" 
                        SelectCommand="SELECT [shahr] FROM [shahr] WHERE ([ostan] = @ostan)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList3" Name="ostan" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td style="width:30%" align="center">
                    شهر</td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    <asp:Button ID="Button4" runat="server" Text="Button" />
                    </td>
                <td align="right" class="style1">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td align="center" class="style2">
                    آپلود عکس</td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    &nbsp;</td>
                <td align="right" class="style1">
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
                <td align="center" class="style2">
                    <asp:Label ID="Label2" runat="server" Text="شماره فیش"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    &nbsp;</td>
                <td align="right" class="style4">
                    <asp:TextBox ID="TextBox7" runat="server" MaxLength="50" Height="22px"></asp:TextBox>
                </td>
                <td style="width:30%" align="center">
                    نام کاربری</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox9" ControlToValidate="TextBox8" 
                        ErrorMessage="پسورد یکی نیست"></asp:CompareValidator>
                </td>
                <td align="right" class="style4">
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width:30%" align="center">
                    پسورد</td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    &nbsp;</td>
                <td align="right" class="style4">
                    <asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width:40%" align="center">
                    تکرار پسورد</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="ارسال" />
                    <asp:Button ID="Button2" runat="server" Text="انصراف" Width="41px" />
                    <asp:Button ID="Button3" runat="server" Text="Button" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        <asp:TextBox ID="TextBox12" runat="server" Width="848px"></asp:TextBox>
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PRConnectionString48 %>" 
        SelectCommand="SELECT * FROM [tb1]">
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox11" Name="family" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" Name="id" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox3" Name="tel" PropertyName="Text" />
            <asp:ControlParameter ControlID="RadioButtonList1" Name="state" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="Calendar1" Name="birth" 
                PropertyName="SelectedDate" />
            <asp:ControlParameter ControlID="DropDownList3" Name="ostan" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DropDownList4" Name="city" 
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="TextBox7" Name="user1" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox8" Name="password" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox4" Name="email" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox13" Name="fish" PropertyName="Text" />
            <asp:Parameter DefaultValue="0" Name="check1" />
            <asp:Parameter DefaultValue="" Name="pic" />
        </InsertParameters>
    </asp:SqlDataSource>
    </form>
    




































































</body>
</html>
