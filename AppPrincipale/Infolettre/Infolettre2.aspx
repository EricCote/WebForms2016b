<%@ Page Title="Infolettre" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Infolettre2.aspx.cs" Inherits="AppPrincipale.Infolettre2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Infolettre 2</h1>
    <p>Abonnez vous à l'infolettre</p>
     <div class="alert alert-success" visible="false" runat="server" id="divSucces"></div>

    <asp:ValidationSummary ID="ValidationSummary1" 
        CssClass="alert alert-danger" runat="server" />

    <asp:DetailsView ID="detAbonnement"
        GridLines="None" CellSpacing="-1"
        CssClass="table table-striped"
        runat="server"
        ItemType="AppPrincipale.Models.Abonnement"
        DataKeyNames="AbonnementId"
        SelectMethod="detAbonnement_GetItem"
        InsertMethod="detAbonnement_InsertItem"
        DefaultMode="Insert"
        AutoGenerateRows="false">
        <Fields>
            <asp:CommandField ShowInsertButton="True" CancelText="&lt;span class=&quot;glyphicon glyphicon-remove&quot; aria-hidden=&quot;true&quot;&gt;&lt;/span&gt;" InsertText="&lt;span class=&quot;glyphicon glyphicon-ok&quot; aria-hidden=&quot;true&quot;&gt;&lt;/span&gt;"></asp:CommandField>
            <asp:DynamicField HeaderText="Nom" DataField="Nom"></asp:DynamicField>
            <asp:DynamicField HeaderText="Courriel" DataField="Courriel"></asp:DynamicField>
            <asp:DynamicField HeaderText="Age" DataField="Age"></asp:DynamicField>
            <asp:DynamicField HeaderText="Ville" DataField="Ville"></asp:DynamicField>
            <asp:DynamicField HeaderText="DateDebut" DataField="DateDebut"></asp:DynamicField>
        </Fields>
    </asp:DetailsView>
</asp:Content>
