<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Najava.aspx.cs" Inherits="p1.Najava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 24%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 127px;
        }
        .auto-style4 {
            height: 23px;
            width: 127px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Корисничко Име</td>
                <td>
                    <asp:TextBox ID="txtKorisnik" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Лозинка</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="btnPodnesi" runat="server" OnClick="btnPodnesi_Click" Text="Поднеи" />
                </td>
            </tr>
            <tr>
                <td colspan="2">број на обиди:</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblObidi" runat="server" Font-Bold="True" ForeColor="Red" Text="0"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
