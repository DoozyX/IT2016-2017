<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GlavnaStranica.aspx.cs" Inherits="p1.GlavnaStranica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div>
        Најавен корисник:
        <asp:Label ID="lblUser" runat="server"></asp:Label>
        <br/>
        Вкупно најавени корисници:
        <asp:Label ID="lblNumUsers" runat="server"></asp:Label>

    &nbsp;:
        <asp:Label ID="lblUsers" runat="server"></asp:Label>
        <br />
        <asp:Panel ID="pnlPanel1" runat="server" Width="396px">
            <asp:DropDownList ID="ddlBackground" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlBackground_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlFont" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlFont_SelectedIndexChanged" Height="16px">
            </asp:DropDownList>
            <br />
            <asp:Label ID="lblLastLogIn" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnSave" runat="server" Text="Зачувај" OnClick="btnSave_Click" />
            <asp:Button ID="btnLogOut" runat="server" Text="Одјава" OnClick="btnLogOut_Click" />
        </asp:Panel>

    </div>
</form>
</body>
</html>