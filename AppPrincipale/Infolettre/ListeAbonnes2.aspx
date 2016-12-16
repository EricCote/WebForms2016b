<%@ Page Title="" Culture="fr-CA" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListeAbonnes2.aspx.cs" Inherits="AppPrincipale.ListeAbonnes2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Liste des abonnées 2</h1>
     <asp:ValidationSummary CssClass="alert alert-danger" ID="vs" runat="server" />
    <asp:GridView CssClass="table table-striped" ID="grdAbonnes" runat="server"
         GridLines="None" CellSpacing="-1"
         ItemType="AppPrincipale.Models.Abonnement" SelectMethod="grdAbonnes_GetData"
         AutoGenerateColumns="false"
         UpdateMethod="grdAbonnes_UpdateItem"
         DeleteMethod="grdAbonnes_DeleteItem"
         DataKeyNames="AbonnementId"
         >
        <Columns>
            <asp:CommandField CancelText="&lt;span class=&quot;glyphicon glyphicon-remove&quot; aria-hidden=&quot;true&quot; title=&quot;Annuler&quot;&gt;&lt;/span&gt;" DeleteText="&lt;span class=&quot;glyphicon glyphicon-trash&quot; aria-hidden=&quot;true&quot; title=&quot;Supprimer&quot;&gt;&lt;/span&gt;" EditText="&lt;span class=&quot;glyphicon glyphicon-pencil&quot; aria-hidden=&quot;true&quot; title=&quot;Modifier&quot;&gt;&lt;/span&gt;" InsertText="Ins&#233;rer" NewText="Ajouter" ShowEditButton="True" UpdateText="&lt;span class=&quot;glyphicon glyphicon-ok&quot; aria-hidden=&quot;true&quot; title=&quot;Confirmer&quot;&gt;&lt;/span&gt;" ShowDeleteButton="True"></asp:CommandField>
            <asp:DynamicField HeaderText="Nom" DataField="Nom"></asp:DynamicField>
            <asp:DynamicField HeaderText="Courriel" DataField="Courriel"></asp:DynamicField>
            <asp:DynamicField HeaderText="Age" DataField="Age"></asp:DynamicField>
            <asp:DynamicField HeaderText="Ville" DataField="Ville"></asp:DynamicField>
            <asp:DynamicField HeaderText="DateDebut" DataField="DateDebut"></asp:DynamicField>
        </Columns>
    </asp:GridView>
</asp:Content>

