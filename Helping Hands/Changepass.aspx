<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Changepass.aspx.cs" Inherits="Helping_Hands.Changepass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style7 {
            font-family: "Arial Rounded MT Bold";
            font-size: xx-large;
        }
        .auto-style9 {
            color: #FFFFFF;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {
            width: 622px;
        }
        .auto-style14 {
            height: 26px;
            width: 622px;
            text-align: right;
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style15 {
            width: 622px;
            text-align: right;
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style16 {
            width: 622px;
            font-size: x-large;
        }
        .auto-style17 {
            font-size: large;
        }
        .auto-style18 {
            width: 622px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('image/background.jpg')">
            <span class="auto-style7">
            <asp:Image ID="Image2" runat="server" Height="55px" ImageUrl="~/image/homeLOGO.jpg" Width="54px" />
            <span class="auto-style9"><strong>HELPING HANDS<br />
            </strong></span></span>
            <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="62px">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">&lt;&lt;back</asp:LinkButton>
                <br />
                <strong><span class="auto-style10">Password Change&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </strong>
            </asp:Panel>
            <br />
            <br />
            <table class="auto-style11">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong>Enter Old Password</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style17"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Old Password must enter" Font-Names="Bell MT" Font-Size="Small" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong>Enter New Password</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style17"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="*Old Password and New Password must not be same" Font-Names="Bell MT" Font-Size="Small" ForeColor="White" Operator="NotEqual"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*New password must enter" Font-Names="Bell MT" Font-Size="Small" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14"><strong>Confirm New Password</strong></td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style17"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style17">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="*New Password and Confirm Password must be same" Font-Names="Bell MT" Font-Size="Small" ForeColor="White"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="Submit" Width="112px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
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
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
