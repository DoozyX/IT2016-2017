<%@ Page Title="Logiranje" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Logiranje.aspx.cs" Inherits="Logiranje" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:TextBox ID="txtPoraka" runat="server" Rows="5" TextMode="MultiLine" AutoPostBack="True" OnTextChanged="txtPoraka_TextChanged" ReadOnly="True"></asp:TextBox>
    <br/>
    <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
    <br/>
    <asp:Button ID="btnProveri" runat="server" Text="Proveri" OnClick="btnProveri_Click" />
    <asp:Button ID="btnPrvaStrana" runat="server" Enabled="False" OnClick="btnPrvaStrana_Click" Text="Prva Strana" />

</asp:Content>
