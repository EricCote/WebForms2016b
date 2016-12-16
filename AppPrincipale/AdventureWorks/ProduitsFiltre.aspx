<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProduitsFiltre.aspx.cs" Inherits="AppPrincipale.AdventureWorks.ProduitsFiltre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="drpCategory" AutoPostBack="true" ItemType="AppPrincipale.Models.Category" SelectMethod="GetCategories" DataValueField="CategoryID" DataTextField="Name" runat="server"></asp:DropDownList>
    <asp:DropDownList ID="drpSubcategory" AutoPostBack="true" ItemType="AppPrincipale.Models.Subcategory" SelectMethod="GetSubcategories" DataValueField="SubcategoryID" DataTextField="Name" runat="server"></asp:DropDownList>
    
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
