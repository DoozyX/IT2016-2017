<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Plakanje.aspx.cs" Inherits="Plakanje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="pnlBuy" runat="server">
            <asp:ListBox ID="lbBuyItems" runat="server"></asp:ListBox>
            <br />
            Цената изнесува:
            <asp:Label ID="lblPrice" runat="server"></asp:Label>
            &nbsp;долари<br />
            <asp:Button ID="btnBuy" runat="server" OnClick="btnBuy_Click" Text="Плати" />
        </asp:Panel>
        <asp:Label ID="lblDone" runat="server" Text="Успешно плаќање" Visible="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
