<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FillForm2.aspx.cs" Inherits="OPLS.FillForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
 <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 502px;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            height: 26px;
            width: 493px;
        }
        .style6
        {
            width: 493px;
        }
        .style7
        {
            width: 502px;
            height: 26px;
        }
        .style8
        {
            width: 687px;
        }
        .style9
        {
            width: 687px;
            height: 21px;
        }
        .style10
        {
            height: 21px;
        }
        .style11
        {
            height: 21px;
            width: 105px;
        }
        .style12
        {
            width: 105px;
        }
        .style13
        {
            height: 26px;
            width: 48px;
        }
        .style14
        {
            width: 48px;
        }
        .style15
        {
            width: 40%;
            height: 26px;
        }
        .style16
        {
            width: 105px;
            height: 26px;
        }
        .style17
        {
            width: 40%;
            height: 30px;
        }
        .style18
        {
            width: 105px;
            height: 30px;
        }
        .style19
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />

<table class="style1">
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 40%;" 
                class="style4">
                Username :</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                    ontextchanged="TextBox1_TextChanged" ></asp:TextBox>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 40%;">
                Email :</td>
            <td class="style6">
                <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox2_TextChanged" 
                    style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>

     </table>
      <br /> 
     
      <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 22px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Delivery Address   </h1>

         
         </div>

      <table class="style1">
            <tr>
                <td class="style9" align="right" 
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; width: 40%;">
                    </td>
                <td class="style11">
                    </td>
                <td class="style10">
                    </td>
            </tr>
            <tr>
                <td class="style8" align="right" 
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; width: 40%;">
                    Name:</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 0px" 
                        Height="19px" Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8" align="right" 
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; width: 40%;">
                    City:</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 0px" 
                        Height="23px" Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8" align="right" 
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; width: 40%;">
                    Full Address:</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox10" runat="server" Height="85px" 
                        style="margin-left: 0px" TextMode="MultiLine" Width="199px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15" align="right" 
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                    Pin:</td>
                <td class="style16">
                    <asp:TextBox ID="TextBox11" runat="server" style="margin-left: 0px" 
                        Height="22px" Width="200px"></asp:TextBox>
                </td>
                <td class="style4">
                    </td>
            </tr>
            <tr>
                <td class="style8" align="right" 
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; width: 40%;">
                    Mobile: </td>
                <td class="style12">
                    <asp:TextBox ID="TextBox12" runat="server" style="margin-left: 0px" 
                        Height="23px" Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8" align="right" 
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; width: 40%;">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>

            <div class="button" align="center"> 
               
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="28px" 
                    Text="Place Order" Width="250px" onclick="Button1_Click" />
                
               
                <br />
              
            <br /> <br />
              
               </div>

</asp:Content>
