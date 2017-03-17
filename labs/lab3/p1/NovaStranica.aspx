<%@ Page Title="Nova Straica" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="NovaStranica.aspx.cs" Inherits="NovaStranica" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table align="center" class="nav-justified">
        <tr>
            <td>
                <asp:CheckBox ID="chbVidlivo" runat="server" AutoPostBack="True" OnCheckedChanged="chbVidlivo_CheckedChanged" Text="Видливо" />
            </td>
            <td>
                <asp:Panel ID="pnlPanela" runat="server" BackColor="#99FF99" Font-Names="Times New Roman" EnableViewState="False">
                    <asp:TextBox ID="txtOperand1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtOperand2" runat="server" AutoPostBack="True" OnTextChanged="txtOperand2_TextChanged"></asp:TextBox>
                    <asp:Button ID="btnOdzemi" runat="server" OnClick="btnOdzemi_Click" Text="Odzemi" EnableViewState="False" />
                    <asp:Label ID="lblRezultat" runat="server" Font-Names="Times New Roman" Font-Size="Medium" Text="Label" EnableViewState="False"></asp:Label>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
