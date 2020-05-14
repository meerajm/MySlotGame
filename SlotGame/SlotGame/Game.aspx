<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="SlotGame.Game" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="MainJavaScriptPage.js"></script>
    <script type="text/javascript">

        function DisableBackButton() {
            window.history.forward()
        }

        DisableBackButton();

        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
                      
    </script>
    
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style7 {
            width: 252px;
        }
        .auto-style8 {
            height: 23px;
            width: 252px;
        }
        .auto-style9 {
            width: 140%;
            height: 359px;
        }
        .auto-style10 {
            height: 30px;
            width: 281px;
        }
        .auto-style19 {
            width: 86px;
        }
        .auto-style20 {
            width: 51px;
            margin-left: 40px;
        }
        .auto-style21 {
            width: 65%;
        }
        .auto-style22 {
            border: 1px solid black;
            background-color: antiquewhite;
            width: 58px;
        }
        .auto-style23 {
            border: 1px solid black;
            background-color: antiquewhite;
            width: 16px;
        }
        .auto-style24 {
            border: 1px solid black;
            background-color: antiquewhite;
            width: 89px;
        }
        .auto-style25 {
            width: 45px;
        }
        .auto-style26 {
            height: 23px;
            width: 45px;
        }
        .auto-style27 {
            height: 30px;
            width: 45px;
        }
        .auto-style28 {
            height: 23px;
            width: 177px;
        }
        .auto-style29 {
            width: 177px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblTitle" runat="server" CssClass="label3" Text="My Slot Game"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style26"></td>
                <td class="auto-style3"></td>
                <td class="auto-style8" colspan="2">
                    <asp:Label ID="lblMsg" runat="server" CssClass="label1" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style8" colspan="2">
                    <table class="auto-style9">
                        <tr>
                            <td class="auto-style23">
                    <asp:Image ID="imgR1R1" runat="server" Height="100px" Width="100px" ImageUrl="~/SlotGamePics/Question.png" />
                            </td>
                            <td class="auto-style24">
                    <asp:Image ID="imgR2R1" runat="server" Height="100px" Width="100px" ImageUrl="~/SlotGamePics/Question.png"/>
                            </td>
                            <td class="auto-style22">
                    <asp:Image ID="imgR3R1" runat="server" Height="100px" Width="100px" ImageUrl="~/SlotGamePics/Question.png"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">
                    <asp:Image ID="imgR1R2" runat="server" Height="100px" Width="100px" ImageUrl="~/SlotGamePics/Question.png"/>
                            </td>
                            <td class="auto-style24">
                    <asp:Image ID="imgR2R2" runat="server" Height="100px" Width="100px" ImageUrl="~/SlotGamePics/Question.png"/>
                            </td>
                            <td class="auto-style22">
                    <asp:Image ID="imgR3R2" runat="server" Height="100px" Width="100px" ImageUrl="~/SlotGamePics/Question.png"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">
                    <asp:Image ID="imgR1R3" runat="server" Height="100px" Width="100px" ImageUrl="~/SlotGamePics/Question.png"/>
                            </td>
                            <td class="auto-style24">
                    <asp:Image ID="imgR2R3" runat="server" Height="100px" Width="100px" ImageUrl="~/SlotGamePics/Question.png"/>
                            </td>
                            <td class="auto-style22">
                    <asp:Image ID="imgR3R3" runat="server" Height="100px" Width="100px" ImageUrl="~/SlotGamePics/Question.png"/>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style28">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style3">
                    <asp:Image ID="imgYouWin" runat="server" Height="127px" ImageUrl="~/SlotGamePics/YouWin2.jpg" Visible="False" Width="189px" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblWin" runat="server" Text="Label" Visible="False" CssClass="label1"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style26"></td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style8" colspan="2">
                    <asp:Label ID="lblPositions" runat="server" Text="Stop Positons" Visible="False"></asp:Label>
                </td>
                <td class="auto-style28">
                    &nbsp;</td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style7" colspan="2">
                    <asp:HiddenField ID="hdnImgArr" runat="server" />
                </td>
                <td class="auto-style29">
                    <asp:Button ID="btnSpin" runat="server" OnClick="Button1_Click" Text="Spin" CssClass="button" Height="60px" Width="158px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7" colspan="2">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label runat="server" Text="Balance: " CssClass="label2"></asp:Label>
                    </td>
                <td class="auto-style2">
                    <asp:Label ID="lblBalance" runat="server" Text="Label" CssClass="label2"></asp:Label>
                </td>
                <td class="auto-style10">
                    <table class="auto-style21">
                        <tr>
                            <td class="auto-style19">
                    <asp:Button ID="btnSub" runat="server" Text="-" OnClick="Button2_Click" CssClass="button" Width="39px" style="float: right;"/>
                            </td>
                            <td class="auto-style20">
                    <asp:TextBox ID="txtBet" runat="server" CssClass="textbox" Width="47px" Height="39px"></asp:TextBox>
                            </td>
                            <td>
                    <asp:Button ID="btnAdd" runat="server" Text="+" OnClick="Button3_Click" CssClass="button" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style2" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style7" colspan="2">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <div>
        </div>
    </form>
</body>
</html>
