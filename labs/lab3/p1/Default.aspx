<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="lblTime" runat="server" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Navy" Text="Моментално Време"></asp:Label>
    <br />
    <asp:Label ID="lblTimeNow" runat="server" Text="Моментално време" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Navy"></asp:Label>
    <asp:Button ID="btnTime" runat="server" Text="Моментално време" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Navy" OnClick="btnTime_Click" />
    <br/>
    <asp:HyperLink ID="hlNext" runat="server" NavigateUrl="NovaStranica.aspx">HyperLink</asp:HyperLink>
</asp:Content>
