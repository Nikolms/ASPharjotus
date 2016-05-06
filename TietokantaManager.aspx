<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSivu.master" AutoEventWireup="true" CodeFile="TietokantaManager.aspx.cs" Inherits="TietokantaManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">


    <asp:Label ID="Label1" runat="server" Text="Valitse Tietue"></asp:Label>


    <br />
    <asp:Button ID="refreshButton" runat="server" onclick="Paivita_Button" Text="Päivitä lista" />


<br />



    <asp:ListBox ID="DBselain" runat="server" 
        >
        </asp:ListBox>

        <br />
    <asp:Label ID="Tiedot1" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Tiedot2" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Tiedot3" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Tiedot4" runat="server" Text=""></asp:Label>

        <br />

        <br />
    <asp:Label ID="Testi" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="PoistaValintaButton" runat="server" Text="Poista" OnClick="PoistaValintaButton_Click" />
    <br />
    <asp:Button ID="Haku" runat="server" Text="Hae" 
        OnClick="HaeTiedot" />
    <br />

        <br />
    <asp:Button ID="PoistaButton" runat="server" Text="Tyhjennä" 
        onclick="PoistaButton_Click" />

    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Etunimi"></asp:Label>
    <asp:TextBox ID="NimiBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Sukunimi"></asp:Label>
    <asp:TextBox ID="sukunimiBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Sähköposti"></asp:Label>
    <asp:TextBox ID="emailBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Salasana"></asp:Label>
    <asp:TextBox ID="TunnusBox4" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="LisaaButton" runat="server" Text="Lisää Kantaan" 
        onclick="LisaaButton_Click" />



    <br />



    <br />
    <br />

</asp:Content>

