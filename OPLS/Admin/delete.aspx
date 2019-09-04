<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="OPLS.Admin.delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 &nbsp;&nbsp;&nbsp;&nbsp;

<h1 style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC"> Dealer has beed deleted successfuly </h1> &nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button ID="Button1" runat="server" Text="Go to Back" Height="28px" 
        PostBackUrl="~/Admin/viewDeleteYarnDealers.aspx" />

    <br /> <br /> <br />


</asp:Content>
