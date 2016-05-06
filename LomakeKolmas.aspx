<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSivu.master" AutoEventWireup="true" CodeFile="LomakeKolmas.aspx.cs" Inherits="LomakeKolmas" %>
<%@ MasterType VirtualPath="~/MasterSivu.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">

     <asp:Label ID="LabelTilausKohde" runat="server" Text="Tilattava lehti:"></asp:Label>

     <asp:DropDownList ID="DropDownList1" runat="server">
     <asp:ListItem Text ="--Valitse lehti--" Value = "0" ></asp:ListItem>
     <asp:ListItem Text ="Juorulehti" Value = "Juorulehti" ></asp:ListItem>
     <asp:ListItem Text ="Talouslehti" Value = "Talouslehti" ></asp:ListItem>
     <asp:ListItem Text ="Tekniikkalehti" Value = "Tekniikkalehti" ></asp:ListItem>
     </asp:DropDownList>
     <asp:CompareValidator runat = "server"
      ValueToCompare = "0"
      ControlToValidate = "DropDownList1"
      Operator = "NotEqual"
      Display = "None"
      ErrorMessage = "Et ole valinnut tuotetta!"
      ValidationGroup = "Group3">
      </asp:CompareValidator>

<br />
<br />

     <asp:Label ID="LabelTilausJakso" runat="server" Text="Tilauksen jaksonaika:"></asp:Label>


    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
    <asp:ListItem Text = "1kk" Value = "1 kuukausi"></asp:ListItem>
    <asp:ListItem Text = "3kk" Value = "3 kuukautta"></asp:ListItem>
    <asp:ListItem Text = "6kk" Value = "6 kuukautta"></asp:ListItem>
    <asp:ListItem Text = "9kk" Value = "9 kuukautta"></asp:ListItem>
    <asp:ListItem Text = "12kk" Value = "12 kuukautta"></asp:ListItem>
    </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
        runat = "server"
        ErrorMessage = "Et valinnut tilausjakson aikaa!"
        ControlToValidate = "RadioButtonList1"
        ValidationGroup = "Group3">
        </asp:RequiredFieldValidator>
<br />
<br />
<asp:Button ID="LomakeKolmasButton" runat="server" Text="Päivitä tiedot" 
         onclick="LomakeKolmasButton_Click" ValidationGroup = "Group3"/>


</asp:Content>

