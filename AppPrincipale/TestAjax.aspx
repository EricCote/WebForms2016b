<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestAjax.aspx.cs" Inherits="AppPrincipale.TestAjax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <img src="Images/Rogue-One-cast.jpg" />

    <br />

    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:UpdateProgress DisplayAfter="500" ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    Patientez!!!!!!
                </ProgressTemplate>
            </asp:UpdateProgress>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger
                ControlID="Button1" EventName="Click" />
             <asp:AsyncPostBackTrigger
                ControlID="Timer1" EventName="Tick" />
        </Triggers>
    </asp:UpdatePanel>
    <asp:Timer ID="Timer1" Enabled="true" Interval="1000"  runat="server"></asp:Timer>
    <br />
    <asp:Label ID="Label3" runat="server"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />

</asp:Content>
