<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Geometrija.aspx.cs" Inherits="p2.Geometrija" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>Visina</td>
                <td>
                    <asp:TextBox ID="tbVisina" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td >Radius</td>
                <td>
                    <asp:TextBox ID="tbRadius" runat="server"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td colspan="2">
                    <asp:Button ID="btnPlostina" runat="server" Text="Plostina" Width="48%" OnClick="btnPlostina_Click"/>
                    <asp:Button ID="btnVolumen" runat="server" Text="Volumen" Width="48%" OnClick="btnVolumen_Click"/>
                </td>
            </tr>


            <tr>
                <td >Plostina</td>
                <td >
                    <asp:Label ID="lblPlostina" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td >Volumen</td>
                <td>
                    <asp:Label ID="lblVolumen" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnInstanci" runat="server" Text="Instanci" Width="100%" OnClick="btnInstanci_Click"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblRezultat" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>