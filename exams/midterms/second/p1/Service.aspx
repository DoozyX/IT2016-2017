<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="Service" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
        <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" Text="OK" />
        <br />
        <asp:Label ID="lblAuthor" runat="server"></asp:Label>
    </form>
</body>
</html>
