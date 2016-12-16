<%@ Control Language="C#" CodeBehind="MultilineText_Edit.ascx.cs" Inherits="AppPrincipale.MultilineText_EditField" %>

<asp:TextBox ID="TextBox1" runat="server" CssClass="DDControl" TextMode="MultiLine" Text='<%# FieldValueEditString %>' Columns="80" Rows="5"></asp:TextBox>

<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" CssClass="text-danger h2" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" CssClass="text-danger h2" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:DynamicValidator runat="server" id="DynamicValidator1" CssClass="text-danger h2" ControlToValidate="TextBox1" Display="Static" />

