<%@ Control Language="C#" CodeBehind="DateTime_Edit.ascx.cs" Inherits="AppPrincipale.DateTime_EditField" %>

<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control  col-xs-10" Text='<%# FieldValueEditString %>' Columns="20"></asp:TextBox>

<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="text-danger h2" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" CssClass="text-danger h2" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" CssClass="text-danger h2" ControlToValidate="TextBox1" Display="Static" Text="*" />
<asp:CustomValidator runat="server" ID="DateValidator" CssClass="text-danger h2" ControlToValidate="TextBox1" Display="Static" EnableClientScript="false" Enabled="false" OnServerValidate="DateValidator_ServerValidate" Text="*" />

