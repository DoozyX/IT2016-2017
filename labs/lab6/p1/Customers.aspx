<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="p1.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            height: 25px;
            width: 175px;
        }
        .auto-style6 {
            width: 175px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:ListBox ID="lbCustomers" runat="server" Height="109px" Width="271px" OnSelectedIndexChanged="lbCustomers_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="brnEdit" runat="server" Text="Промени" OnClick="brnEdit_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Исчисти" OnClick="btnClear_Click" />
                    <asp:Button ID="btnInsert" runat="server" Text="Внеси" OnClick="btnInsert_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">ID</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbID" runat="server" Width="170px"></asp:TextBox>
                    <br/>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Име на компанија</td>
                <td>
                    <asp:TextBox ID="tbCompanyName" runat="server" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style">Име на контакт</td>
                <td>
                    <asp:TextBox ID="tbContactName" runat="server" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Адреса</td>
                <td>
                    <asp:TextBox ID="tbAdress" runat="server" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Град</td>
                <td>
                    <asp:TextBox ID="tbCity" runat="server" Width="170px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Телефон</td>
                <td>
                    <asp:TextBox ID="tbPhone" runat="server" Width="170px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
