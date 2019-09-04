<%@ Page Title="" Language="C#" MasterPageFile="~/TraderMaster.Master" AutoEventWireup="true" CodeBehind="TraderProfile.aspx.cs" Inherits="OPLS.Traders.TraderProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 271px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Welcome User   </h1>

         
         </div>
         <div class="pic" 
        style="border: 0px inset #FFFFCC; width: 29%; height: 300px; float: left;">
         
              <br /> 
              <br />
              <br />
             &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
              <asp:Image ID="Image1" runat="server" Width="145px" Height="180px" 
                  BorderColor="#999999" BorderStyle="Inset" BorderWidth="3px" /> <br />

            
                  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    
                         <asp:FileUpload ID="FileUpload1" runat="server" />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:Button ID="Button3" runat="server" Text="Upload" onclick="Button3_Click" />


         
         </div>

         <div class="content" style="border: 0px inset #FFFFCC; width: 69%; height: 400px; float: right;">
         
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
                         Registration ID :</td>
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
                         Name :</td>
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
                         <asp:Button ID="Button4" runat="server" Font-Bold="True" Height="28px" 
                                            Text="Update Profile" Width="180px" 
                             onclick="Button4_Click" PostBackUrl="~/Traders/UpdateProfile.aspx"/>

                       
                     </td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         
                         <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="28px" 
                    Text="Change Password" Width="180px" onclick="Button2_Click"/>

                        
                     </td>
                 </tr>
             </table>


         
         </div>




</asp:Content>
