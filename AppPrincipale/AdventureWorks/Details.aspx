<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="AppPrincipale.AdventureWorks.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetProduit" runat="server" 
        CssClass="table table-striped"
        GridLines="None" CellSpacing="-1"
        ItemType="AppPrincipale.Models.Product"
        SelectMethod="DetProduit_GetItem"
        AutoGenerateColumns="true"
        DataKeyNames="ProductID"
        ></asp:DetailsView>
   
</asp:Content>
