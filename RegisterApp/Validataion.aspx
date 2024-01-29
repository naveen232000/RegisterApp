<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validataion.aspx.cs" Inherits="RegisterApp.Validataion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="RfStyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 333px;
        }
        .auto-style3 {
            height: 123px;
        }
        .auto-style4 {
            width: 262px;
        }
        .auto-style5 {
            width: 333px;
            height: 26px;
        }
        .auto-style6 {
            width: 262px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 333px;
            height: 33px;
        }
        .auto-style9 {
            width: 262px;
            height: 33px;
        }
        .auto-style10 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="3" class="auto-style3"><h1>Validation Form</h1></td>
            </tr>
            <tr>
                <td class="auto-style2">User Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="* User Name Is Required " ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="PassWd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassWd" ErrorMessage="* Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Confirm Password</td>
                <td class="auto-style6">
                    <asp:TextBox ID="ConPwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConPwd" ErrorMessage="* Re-Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassWd" ControlToValidate="ConPwd" ErrorMessage="* Password &amp; Confirm Password Mismatch" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Age</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TexAge" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TexAge" ErrorMessage="Age Should be between 18-65 years" ForeColor="#FF3300" MaximumValue="65" MinimumValue="18"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Email</td>
                <td class="auto-style6">
                    <asp:TextBox ID="EmailTxt" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmailTxt" ErrorMessage="* Email Id is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTxt" ErrorMessage="Email Id is not Valid" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Pin Code</td>
                <td class="auto-style6">
                    <asp:TextBox ID="Texpin" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Texpin" ErrorMessage="* Pin code Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Texpin" ErrorMessage="Invalid Pin Code" ForeColor="#FF3300" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Lucky Number</td>
                <td class="auto-style6">
                    <asp:TextBox ID="LuckyNum" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="LuckyNum" ErrorMessage="*RequiredEnter Odd Number" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="LuckyNum" ErrorMessage="Enter Only Odd Number" ForeColor="#FF3300" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="userMsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
                <td class="auto-style10"></td>
            </tr>
        </table>
        <div>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
