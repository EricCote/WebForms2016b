<%@ Page Title="Liste Abonnés" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListeAbonnes.aspx.cs" Inherits="AppPrincipale.ListeAbonnes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <h1>Liste Abonnés</h1>

     <asp:GridView CssClass="table table-striped" 
         ID="grdAbonnes" runat="server"  
         GridLines="None"  CellSpacing="-1"
            >
     </asp:GridView>


</asp:Content>
