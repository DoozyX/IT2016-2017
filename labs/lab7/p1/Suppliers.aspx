<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Suppliers.aspx.cs" Inherits="p1.Suppliers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <asp:GridView ID="gvSuppliers" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowCancelingEdit="gvSuppliers_RowCancelingEdit" OnRowEditing="gvSuppliers_RowEditing" OnRowUpdating="gvSuppliers_RowUpdating" OnSelectedIndexChanged="gvSuppliers_SelectedIndexChanged" AllowPaging="True" OnPageIndexChanging="gvSuppliers_PageIndexChanging" PageSize="12" DataKeyNames="SupplierID">
            <AlternatingRowStyle BackColor="Gainsboro"/>
            <Columns>
                <asp:ButtonField CommandName="select" DataTextField="SupplierID" HeaderText="ID"/>
                <asp:BoundField DataField="CompanyName" HeaderText="Компанија" ReadOnly="True"/>
                <asp:BoundField DataField="ContactName" HeaderText="Контакт"/>
                <asp:BoundField DataField="Phone" HeaderText="Телефон"/>
                <asp:BoundField DataField="City" HeaderText="Град"/>
                <asp:CommandField CancelText="Откажи" EditText="Уреди" ShowEditButton="True" UpdateText="Промени"/>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black"/>
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"/>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center"/>
            <RowStyle BackColor="#EEEEEE" ForeColor="Black"/>
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"/>
            <SortedAscendingCellStyle BackColor="#F1F1F1"/>
            <SortedAscendingHeaderStyle BackColor="#0000A9"/>
            <SortedDescendingCellStyle BackColor="#CAC9C9"/>
            <SortedDescendingHeaderStyle BackColor="#000065"/>
        </asp:GridView>
        <asp:Label ID="lblError" runat="server"></asp:Label> <br/>
        <asp:GridView ID="gvProducts" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC"/>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black"/>
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"/>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center"/>
            <RowStyle BackColor="#EEEEEE" ForeColor="Black"/>
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"/>
            <SortedAscendingCellStyle BackColor="#F1F1F1"/>
            <SortedAscendingHeaderStyle BackColor="#0000A9"/>
            <SortedDescendingCellStyle BackColor="#CAC9C9"/>
            <SortedDescendingHeaderStyle BackColor="#000065"/>
        </asp:GridView>
    </div>
</form>
</body>
</html>