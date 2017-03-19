<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:MultiView ID="mvRegister" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <table style="width: 66%; margin-right: 2px;">
                <tr>
                    <td class="text-left" style="width: 75px">
                        <asp:Label ID="lblName" runat="server" Text="Име"></asp:Label>
                    </td>
                    <td style="width: 324px">
                        <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 192px">
                        <asp:RequiredFieldValidator ID="valName" runat="server" ControlToValidate="tbName" Display="None" ErrorMessage="Внеси име!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 75px">
                        <asp:Label ID="lblSurname" runat="server" Text="Презиме"></asp:Label>
                    </td>
                    <td style="width: 324px">
                        <asp:TextBox ID="tbSurname" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 192px">
                        <asp:RequiredFieldValidator ID="valSurname" runat="server" ControlToValidate="tbSurname" Display="None" ErrorMessage="Внеси презиме!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 75px; height: 27px">
                        <asp:Label ID="lblID" runat="server" Text="ФИНКИ ID"></asp:Label>
                    </td>
                    <td style="width: 324px; height: 27px">
                        <asp:TextBox ID="tbID" runat="server"></asp:TextBox>
                        <asp:Label ID="lblIDExtension" runat="server" Text="@finki.ukim.mk"></asp:Label>
                    </td>
                    <td style="width: 192px; height: 27px">
                        <asp:RequiredFieldValidator ID="valID" runat="server" ControlToValidate="tbID" Display="None" ErrorMessage="Внеси ID!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Label ID="Label2" runat="server" Text="може да ги содржи знаците a-z, 0-9, _ и максимум една точка."></asp:Label>
                    </td>
                    <td class="text-left" style="width: 192px">
                        <asp:RegularExpressionValidator ID="valCorrectID" runat="server" Display="None" ErrorMessage="Неправилен формат на ID" ControlToValidate="tbID" ValidationExpression="^[A-Z0-9]+$|(^[A-Z0-9]+_\d{2})"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="height: 24px; width: 75px">
                        <asp:Label ID="lblPassword" runat="server" Text="Лозинка"></asp:Label>
                    </td>
                    <td style="height: 24px; width: 324px">
                        <asp:TextBox ID="tbPW" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="height: 24px; width: 192px">
                        <asp:RequiredFieldValidator ID="valPw" runat="server" ControlToValidate="tbPW" Display="None" ErrorMessage="Внеси лозинка!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 75px">
                        <asp:Label ID="lblConfirm" runat="server" Text="Потврда"></asp:Label>
                    </td>
                    <td style="width: 324px">
                        <asp:TextBox ID="tbConfirm" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="width: 192px">
                        <asp:CompareValidator ID="valSamePW" runat="server" ControlToCompare="tbPW" ControlToValidate="tbConfirm" Display="None" ErrorMessage="Различни лозинки"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="valConfirmPWExists" runat="server" ControlToValidate="tbConfirm" Display="None" ErrorMessage="Внеси потврда!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 75px">
                        <asp:Button ID="btnNext1" runat="server" Height="26px" Text="&gt;&gt;" OnClick="btnNext1_Click" Width="59px" />
                    </td>
                    <td style="width: 324px">&nbsp;</td>
                    <td style="width: 192px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-left" colspan="3">
                        <asp:ValidationSummary ID="valSummary" runat="server" ForeColor="Red" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 66%; margin-right: 0px;">
                <tr>
                    <td class="text-left" style="width: 122px">
                        <asp:Label ID="lblAdress" runat="server" Text="Адреса"></asp:Label>
                    </td>
                    <td style="width: 195px">
                        <asp:TextBox ID="tbAdress" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 192px">
                        <asp:RequiredFieldValidator ID="valAdress" runat="server" ControlToValidate="tbAdress" ErrorMessage="Внеси адреса!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 122px">
                        <asp:Label ID="lblPhone" runat="server" Text="Тел"></asp:Label>
                    </td>
                    <td style="width: 195px">
                        <asp:TextBox ID="tbPhone" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 192px">
                        <asp:RequiredFieldValidator ID="valPhone" runat="server" ControlToValidate="tbPhone" ErrorMessage="Внеси телефон!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="valCorrectPhone" runat="server" ControlToValidate="tbPhone" ErrorMessage="Неправилен формат на телефон" Display="Dynamic" ForeColor="Red" ValidationExpression="^\+389 (2 \d{4}|7\d \d{3}) \d{3}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 122px; height: 27px">
                        <asp:Label ID="lblGender" runat="server" Text="Пол"></asp:Label>
                    </td>
                    <td style="width: 195px; height: 27px">&nbsp;</td>
                    <td style="width: 192px; height: 27px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-left" colspan="2">&nbsp;
                        <asp:RadioButtonList ID="rbGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>M</asp:ListItem><asp:ListItem>Ж</asp:ListItem>

                        </asp:RadioButtonList>
                    </td>
                    <td class="text-left" style="width: 192px">
                        <asp:RequiredFieldValidator ID="valGender" runat="server" ControlToValidate="rbGender" ErrorMessage="Внесете пол" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" colspan="2" style="height: 24px; ">Датум на раѓање</td>
                    <td style="height: 24px; width: 192px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 122px">&nbsp;</td>
                    <td style="width: 195px">
                        <asp:Calendar ID="calBirth" runat="server"></asp:Calendar>
                    </td>
                    <td style="width: 192px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 122px">
                        <asp:Button ID="btnPrev0" runat="server" OnClick="btnPrev0_Click" Text="&lt;&lt;" Width="61px" CausesValidation="False" />
                        <asp:Button ID="btnNext2" runat="server" Height="26px" OnClick="btnNext2_Click" Text="&gt;&gt;" Width="61px" />
                    </td>
                    <td style="width: 195px">&nbsp;</td>
                    <td style="width: 192px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-left" colspan="3">&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table style="width: 66%; margin-right: 2px;">
                <tr>
                    <td style="width: 192px">
                        <asp:Label ID="lblProffesion" runat="server" Text="Занимање"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlProffesions" runat="server">
                            <asp:ListItem>Студент</asp:ListItem>
                            <asp:ListItem>Професор</asp:ListItem>
                            <asp:ListItem>Програмер</asp:ListItem>
                            <asp:ListItem>Доктор</asp:ListItem>
                            <asp:ListItem>Пилот</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="valProffesion" runat="server" ControlToValidate="ddlProffesions" ErrorMessage="Изберете Занимање!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 192px; height: 27px">
                        <asp:Label ID="lblProffesionTime" runat="server" Text="Години на вршење на избраната дејност" Width="156%"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-left">
                        <asp:TextBox ID="tbProffesionTime" runat="server" Width="36px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valProffesionTimeExist" runat="server" ControlToValidate="tbProffesionTime" ErrorMessage="Внеси години на вршење на избраната дејност!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="valProffesionTime" runat="server" ControlToValidate="tbProffesionTime" Display="Dynamic" ErrorMessage="Недозволена Вредност" ForeColor="Red" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="5"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-left">
                        <asp:Button ID="btnPrev1" runat="server" OnClick="btnPrev1_Click" Text="&lt;&lt;" Width="61px" CausesValidation="False" EnableTheming="True" />
                        <asp:Button ID="btnNext3" runat="server" Height="26px" OnClick="btnNext3_Click" Text="Поднеси" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <asp:Label ID="lblSucessRegister" runat="server" Text="Label"></asp:Label>
            <br/>
            <asp:Button ID="btnHome" runat="server" Text="Врати се на почеток" OnClick="btnHome_Click" />
        </asp:View>
    </asp:MultiView>
</asp:Content>