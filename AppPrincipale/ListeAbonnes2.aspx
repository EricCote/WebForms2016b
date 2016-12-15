<%@ Page Trace="true" Title="Liste Abonnés 2" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListeAbonnes2.aspx.cs" Inherits="AppPrincipale.ListeAbonnes2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Liste Abonnés 2</h1>
    <asp:GridView ID="grdAbonnes" runat="server"
       GridLines="None"  CellSpacing="-1"
         CssClass="table table-striped" 
         ItemType="AppPrincipale.Models.Abonnement"
         SelectMethod="grdAbonnes_GetData"
         
         ></asp:GridView>
</asp:Content>
