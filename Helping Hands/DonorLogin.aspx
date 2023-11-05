<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonorLogin.aspx.cs" Inherits="Helping_Hands.DonorLogin" %>

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
            width: 637px;
            font-size: large;
        }
        .auto-style13 {
            width: 637px;
            text-align: right;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style14 {
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
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton>
                &nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Register</asp:LinkButton>
                <br />
                <span class="auto-style10"><strong>Donor Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><span class="auto-style14"><strong>&nbsp;</strong></span><strong><asp:Label ID="Label1" runat="server" CssClass="auto-style14" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </asp:Panel>
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style11">
                <tr>
                    <td class="auto-style13"><strong>Donor ID</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style14"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>Password</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style14" TextMode="Password"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>
                        <br />
                        <br />
                        </strong></td>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px" OnClick="Button1_Click" Text="Login" Width="129px" />
                        </strong></td>
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
        </div>
    </form>
</body>
</html>
