<%@ Control Language="C#" CodeBehind="EmailAddress_Edit.ascx.cs" Inherits="AppPrincipale.EmailAddress_EditField" %>

<asp:TextBox ID="TextBox1" CssClass="form-control col-xs-10" runat="server" Text='<%#  FieldValueEditString %>'  TextMode="email"></asp:TextBox>

<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="text-danger h2" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" CssClass="text-danger h2" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:RangeValidator runat="server" ID="RangeValidator1" CssClass="text-danger h2" ControlToValidate="TextBox1" Type="Integer"
    Enabled="false" EnableClientScript="true" MinimumValue="0" MaximumValue="100" Display="Static" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" CssClass="text-danger h2" ControlToValidate="TextBox1" Display="Static" />

