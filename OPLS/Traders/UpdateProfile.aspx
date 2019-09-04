<%@ Page Title="" Language="C#" MasterPageFile="~/TraderMaster.Master" AutoEventWireup="true" CodeBehind="UpdateProfile.aspx.cs" Inherits="OPLS.Traders.UpdateProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
           Update Details  </h1>

         
         </div>
         <div class="update" align="center">

         <table class="style1">
                 <tr>
                     <td style="color: #FFFFCC; font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none" 
                         class="style2">
                         &nbsp;</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         <asp:Label ID="Label1" runat="server" ForeColor="#FFFF99"></asp:Label>
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
                         Registration ID :</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
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
                         <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
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
                         Pic :</td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         <asp:FileUpload ID="FileUpload1" runat="server" />
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
                         
                         <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="28px" 
                                            Text="Update " Width="160px" onclick="Button2_Click" />
                         
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


</asp:Content>
