<%@ Control Language="C#" CodeBehind="ForeignKey_Edit.ascx.cs" Inherits="AppPrincipale.ForeignKey_EditField" %>

<asp:DropDownList ID="DropDownList1" runat="server" CssClass="DDDropDown">
</asp:DropDownList>

<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="text-danger h2" ControlToValidate="DropDownList1" Display="Static" Enabled="false" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" CssClass="text-danger h2" ControlToValidate="DropDownList1" Display="Static" />

