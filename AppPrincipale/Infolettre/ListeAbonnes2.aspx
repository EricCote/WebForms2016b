<%@ Page Title="" Culture="fr-CA" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListeAbonnes2.aspx.cs" Inherits="AppPrincipale.ListeAbonnes2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
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
            <asp:CommandField CancelText="&lt;span class=&quot;glyphicon glyphicon-remove&quot; aria-hidden=&quot;true&quot; title=&quot;Annuler&quot;&gt;&lt;/span&gt;" DeleteText="&lt;span class=&quot;glyphicon glyphicon-trash&quot; aria-hidden=&quot;true&quot;  data-toggle=&quot;modal&quot; data-target=&quot;#modalDelete&quot; title=&quot;Supprimer&quot;&gt;&lt;/span&gt;" EditText="&lt;span class=&quot;glyphicon glyphicon-pencil&quot; aria-hidden=&quot;true&quot; title=&quot;Modifier&quot;&gt;&lt;/span&gt;" InsertText="Ins&#233;rer" NewText="Ajouter" ShowEditButton="True" UpdateText="&lt;span class=&quot;glyphicon glyphicon-ok&quot; aria-hidden=&quot;true&quot; title=&quot;Confirmer&quot;&gt;&lt;/span&gt;" ></asp:CommandField>
            <asp:TemplateField>
                <ItemTemplate>
                   <asp:Button ID="btnDelete" runat="server"  
                       CssClass="btn btn-default" 
                       style="font-family: 'Glyphicons Halflings';"
                       CommandName="Delete" 
                       CommandArgument="<%: Item.AbonnementId %>" 
                       Text="&#xe020;"
                       />
                    <ajaxToolkit:ConfirmButtonExtender 
                         ID="ConfirmButtonExtender1" runat="server"
                         TargetControlID="btnDelete" 
                         OnClientCancel="cancelClick"
                         DisplayModalPopupID="ModalPopupExtender1" />
                    <ajaxToolkit:ModalPopupExtender 
                         ID="ModalPopupExtender1" runat="server" 
                         TargetControlID="btnDelete" PopupControlID="PNL" 
                         OkControlID="ButtonOk" CancelControlID="ButtonCancel" 
                         BackgroundCssClass="modalBackground" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:DynamicField HeaderText="Nom" DataField="Nom"></asp:DynamicField>
            <asp:DynamicField HeaderText="Courriel" DataField="Courriel"></asp:DynamicField>
            <asp:DynamicField HeaderText="Age" DataField="Age"></asp:DynamicField>
            <asp:DynamicField HeaderText="Ville" DataField="Ville"></asp:DynamicField>
            <asp:DynamicField HeaderText="DateDebut" DataField="DateDebut"></asp:DynamicField>
        </Columns>

       
    </asp:GridView>

    <asp:Panel ID="PNL" runat="server" Style="display: none; width: 200px; background-color: White; border-width: 2px; border-color: Black; border-style: solid; padding: 20px;">
                Êtes vous certain de supprimer?
                        <br /><br />

                <div style="text-align: right;">
                    <asp:Button ID="ButtonOk" runat="server" Text="Supprimer" />
                    <asp:Button ID="ButtonCancel" runat="server" Text="Annuler" />
                </div>
    </asp:Panel>

 <!-- Modal -->
<%--<div class="modal fade" id="modalDelete" tabindex="-1" role="dialog" aria-labelledby="deleteConfirm">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Confirmer suppression</h4>
      </div>
      <div class="modal-body">
         Confirmez la suppression de l'élément.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Conserver</button>
        <button type="button" class="btn btn-primary">Supprimer</button>
      </div>
    </div>
  </div>
</div>--%>

</asp:Content>

