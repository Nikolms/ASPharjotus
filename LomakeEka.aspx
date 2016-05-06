<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSivu.master" AutoEventWireup="true" CodeFile="LomakeEka.aspx.cs" Inherits="LomakeEka"%>
<%@ MasterType VirtualPath="~/MasterSivu.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Tyyli.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ContentPlaceHolderID="Main" Runat="Server">

    <asp:Label ID="LabelEtuNimi" runat="server" Text="Etunimi:" CssClass="LabelCSS"></asp:Label>

    <asp:TextBox runat = "server" id = "EtunimiTextBox" Height = "24px"
        CssClass="TextBoxCSS"></asp:TextBox>

        <asp:RequiredFieldValidator
        runat = "server"
        ErrorMessage = "Etunimi on pakollinen tieto!"
        ControlToValidate = "EtunimiTextBox"
        ValidationGroup = "Group1"
        Display = "None">
        </asp:RequiredFieldValidator>


    <br />


    <asp:Label ID="LabelSukunimi" runat="server" Text="Sukunimi:" CssClass="LabelCSS"></asp:Label>

    <asp:TextBox runat = "server" id = "SukuNimiTextBox" Height = "24px"
        CssClass="TextBoxCSS"></asp:TextBox>
        <asp:RequiredFieldValidator
        runat = "server" 
        ErrorMessage = "Sukunimi on pakollinen tieto!"
        ControlToValidate = "SukunimiTextBox"
        ValidationGroup = "Group1"
        Display = "None">
        </asp:RequiredFieldValidator>

    <br />


    <asp:Label ID="LabelIka" runat="server" Text="Ikä:" CssClass="LabelCSS"></asp:Label>

    <asp:TextBox runat = "server" id = "IkaTextBox" Height = "24px" 
        CssClass="TextBoxCSS"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
        runat = "server"
        ErrorMessage = "Ikä on pakollinen tieto!"
        ControlToValidate = "IkaTextBox"
        ValidationGroup = "Group1"
        Display = "None">
        </asp:RequiredFieldValidator>

        <asp:RangeValidator runat = "server"
        ErrorMessage = "Iän on oltava väliltä 18-65"
        ControlToValidate = "IkaTextBox"
        ValidationGroup = "Group1"
        MinimumValue = "18"
        MaximumValue = "65"
        Display = "None"
        CssClass = "TexBoxCSS">
        </asp:RangeValidator>
         
        
<br />
<br />
<br />
<asp:Button ID="LomakeEkaButton" runat="server" Text="Päivitä tiedot" onclick="LomakeEkaButtonClick" ValidationGroup = "Group1"/>
    <br />
    <br />
    <asp:Button ID="LisaaKantaanEka" runat="server" Text="Tallenna tiedot kantaan" 
        onclick="LisaaKantaanEka_Click" />
<br />
<br />

</asp:Content>

