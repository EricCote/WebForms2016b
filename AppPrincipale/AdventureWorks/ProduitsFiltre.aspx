<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProduitsFiltre.aspx.cs" Inherits="AppPrincipale.AdventureWorks.ProduitsFiltre" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList CssClass="form-control" ID="drpCategory" AutoPostBack="true" ItemType="AppPrincipale.Models.Category" SelectMethod="GetCategories" DataValueField="CategoryID" DataTextField="Name" runat="server"></asp:DropDownList>
    
    <asp:DropDownList  CssClass="form-control" ID="drpSubcategory" AutoPostBack="true" ItemType="AppPrincipale.Models.Subcategory" SelectMethod="GetSubcategories" DataValueField="SubcategoryID" DataTextField="Name" runat="server"></asp:DropDownList>
    
     <asp:GridView CssClass="table table-striped" ID="grdProduits" runat="server"
         GridLines="None" CellSpacing="-1"
         ItemType="AppPrincipale.Models.Product"
         SelectMethod="grdProduits_GetData"
         AutoGenerateColumns="false"
         DataKeyNames="ProductID"
         AllowPaging="true"
         AllowSorting="true"
         >
        <Columns>
            <asp:HyperLinkField SortExpression="Name" HeaderText="Nom" DataTextField="Name"  DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/AdventureWorks/Details?productID={0}"></asp:HyperLinkField>
            <asp:DynamicField  DataField="ProductNumber"></asp:DynamicField>
            <asp:DynamicField  DataField="Color"></asp:DynamicField>
            <asp:DynamicField  DataField="ListPrice"></asp:DynamicField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:TextBox runat="server" ID="txtFiltre" ></asp:TextBox>
    <ajaxToolkit:AutoCompleteExtender 
        ID="AutoCompleteExtender1" 
        runat="server"
        TargetControlID="txtFiltre"
        ServiceMethod="GetProduits"
        ServicePath="~/AdventureWorks/AutoComplete.asmx"
        MinimumPrefixLength="1" 
        CompletionInterval="200"
        
        ></ajaxToolkit:AutoCompleteExtender>
</asp:Content>
