<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="verify.aspx.cs" Inherits="OPLS.Admin.verify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

  <br /> <br />
    <asp:Button ID="Button1" runat="server" Text="Go to Back" 
        PostBackUrl="~/Admin/verifyDealers.aspx" />

    <br /> 

    <h1> 
        <asp:Label ID="Label1" runat="server" Text="" style="color: #FFFF00"></asp:Label></h1>
    

    <br /> <br />


</asp:Content>
