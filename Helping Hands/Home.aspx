<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Helping_Hands.Home" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 58px;
        }
        .auto-style3 {
            width: 300px;
        }
        .auto-style4 {
            width: 299px;
        }
        .auto-style5 {
            width: 302px;
        }
        .auto-style6 {
            font-weight: bold;
        }
        .auto-style7 {
            font-family: "Arial Rounded MT Bold";
            font-size: xx-large;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            color: #FFFFFF;
        }
        .auto-style12 {
            text-align: center;
            width: 2px;
            height: 13px;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            width: 449px;
            text-align: center;
        }
        .auto-style10 {
            color: #FFFFFF;
            margin-left: 0px;
        }
        .auto-style16 {
            font-family: "Arial Rounded MT Bold";
            font-size: xx-large;
            visibility: visible;
            height: 1528px;
            text-align: left;
        }
        .auto-style17 {
            font-size: medium;
        }
        .auto-style18 {
            font-size: large;
        }
        .auto-style19 {
            color: #FFFFFF;
            font-size: large;
            text-decoration: underline;
        }
        .auto-style21 {
            width: 589px;
        }
        .auto-style22 {
            text-align: left;
        }
        .auto-style23 {
            width: 100%;
            height: 297px;
        }
        .auto-style24 {
            width: 385px;
        }
        .auto-style25 {
            width: 384px;
        }
        .auto-style26 {
            text-align: center;
            width: 587px;
        }
        .auto-style27 {
            width: 394px;
        }
        .auto-style28 {
            text-align: center;
            width: 581px;
        }
        .auto-style29 {
            font-size: large;
            color: rgb(204, 51, 0);
        }
        .auto-style30 {
            color: rgb(204, 51, 0);
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('image/background.jpg')" class="auto-style8">
            <div class="auto-style8">
                <br />
                <span class="auto-style7">
                <asp:Image ID="Image2" runat="server" Height="55px" ImageUrl="~/image/homeLOGO.jpg" Width="54px" />
                <span class="auto-style9"><strong>HELPING HANDS</strong></span></span><br />
            <br />
            </div>
            <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="61px">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4"><strong>
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Height="53px" Text="Home" Width="298px" />
                            </strong></td>
                        <td class="auto-style3"><strong>
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Height="55px" Text="Register" Width="299px" OnClick="Button2_Click" />
                            </strong></td>
                        <td class="auto-style5"><strong>
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Height="52px" OnClick="Button3_Click" Text="Login" Width="300px" />
                            </strong></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="207px" TextMode="Search"></asp:TextBox>
                            <strong>
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style6" Text="Search" Width="137px" OnClick="Button4_Click" />
                            </strong></td>
                    </tr>
                </table>
            </asp:Panel>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" Height="33px" OnClick="Button5_Click" Text="Admin" Visible="False" Width="150px" />
            <asp:Button ID="Button6" runat="server" Height="33px" Text="User" Visible="False" Width="150px" OnClick="Button6_Click" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <div class="auto-style12">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            </strong>
            <br />
            <table class="auto-style13">
                <tr>
                    <td class="auto-style14"><strong>
                <asp:GridView ID="GridView1" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Font-Underline="False" GridLines="None" Height="380px" Width="451px" Caption="Compatible Blood Type Donors" CaptionAlign="Top" BorderStyle="None">
                    <HeaderStyle BackColor="White" BorderStyle="Inset" ForeColor="Black" Wrap="True" />
                </asp:GridView>
            </strong></td>
                    <td class="auto-style8"><strong>
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" Caption="Blood Banks" CaptionAlign="Top" ForeColor="White" Height="380px" PageSize="5" EmptyDataText="No Records Found" OnPageIndexChanging="GridView2_PageIndexChanging" ShowHeaderWhenEmpty="True">
                            <Columns>
                                <asp:TemplateField HeaderText="NAME">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ADDRESS">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="NUMBER">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phno") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Phno") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CONTACT ID">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CATEGORY">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataRowStyle HorizontalAlign="Center" />
                            <HeaderStyle BackColor="White" BorderStyle="Inset" ForeColor="Black" />
                        </asp:GridView>
            </strong></td>
                </tr>
            </table>
            <div class="auto-style8">
            <br />
            <br class="auto-style18" />
                <span class="auto-style19"><strong>After Donating blood, the body works to replenish the blood loss.This stimulates the production of new blood cells<br />
                and it turns,helps in maintaining good health.</strong></span><strong><br />
            </strong>
            <br />
                <br />
            </div>
            <div class="auto-style16" style="border: thick inset #FFFFFF; background-color: #FFFFFF;">
                <header class="typeHeading" style="box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; display: block; font-family: &quot;Trade Gothic Pro Bold&quot;, &quot;Trade Gothic Pro Light&quot;, Impact, Arial, sans-serif; color: rgb(234, 47, 44); text-transform: uppercase; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    <h1 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: inherit; font-size: 2.5rem; position: relative; background: 0px 0px;">TYPES OF DONATION</h1>
                </header>
                <div class="auto-style17" style="border-style: none; border-color: inherit; border-width: medium; box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; text-align: center;">
                        The average human body contains about five liters of blood, which is made of several cellular and non-cellular components such as<span>&nbsp;</span><span class="auto-style30"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: bolder;">Red blood cell</strong></span>,<span>&nbsp;</span><span class="auto-style30"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: bolder;">Platelet</strong></span>, and<span>&nbsp;</span><span class="auto-style30"><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: bolder;">Plasma</strong></span>.</p>
                    <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; text-align: center;">
                        Each type of component has its unique properties and can be used for different indications. The donated blood is separated into these components by the blood centre and one donated unit can save upto four lives depending on the number of components separated from your blood.</p>
                    <div class="auto-style22">
                        <br />
                        <span class="auto-style29"><strong>Packed Red Blood Cells</strong></span><br />
                    </div>
                    <table class="auto-style23">
                        <tr>
                            <td class="auto-style25">
                                <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">What is it?</h3>
                                <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                    Blood Collected straight from the donor into a blood bag and mixed with an anticoagulant is called as whole blood. This collected whole blood is then centrifuged and red cell, platelets and plasma are separated. The separated Red cells are mixed with a preservative to be called as packed red blood cells.</p>
                                <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Who can donate?</h3>
                                <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                    You need to be 18-65 years old, weight 45kg or more and be fit and healthy.</p>
                            </td>
                            <td class="auto-style21">
                                <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">User For?</h3>
                                <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                    Correction of severe anemia in a number of conditions and blood loss in case of child birth, surgery or trauma settings.</p>
                                <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Lasts For?</h3>
                                <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                    Red cells can be stored for 42 days at 2-6 degree celsius.</p>
                            </td>
                            <td>
                                <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">How long does it take to donate?</h3>
                                <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                    15-30 minutes to donate.including the pre-donation check-up.</p>
                                <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">How often can I donate?</h3>
                                <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                    Male donors can donate again after 90 days and female donors can donate again after 120 days.</p>
                            </td>
                        </tr>
                    </table>
                    <div>
                        <span class="auto-style18"><strong>
                        <br class="auto-style30" />
                        </strong></span><span class="auto-style30"><span class="auto-style18"><strong>Plasma</strong></span></span><br />
                        <table class="auto-style13">
                            <tr>
                                <td class="auto-style24">
                                    <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">What is it?</h3>
                                    <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                        The straw-coloured liquid in which red blood cells, white blood cells, and platelets float in is called plasma.Contains special nutrients which can be used to create 18 different type of medical products to treat many different medical conditions. Plasma can be obtained from the collected whole blood after red blood cells and platelets have been separated. Additionally, it can also be collected using an apheresis equipment where other components are returned to the donor. The former is a common method of plasma preparation in our country.</p>
                                    <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Who can donate?</h3>
                                    <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                        The donation criteria is similar to that of red blood cell. However, for apheresis plasma collection minimum weight is 50 kgs.</p>
                                </td>
                                <td class="auto-style26">
                                    <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">User For?</h3>
                                    <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                        Used for bleeding patients with coagulation factor deficiency such as hemophilia A and B, von willibrand disease etc. also used in cases of blood loss due to trauma.</p>
                                    <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Lasts For?</h3>
                                    <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                        Plasma after separation if frozen below -30 degrees can be stored up to one year.</p>
                                </td>
                                <td class="auto-style8">
                                    <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">How long does it take?</h3>
                                    <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                        15-30 minutes to donate including the pre-donation check-up.</p>
                                    <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">How often can I donate?</h3>
                                    <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                        similar to the red cell donation.</p>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <span class="auto-style29"><strong>Platelet</strong></span><br />
                        <div class="auto-style8" style="background-color: #FFFFFF">
                            <table class="auto-style13">
                                <tr>
                                    <td class="auto-style27">
                                        <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">What is it?</h3>
                                        <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                            These are cellular elements in blood which wedge together to help to clot and reduce bleeding. Always in high demand, Vital for people with low platelet count, like hematology and cancer patients.</p>
                                        <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Who can donate?</h3>
                                        <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                            One can donate whole blood from which the blood centre will separate platelets from other components. Criteria similar to whole blood donation apply. Alternatively, one can donate using apheresis equipment where only platelets are collected and rest components are returned back to donate. One need to satisfy whole blood criteria and pre- donation screening which include negative infectious markers and platelet count &gt;1,50,000 per microlitre of blood. Weight should be &gt;50kgs.</p>
                                    </td>
                                    <td class="auto-style28">
                                        <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">User For?</h3>
                                        <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                            Conditions with very low platelet count such as Cancer, blood diseases, trauma, dengue etc.</p>
                                        <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Lasts For?</h3>
                                        <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                            can be stored for 5 days at 20-24 degree celsius.</p>
                                    </td>
                                    <td class="auto-style8">
                                        <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">How does it work?</h3>
                                        <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                            We collect your blood, keep platelet and return rest to you by apheresis donation.</p>
                                        <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">How long does it take?</h3>
                                        <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                            45-60 minutes to donate. 2-3 hours for pre-donation screening.</p>
                                        <h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; border: none; outline: 0px; font-family: oswald, Montserrat, sans-serif; font-weight: 500; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.75rem; position: relative; background: 0px 0px rgb(243, 244, 244); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">How often can I donate?</h3>
                                        <p style="box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: none; outline: 0px; line-height: 2em; position: relative; clear: both; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 15.12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(243, 244, 244); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                                            Every 2 weeks but should not exceed more than 24 times in a year.</p>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/image/donationFact.jpg" />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                            <span class="auto-style18" style="color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">There is nothing better than saving a life &nbsp;</span><a class="auto-style18" href="https://www.eraktkosh.in/BLDAHIMS/bloodbank/transactions/bbpublicindex.html#" style="border-style: none; border-color: inherit; border-width: medium; box-sizing: border-box; margin: 0px; padding: 0px; outline: 0px; background: rgb(255, 255, 255); color: rgb(255, 0, 0); text-decoration: none; cursor: pointer; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: none; outline: 0px;">Every 
                            blood donor is a hero</span></a>.<br />
                            <br />
                        </div>
                    </div>
                </div>
            </div>
            <br />
        </div>
    </form>
</body>
</html>
