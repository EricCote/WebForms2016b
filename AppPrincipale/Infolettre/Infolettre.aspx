<%@ Page Title="Infolettre" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Infolettre.aspx.cs" Inherits="AppPrincipale.Infolettre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="Content/bootstrap.css" rel="stylesheet" />
    <h1>Infolettre</h1>
    <div class="alert alert-success" visible="false" runat="server" id="divSucces"></div>

    <asp:ValidationSummary CssClass="alert alert-danger" ID="vs" runat="server" />

    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-md-2" for="<%= txtNom.ClientID %>">Nom</label>
            <div class="col-md-10">
                <asp:TextBox CssClass="form-control col-xs-10" placeholder="Nom" runat="server" ID="txtNom"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="text-danger h2 col-xs-2" ID="rfNom" ControlToValidate="txtNom" runat="server" ErrorMessage="Nom Obligatoire" Text="*"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2" for="<%= txtCourriel.ClientID %>">Courriel</label>
            <div class="col-md-10">
                <asp:TextBox CssClass="form-control col-xs-10" placeholder="Courriel" runat="server" ID="txtCourriel"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="text-danger h2 col-xs-2" Display="Dynamic" ID="rfCourriel" ControlToValidate="txtCourriel" runat="server" ErrorMessage="Courriel Obligatoire" Text="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator CssClass="text-danger h2 col-xs-2" ID="ReCourriel" runat="server" ControlToValidate="txtCourriel" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="*" ErrorMessage="Courriel non-valide"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2" for="<%= txtAge.ClientID %>">Age</label>
            <div class="col-md-10">
                <asp:TextBox CssClass="form-control col-xs-10" placeholder="Age" runat="server" ID="txtAge"></asp:TextBox>
                <asp:RangeValidator ID="RvAge" runat="server" ErrorMessage="Age doit être entre 18 et 125" ControlToValidate="txtAge" CssClass="text-danger h2 col-xs-2" Text="*" Type="Integer" MinimumValue="18" MaximumValue="125"></asp:RangeValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2" for="<%= txtDateDebut.ClientID %>">Date Début</label>
            <div class="col-md-10">
                <asp:TextBox CssClass="form-control col-xs-10" placeholder="Date" runat="server" ID="txtDateDebut"></asp:TextBox>
                <asp:CompareValidator ID="cbDateDebut" runat="server" ErrorMessage="Entrez une date valide" Text="*" ControlToValidate="txtDateDebut" CssClass="text-danger h2 col-xs-2" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2" for="<%= txtVille.ClientID %>">Ville</label>
            <div class="col-md-10">
                <asp:TextBox CssClass="form-control col-xs-10" placeholder="Ville" runat="server" ID="txtVille"></asp:TextBox>
                <asp:CustomValidator OnServerValidate="cvVille_ServerValidate" ID="cvVille" runat="server" ControlToValidate="txtVille" ErrorMessage="Pas une Ville valide" Text="*" CssClass="text-danger h2 col-xs-2"></asp:CustomValidator>
            </div>
        </div>
        <asp:Button CssClass="btn btn-default" OnClick="btnEnvoyer_Click" ID="btnEnvoyer" runat="server" Text="Envoyer" />
    </div>

</asp:Content>
