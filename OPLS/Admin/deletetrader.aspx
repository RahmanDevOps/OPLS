<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="deletetrader.aspx.cs" Inherits="OPLS.Admin.deletetrader" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



 &nbsp;&nbsp;&nbsp;&nbsp;

<h1 style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC"> Trader has beed deleted successfuly </h1> &nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button ID="Button2" runat="server" Text="Go to Back" Height="28px" 
        PostBackUrl="~/Admin/viewdeletetraders.aspx"/>
    
    
    <br /> <br /> <br />


</asp:Content>
