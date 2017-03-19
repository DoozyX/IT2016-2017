<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-right" style="width: 126px; height: 23px;">
                <asp:Label ID="lblName" runat="server" Text="Име"></asp:Label>
            </td>
            <td style="width: 249px; height: 23px">
                <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
            </td>            
            <td style="width: 791px; " rowspan="11">
                <asp:Panel ID="pnlPanela" runat="server" Width="234px">
                    Почитуван патнику<br />
                    <asp:Label ID="lblPatnik" runat="server" EnableTheming="True" ForeColor="Red"></asp:Label>
                    <br />
                    Изведена ви е карта за<br />
                    <asp:Label ID="lblSredstvo" runat="server"></asp:Label>
                    <br />
                    со почетна дестинација<br />
                    <asp:Label ID="lblOd" runat="server"></asp:Label>
                    <br />
                    и крајна дестинација<br />
                    <asp:Label ID="lblDo" runat="server"></asp:Label>
                    <br />
                    Време на поаѓање е
                    <br />
                    <asp:Label ID="lblVreme" runat="server"></asp:Label>
                    <br />
                    <br />
                    Вашето место на седење ќе биде во зоната за
                    <asp:Label ID="lblZona" runat="server"></asp:Label>
                    &nbsp;во
                    <asp:Label ID="lblKlasa" runat="server"></asp:Label>
                    &nbsp;класа и во текот на патувањето ќе бидете послужени со
                    <asp:Label ID="lblPosluga" runat="server"></asp:Label>
                    <br />
                    <asp:Image ID="imgSlika" runat="server" Height="200px" Width="223px" />
                    <br />
                    Ви благодариме на довербата и ви посакуваме среќен пат!</asp:Panel>
            </td>            
        </tr>
        <tr>
            <td class="text-right" style="width: 126px; height: 24px;">
                <asp:Label ID="lblSurname" runat="server" Text="Презиме"></asp:Label>
            </td>
            <td style="height: 24px; width: 249px">
                <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 126px">
                <asp:Label ID="Label3" runat="server" Text="Од"></asp:Label>
            </td>
            <td style="width: 249px; margin-left: 40px;">
                <asp:DropDownList ID="ddlOd" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 126px;">
                <asp:Label ID="Label4" runat="server" Text="До"></asp:Label>
            </td>
            <td style="width: 249px">
                <asp:DropDownList ID="ddlDo" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 126px;">
                <asp:Label ID="Label5" runat="server" Text="Датум на Тргање"></asp:Label>
            </td>
            <td style="width: 249px">
                <asp:DropDownList ID="ddlDen" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlMesec" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlGodina" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 126px;">
                <asp:Label ID="Label6" runat="server" Text="Време на тргање"></asp:Label>
            </td>
            <td style="width: 249px">
                <asp:DropDownList ID="ddlVreme" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 126px;">
                <asp:Label ID="Label7" runat="server" Text="Превозно средство"></asp:Label>
            </td>
            <td style="width: 249px">
                <asp:ListBox ID="lstSredstvo" runat="server">
                    <asp:ListItem Value="Images/plane.png">Авион</asp:ListItem>
                    <asp:ListItem Value="Images/train.jpg">Воз</asp:ListItem>
                </asp:ListBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 126px;">Зона</td>
            <td style="width: 249px">
                <asp:RadioButtonList ID="rblZona" runat="server">
                    <asp:ListItem>Пишачи</asp:ListItem>
                    <asp:ListItem>Непушачи</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 126px;">Класа</td>
            <td style="width: 249px">
                <asp:RadioButtonList ID="rblKlasa" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Економска</asp:ListItem>
                    <asp:ListItem>Бизнис</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 126px;">Послуга</td>
            <td style="width: 249px">
                <asp:CheckBoxList ID="cblPosluga" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Пијалок</asp:ListItem>
                    <asp:ListItem>Кафе</asp:ListItem>
                    <asp:ListItem>Оброк</asp:ListItem>
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 126px;">
                &nbsp;</td>
            <td style="width: 249px">
                <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
