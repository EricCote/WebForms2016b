<%@ Control Language="C#" CodeBehind="Text_Edit.ascx.cs" Inherits="AppPrincipale.Text_EditField" %>

<asp:TextBox ID="TextBox1" runat="server" Text='<%# FieldValueEditString %>' CssClass="form-control col-xs-10"></asp:TextBox>

<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="text-danger h2" ControlToValidate="TextBox1" Display="Static" Enabled="false" Text="*" />
<asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" CssClass="text-danger h2" ControlToValidate="TextBox1" Display="Static" Enabled="false" Text="*" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" CssClass="text-danger h2" ControlToValidate="TextBox1" Display="Static" Text="*" />

