<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FillForma.aspx.cs" Inherits="OPLS.FillForma" %>
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
        .style13
        {
            height: 26px;
            width: 48px;
        }
        </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<table class="style1">
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
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
                
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;">
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
      
      <div class="leftt" 
        style="width: 100%; background-color: #273d27; height: 600px;" 
             align="center">
<div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Products Details </h1>

         
         </div>



      <table class="style2">
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style7">
                No of Items :</td> 
            <td class="style13">
                <asp:DropDownList ID="DropDownList16" runat="server" Height="25px" 
                    Width="160px" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList16_SelectedIndexChanged1">
                     <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                   
                </asp:DropDownList>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        </table>
       <hr />



</asp:Content>
