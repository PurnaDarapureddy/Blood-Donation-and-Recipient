<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Helping_Hands.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style7 {
            font-family: "Arial Rounded MT Bold";
            font-size: xx-large;
        }
        .auto-style9 {
            color: #FFFFFF;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            width: 630px;
            text-align: right;
        }
        .auto-style12 {
            width: 487px;
            color: #FFFFFF;
            text-align: right;
        }
        .auto-style13 {
            width: 630px;
            height: 26px;
            color: #FFFFFF;
            text-align: right;
        }
        .auto-style14 {
            height: 26px;
        }
        .auto-style15 {
            font-size: large;
        }
        .auto-style16 {
            width: 630px;
            color: #FFFFFF;
            font-size: large;
            text-align: right;
        }
        .auto-style17 {
            width: 630px;
            height: 26px;
            color: #FFFFFF;
            font-size: large;
            text-align: right;
        }
        .auto-style18 {
            width: 630px;
            color: #FFFFFF;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('image/background.jpg')">
            <span class="auto-style7">
            <asp:Image ID="Image2" runat="server" Height="55px" ImageUrl="~/image/homeLOGO.jpg" Width="54px" />
            <span class="auto-style9"><strong>HELPING HANDS</strong></span></span><br />
            <br />
            <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="61px">
                <strong>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click1">Home</asp:LinkButton>
                </strong>&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click">Login</asp:LinkButton>
                <br />
                <strong><span class="auto-style1">Donor Register&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
            </asp:Panel>
            <br />
            <br />
            <table class="auto-style10">
                <tr>
                    <td class="auto-style16"><strong>Donor Full Name</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style15"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Name Mandatory " Font-Names="Bell MT" Font-Size="Small" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"><strong>Donor ID</strong></td>
                    <td class="auto-style14"><strong>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style15"></asp:TextBox>
                        </strong>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="*Donor name and ID Should not be same" Font-Names="Bell MT" Font-Size="Small" ForeColor="White" Operator="NotEqual"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Donor ID mandatory" Font-Names="Bell MT" Font-Size="Small" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>Password</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style15"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Password Mandatory" Font-Names="Bell MT" Font-Size="Small" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>Confirm Password</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style15" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="*Password and Confirm password Shoul be same" Font-Names="Bell MT" Font-Size="Small" ForeColor="White"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>Gender</strong></td>
                    <td><strong>
                        <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style12" GroupName="g" Text="Male" />
                        <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style12" GroupName="g" Text="FeMale" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>Language</strong></td>
                    <td><strong>
                        <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style12" Text="Telugu" />
                        <asp:CheckBox ID="CheckBox2" runat="server" CssClass="auto-style12" Text="English" />
                        <asp:CheckBox ID="CheckBox3" runat="server" CssClass="auto-style12" Text="Hindi" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>State</strong></td>
                    <td><strong>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style15" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*State Mandatory" Font-Names="Bell MT" Font-Size="Small" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>City</strong></td>
                    <td><strong>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style15">
                        </asp:DropDownList>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*City mandatory" Font-Names="Bell MT" Font-Size="Small" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>Blood Group</strong></td>
                    <td><strong>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style15">
                        </asp:DropDownList>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Require*Blood Group Mandatory" Font-Names="Bell MT" Font-Size="Small" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>Mobile Number</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style15"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="*enter valid Phone Number" Font-Names="Bell MT" Font-Size="Small" ForeColor="White" ValidationExpression="[6-9]{1}[0-9]{9}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>Email ID</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style15"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2"><strong><span class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="*enter valid email id" Font-Names="Bell MT" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="29px" OnClick="Button1_Click" Text="Register" Width="130px" />
&nbsp; </strong>&nbsp;<strong><asp:Button ID="Button2" runat="server" CausesValidation="False" CssClass="auto-style15" Height="29px" OnClick="Button2_Click" Text="Clear" Width="84px" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">&nbsp;</td>
                </tr>
            </table>
            <strong>
            <br class="auto-style15" />
            </strong>
        </div>
    </form>
</body>
</html>
