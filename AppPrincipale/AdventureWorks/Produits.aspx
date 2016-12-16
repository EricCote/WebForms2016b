<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Produits.aspx.cs" Inherits="AppPrincipale.AdventureWorks.Produits" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView CssClass="table table-striped" ID="grdProduits" runat="server"
         GridLines="None" CellSpacing="-1"
         ItemType="AppPrincipale.Models.Product"
         SelectMethod="grdProduits_GetData"
         AutoGenerateColumns="false"
         DataKeyNames="ProductID"
         AllowPaging="true"
         >
        <Columns>
            <asp:HyperLinkField HeaderText="Nom" DataTextField="Name"  DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/AdventureWorks/Details?productID={0}"></asp:HyperLinkField>
            <asp:DynamicField  DataField="ProductNumber"></asp:DynamicField>
            <asp:DynamicField  DataField="Color"></asp:DynamicField>
            <asp:DynamicField  DataField="ListPrice"></asp:DynamicField>
        </Columns>
    </asp:GridView>
</asp:Content>
