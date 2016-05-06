<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSivu.master" AutoEventWireup="true" CodeFile="SessionTarkastus.aspx.cs" Inherits="SessionTarkastus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">

    <asp:Label runat = "server" ID ="SessionNimi" Text ="Nimi:"></asp:Label>

&nbsp;<asp:Label runat = "server" ID="NimiDisplay"></asp:Label>

    <br />

<asp:Label runat = "server" ID="SessionSukuNimi" Text = "Sukunimi:"></asp:Label>

<asp:Label runat = "server" ID="SukuNimiDisplay"></asp:Label>

    <br />

<asp:Label runat = "server" ID="SessionIka" Text = "Ikä:"></asp:Label>

<asp:Label runat = "server" ID="IkaDisplay"></asp:Label>

    <br />

<asp:Label runat = "server" ID="SessionSposti" Text = "Sähköposti:"></asp:Label>

<asp:Label runat = "server" ID="SpostiDisplay"></asp:Label>

    <br />

<asp:Label runat = "server" ID="SessionTunniste" Text = "Tunniste:"></asp:Label>

<asp:Label runat = "server" ID="TunnisteDisplay"></asp:Label>
    
    <br />

<asp:Label runat = "server" ID="SessionGSM" Text = "GSM-Numero:"></asp:Label>

<asp:Label runat = "server" ID="GSMDisplay"></asp:Label>

    <br />

<asp:Label runat = "server" ID="SessionTilausKohde" Text = "Valittu tuote:"></asp:Label>

<asp:Label runat = "server" ID="TuoteDisplay"></asp:Label>

    <br />

<asp:Label runat = "server" ID="SessionJaksonAika" Text = "Tilauksen kesto:"></asp:Label>

<asp:Label runat = "server" ID="JaksonAikaDisplay"></asp:Label>

</asp:Content>

