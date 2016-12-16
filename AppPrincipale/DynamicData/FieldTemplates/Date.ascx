<%@ Control Language="C#" CodeBehind="Date.ascx.cs" Inherits="AppPrincipale.DateField" %>

<asp:Literal runat="server" ID="Literal1" 
    Text="<%#  ((DateTime)FieldValue).ToShortDateString() %>" />
