<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pregled.aspx.cs" Inherits="Pregled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblError" runat="server"></asp:Label>
    
        <asp:GridView ID="gvTitles" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvTitles_PageIndexChanging" OnSelectedIndexChanged="gvTitles_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="title" HeaderText="Наслов" />
                <asp:BoundField DataField="price" HeaderText="Цена" />
                <asp:CommandField InsertText="" NewText="" SelectText="Избери" ShowSelectButton="True" UpdateText="" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <asp:Panel ID="pnlItems" runat="server" Visible="False">
            <asp:ListBox ID="lbItems" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lbItems_SelectedIndexChanged"></asp:ListBox>
            <br />
            <asp:Button ID="btnDelete" runat="server" CssClass="auto-style1" Text="Избриши" Enabled="False" OnClick="btnDelete_Click" />
            <asp:Button ID="btnContinue" runat="server" Text="Продолжи" OnClick="btnContinue_Click" />
        </asp:Panel>
        <br />
    
    </div>
    </form>
</body>
</html>
