<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RegisterApp.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 85%;
            margin-left: 130px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 279px;
        }
        .auto-style5 {
            height: 26px;
            width: 279px;
        }
    </style>
    <link href="RfStyle.css" rel="stylesheet" />
</head>
<body style="height: 371px; margin-top: 44px">
    <form id="form1" runat="server">
        <h1>Register Form</h1>
        <div>
           
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="Employee Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="empName" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="Pwd" runat="server" TextMode="Password" Width="282px"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style5">Gender</td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="GenLis" runat="server" RepeatDirection="Horizontal" Width="289px">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Date Of Joining</td>
                    <td class="auto-style3">
                        <asp:Calendar ID="Doj" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Hobbies</td>
                    <td class="auto-style3">
                        <asp:CheckBoxList ID="HobLis" runat="server">
                            <asp:ListItem>Agriculture</asp:ListItem>
                            <asp:ListItem>Football</asp:ListItem>
                            <asp:ListItem>Vlog</asp:ListItem>
                            <asp:ListItem>BikeRide</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="About"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="AbtText" runat="server" Height="63px" TextMode="MultiLine" Width="287px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="outtxt" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
           
        </div>
    </form>
</body>
</html>
