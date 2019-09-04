<%@ Page Title="" Language="C#" MasterPageFile="~/TraderMaster.Master" AutoEventWireup="true" CodeBehind="Traderhome.aspx.cs" Inherits="OPLS.Traders.Traderhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Welcome 
            <asp:Label ID="Label1" runat="server"></asp:Label>  </h1>

         
         </div> <br /><br /> <br />

        <h1 align="center" style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC"> Someone supplied you clothes  
             <a href="ViewClothes.aspx"> Click here </a> to view all
        
         
         </h1>

         <br /> <br /> <br /> <br /> <br /><br /><br /> 

   

</asp:Content>
