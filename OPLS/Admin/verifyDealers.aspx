<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="verifyDealers.aspx.cs" Inherits="OPLS.Admin.verifyDealers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



<div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Login Here  </h1>

         
         </div>
          <br /> 

          <div class="full" style="background-color: #000000; width: 100%; height: auto">
         

             <asp:Repeater ID="d1" runat="server">
        <HeaderTemplate>
            <ul>
            </ul>
        </HeaderTemplate>
        <ItemTemplate>
           
                               

          <div style="width:100% ; float:left;" >
         <div class="" style="width:100%;float:left;">
          <img  src='<%#Eval("Documentt") %>' alt="" height="220px" width="270px"/>
          </div>
         <div class="" style="width:50%;float:left; font-family: 'Bodoni MT'; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC;">
          &nbsp;&nbsp;  Name :&nbsp;<%#Eval("Name") %><br />&nbsp;&nbsp;  
                        Type :&nbsp;<%#Eval("Type") %><br />&nbsp;&nbsp;
                        Address :&nbsp;<%#Eval("Address") %><br />&nbsp;&nbsp;  
                        Mobile No :&nbsp;<%#Eval("Mobile") %><br />
                        
                        <a href="verify.aspx?id=<%#Eval("ID") %>">Verify Now </a>

                        </div>

         
              
           </div>
      
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>
    </asp:Repeater>

        
         <br />

         </div>


</asp:Content>
