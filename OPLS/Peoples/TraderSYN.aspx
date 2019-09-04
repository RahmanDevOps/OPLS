<%@ Page Title="" Language="C#" MasterPageFile="~/people.Master" AutoEventWireup="true" CodeBehind="TraderSYN.aspx.cs" Inherits="OPLS.Peoples.TraderSYN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 460px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Send you query ..   </h1>

         
         </div>

         <center><div class="query">
         <br />
         &nbsp;<table class="style1">
                 <tr>
                     <td align="right" class="style2" 
                         style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                     </td>
                     <td align="left">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align="right" class="style2" 
                         style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         Select Trader :</td>
                     <td align="left">
                         <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                             DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" 
                             Height="23px" Width="160px">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                             SelectCommand="SELECT [Name] FROM [TraderRegister]"></asp:SqlDataSource>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align="right" class="style2" 
                         style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                     <td align="left">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align="right" class="style2" 
                         style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         Clothes (Quantiy) :</td>
                     <td align="left">
                         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align="right" class="style2" 
                         style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                     <td align="left">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align="right" class="style2" 
                         style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         Brand :</td>
                     <td align="left">
                         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align="right" class="style2" 
                         style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                     <td align="left">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align="right" class="style2" 
                         style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         Date :</td>
                     <td align="left">
                         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align="right" class="style2" 
                         style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                     <td align="left">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align="right" class="style2" 
                         style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         Any message :</td>
                     <td align="left">
                         <asp:TextBox ID="TextBox4" runat="server" Height="100px" TextMode="MultiLine" 
                             Width="160px"></asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align="right" class="style2" 
                         style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                     <td align="left">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align="right" class="style2" 
                         style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                     <td align="left">
                         <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="33px" 
                             Text="Send" Width="160px" onclick="Button1_Click" />
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align="right" class="style2" 
                         style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                         &nbsp;</td>
                     <td align="left">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
             </table>


         </div></center>


</asp:Content>
