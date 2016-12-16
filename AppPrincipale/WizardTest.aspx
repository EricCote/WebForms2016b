<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WizardTest.aspx.cs" Inherits="AppPrincipale.WizardTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Wizard OnActiveStepChanged="Wizard1_ActiveStepChanged" ID="Wizard1" runat="server"  FinishDestinationPageUrl="Finish.aspx">
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Pays">
                Pays: <asp:TextBox ID="txtPays" runat="server"></asp:TextBox>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Province">
                Province: <asp:TextBox ID="txtProvince" runat="server"></asp:TextBox>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep3" runat="server" Title="Ville">
                Ville:  <asp:TextBox ID="txtVille" runat="server"></asp:TextBox>
            </asp:WizardStep>
           <asp:WizardStep ID="WizardStep4" runat="server" Title="Revision">
                Vous provenez de : <asp:Label ID="lblLieu" runat="server" Text="Label"></asp:Label>
               <br /> 
               Enregistrer dans la BD? <asp:Button ID="btnSave" runat="server" Text="Sauvegarder" />
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>




</asp:Content>
