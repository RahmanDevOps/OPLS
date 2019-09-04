<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TraderControl.aspx.cs" Inherits="OPLS.Admin.TraderControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<style type="text/css">
        .OneButton3
        {
            background-color: #FFFFFF;
            font-size: x-large;
            font-weight: bolder;
            font-family: Calibri;
            border: none;
            border-bottom: 3px solid #920b08;
            border-radius: 5px;
            height : 35px;
            width: 105;
            cursor : pointer;
            
            
        }
        .OneButton3:hover
        {
            background-color: #FFFF99;
           
        }  

        
    </style>


     <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Trader Control </h1>
         </div>

<br /> <br />  <br /> <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
    <asp:Button ID="Button3" runat="server" Text="View & Delete Traders" 
    Height="35" CssClass="OneButton3"  Width="270px" 
    PostBackUrl="~/Admin/viewdeletetraders.aspx"/>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button ID="Button1" runat="server" Text="Verify Traders" 
    Height="35" CssClass="OneButton3"  Width="270px" 
        PostBackUrl="~/Admin/VerifyTraders.aspx" />
    
    <br /> <br />
<br /> <br />
<br /> <br />



</asp:Content>
