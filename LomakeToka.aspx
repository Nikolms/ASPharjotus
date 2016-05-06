<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSivu.master" AutoEventWireup="true" CodeFile="LomakeToka.aspx.cs" Inherits="LomakeToka" %>
<%@ MasterType VirtualPath="~/MasterSivu.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">

       <asp:Label ID="LabelSposti" runat="server" Text="Sähköposti:"></asp:Label>
       <asp:TextBox runat = "server" id = "SpostiTextBox" Height = "24px"
        CssClass="TextBoxCSS"></asp:TextBox>
            <asp:RequiredFieldValidator runat ="server"
            ControlToValidate = "SpostiTextBox"
            ErrorMessage = "Sähköposti on pakollinen tieto!"
            ValidationGroup = "Group2"
            Display = "none">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator runat ="server"
            ControlToValidate = "SpostiTextBox"
            ErrorMessage = "Sähköposti oltava muotoa osoite@domain.xxx"
            ValidationExpression = "^[.a-zA-Z0-9]{1,}@{1}[.a-zA-Z0-9]{1,}[.][.a-zA-Z0-9]{2,3}$"
            ValidationGroup = "Group2"
            Display = "none">
            </asp:RegularExpressionValidator>

        <br />

       <asp:Label ID="LabelTunniste" runat="server" Text="Tunniste:"></asp:Label>
       <asp:TextBox runat = "server" id = "TunnisteTextBox" Height = "24px"
        CssClass="TextBoxCSS"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server"
            ControlToValidate = "TunnisteTextBox"
            ErrorMessage = "Tunniste on pakollinen tieto!"
            ValidationGroup = "Group2"
            Display = "none">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat ="server"
            ControlToValidate = "TunnisteTextBox"
            ErrorMessage = "Tunnisteen on oltava vähintään 8 merkkiä pitkä"
            ValidationExpression = "^.{8,}$"
            ValidationGroup = "Group2"
            Display = "none">
            </asp:RegularExpressionValidator>
        <br />

       <asp:Label ID="LabelTunniste2" runat="server" Text="Tunnisteen varmennus:"></asp:Label>
       <asp:TextBox runat = "server" id = "TunnisteVarmennusTextBox" Height = "24px"
        CssClass="TextBoxCSS"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat ="server"
            ControlToValidate = "TunnisteVarmennusTextBox"
            ErrorMessage = "Tunniste on varmennettava!"
            ValidationGroup = "Group2"
            Display = "none">
            </asp:RequiredFieldValidator>
            <asp:CompareValidator runat ="server"
            ControlToValidate = "TunnisteVarmennusTextBox"
            ControlToCompare = "TunnisteTextBox"
            Operator = "Equal"
            ErrorMessage = "varmennus ja tunniste eivät täsmää, tarkista että kirjoitit oikein"
            Type = "String"
            Display = "None"
            ValidationGroup = "Group2">
            </asp:CompareValidator>

        <br />

       <asp:Label ID="LabelGSM" runat="server" Text="GSM-numero:"></asp:Label>
       <asp:TextBox runat = "server" id = "GSMTextBox" Height = "24px"
        CssClass="TextBoxCSS"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat ="server"
            ControlToValidate = "GSMTextBox"
            ErrorMessage = "GSM-numero on pakollinen tieto!"
            ValidationGroup = "Group2"
            Display = "none">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat ="server"
            ControlToValidate = "GSMTextBox"
            ErrorMessage = "GSM-numero oltava muotoa 999-1234567"
            ValidationExpression = "^[9]{3}[-][0-9]{7}$"
            ValidationGroup = "Group2"
            Display = "None">
            </asp:RegularExpressionValidator>

        <br />
        <br />
        <br />

<asp:Button ID="LomakeTokaButton" runat="server" Text="Päivitä tiedot!" 
           onclick="LomakeTokaButton_Click" ValidationGroup = "Group2"/>
<br />
<br />

<br />
</asp:Content>

