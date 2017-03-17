<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-right" style="width: 69px; height: 22px">
                <asp:Label ID="lblName" runat="server" Text="Име"></asp:Label>
            </td>
            <td style="width: 203px; height: 22px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>            
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td class="text-right" style="width: 69px; height: 24px">
                <asp:Label ID="lblSurname" runat="server" Text="Презиме"></asp:Label>
            </td>
            <td style="height: 24px; width: 203px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 69px">
                <asp:Label ID="Label3" runat="server" Text="Од"></asp:Label>
            </td>
            <td style="width: 203px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 69px">
                <asp:Label ID="Label4" runat="server" Text="До"></asp:Label>
            </td>
            <td style="width: 203px">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 69px">
                <asp:Label ID="Label5" runat="server" Text="Датум на Тргање"></asp:Label>
            </td>
            <td style="width: 203px">
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList5" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 69px">
                <asp:Label ID="Label6" runat="server" Text="Време на тргање"></asp:Label>
            </td>
            <td style="width: 203px">
                <asp:DropDownList ID="DropDownList6" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 69px">
                <asp:Label ID="Label7" runat="server" Text="Превозно средство"></asp:Label>
            </td>
            <td style="width: 203px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 69px">Зона</td>
            <td style="width: 203px">
                <asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Пушачи" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Непушачи" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 69px">Класа</td>
            <td style="width: 203px">
                <asp:RadioButton ID="RadioButton3" runat="server" Text="Eкономска" />
                <asp:RadioButton ID="RadioButton4" runat="server" Text="Бизнис" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 69px">Послуга</td>
            <td style="width: 203px">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Пијалок" />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="Кафе" />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Оброк" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 69px">
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 203px">
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
        </tr>
    </table>
</asp:Content>
