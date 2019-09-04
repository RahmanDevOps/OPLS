<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Traderlogin.aspx.cs" Inherits="OPLS.Traderlogin" %>
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

    <table class="style1" align="center" style="width: 60%">
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            
        </tr>
        <tr>
            <td align="right" class="style11"
                 
                
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFF99">
              
              Select Type of User</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="200px" 
                    AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    style="margin-left: 1px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Yarn Dealers</asp:ListItem>
                    <asp:ListItem>Traders</asp:ListItem>
                    <asp:ListItem>Peoples</asp:ListItem>
                </asp:DropDownList>
            </td>
          
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            
        </tr>
    </table>

    <hr />
    <br />

    &nbsp;
       


&nbsp;<table class="style1" style="background-color: #333333; width: 60%;" 
        align="center">
        <tr>
            <td align="left" class="style10" 
                
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" ForeColor="#FFFFCC"></asp:Label>
            </td>
            <td class="style3">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td align="right" class="style10" 
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            
        </tr>
        <tr><td colspan="2"><h1 style="font-family: Arial, Helvetica, sans-serif; font-size:x-large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Trader's Login</h1><br /><br /></td></tr>
        <tr>
            <td align="right" class="style9" 
                
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                Registration Id:</td>
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
                &nbsp;</td>
           
        </tr>
        <tr>
            <td align="right" class="style10" 
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="30px" 
                    Text="Login" Width="250px" onclick="Button1_Click" />

            </td>
           
        </tr>
        <tr>
            <td align="right" class="style10" 
                
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                &nbsp;</td>
            <td class="style3">

                <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="30px" 
                    Text=" Forgot Password" Width="250px" onclick="Button3_Click" />

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
