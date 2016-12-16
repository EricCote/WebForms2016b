<%@ Page Title="Detail produit" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="AppPrincipale.AdventureWorks.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1>Details produit</h1>
     <asp:ValidationSummary CssClass="alert alert-danger" ID="vs" runat="server" />

    
    <asp:DetailsView ID="DetProduit" runat="server" 
        CssClass="table table-striped"
        GridLines="None" CellSpacing="-1"
        ItemType="AppPrincipale.Models.Product"
        SelectMethod="DetProduit_GetItem"
        UpdateMethod="DetProduit_UpdateItem"
        AutoGenerateColumns="true"
        DataKeyNames="ProductID"
       
        >
        <Fields>
            <asp:CommandField ShowEditButton="true" />
            <asp:DynamicField DataField="Subcategory_Name" />
        </Fields>

    </asp:DetailsView>
   
</asp:Content>
