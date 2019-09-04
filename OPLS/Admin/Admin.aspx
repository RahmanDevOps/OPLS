<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="OPLS.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 349px;
        }
        .style5
        {
            width: 349px;
            height: 25px;
        }
        .style9
        {
            width: 289px;
            height: 25px;
        }
        .style10
        {
            width: 289px;
        }
        .style11
        {
            width: 279px;
        }
        .style12
        {
            width: 289px;
            height: 7px;
        }
        .style13
        {
            width: 349px;
            height: 7px;
        }
        .style14
        {
            width: 289px;
            height: 5px;
        }
        .style15
        {
            width: 349px;
            height: 5px;
        }
        .style16
        {
            width: 289px;
            height: 10px;
        }
        .style17
        {
            width: 349px;
            height: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Login Here  </h1>

         
         </div>

         <br /> <br /> 

         <table class="style1" style="background-color: #333333; width: 60%;" 
        align="center">
        <tr>
            <td align="right" class="style10" 
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td align="right" class="style9" 
                
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                UserID:</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="250px" Font-Bold="True" 
                    ></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td align="right" class="style12" 
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                </td>
            <td class="style13">
                </td>
          
        </tr>
        <tr>
            <td align="right" class="style14" 
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                Password:</td>
            <td class="style15">
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="250px" 
                    Font-Bold="True" style="margin-top: 0px" TextMode="Password"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td align="right" class="style16" 
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                </td>
            <td class="style17">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td align="right" class="style10" 
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="30px" 
                    Text="Login" Width="250px" onclick="Button1_Click" />
               
            </td>
           
        </tr>
        <tr>
            <td align="right" class="style10" 
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="30px" 
                    Text=" Forgot Password" Width="250px"/>
               
            </td>
            
        </tr>
        <tr>
            <td align="right" class="style10" 
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
           
        </tr>
    </table>

















</asp:Content>
