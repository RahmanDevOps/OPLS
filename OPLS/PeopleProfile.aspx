<%@ Page Title="" Language="C#" MasterPageFile="~/Dealer.Master" AutoEventWireup="true" CodeBehind="PeopleProfile.aspx.cs" Inherits="OPLS.PeopleProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            User Profile   </h1>

         
         </div>

         <br /> 
         <br />
         
         <div class="full" align="center" 
        style="border: 1px solid #000000; width: 100%; height: 250px">



        <div class="pic" 
        style="border: 0px inset #FFFFCC; width: 29%; height: 300px; float: left;">
         
              <br /> 
                          &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
              <asp:Image ID="Image1" runat="server" Width="145px" Height="180px" 
                  BorderColor="#999999" BorderStyle="Inset" BorderWidth="0px" /> <br />

            
                 
                    
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                          


         
         </div>

         <div class="content" 
                 style="border: 0px inset #FFFFCC; width: 69%; height: 400px; float: right;" 
                 align="left">
         
             <table class="style1">
                 <tr>
                     <td style="color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none" 
                         class="style2">
                         &nbsp;</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none" 
                         class="style2">
                         &nbsp;</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none" 
                         class="style2">
                         Name :</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         <asp:Label ID="Label1" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td style="color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none" 
                         class="style2">
                         &nbsp;</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none" 
                         class="style2">
                         City :</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         <asp:Label ID="Label2" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td style="color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none" 
                         class="style2">
                         &nbsp;</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none" 
                         class="style2">
                         Email :</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         <asp:Label ID="Label3" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td style="color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none" 
                         class="style2">
                         &nbsp;</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none" 
                         class="style2">
                         Mobile No :</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         <asp:Label ID="Label4" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td style="color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none" 
                         class="style2">
                         &nbsp;</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none" 
                         class="style2">
                         Address :</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         <asp:Label ID="Label5" runat="server"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td style="color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none" 
                         class="style2">
                         &nbsp;</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                 </tr>
                 </table>


         
         </div>




         
         
         </div>
         
         <br />
         <br />

</asp:Content>
