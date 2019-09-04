<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AfterOrder.aspx.cs" Inherits="OPLS.AfterOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">



    <style type="text/css">

        .style2
        {
            width: 100%;
        }
        .style7
        {
            width: 502px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
            width: 395px;
        }
        .style3
        {
            width: 502px;
        }
        .style15
        {
            width: 395px;
        }
        .style16
        {
            width: 469px;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">




<h1 align="center" style='color: #FFFFCC; font-family: "Courier New", Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none'> 
    Order Details </h1>
   <hr />
   
    <table class="style2">
       
        <asp:Repeater ID="d1" runat="server">

        
        <HeaderTemplate>
         </HeaderTemplate>
          
          <ItemTemplate>
        <tr>
            <td align="right" 
                
                style="color: #FFFFFF; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style7">
                Select Yarn Type : 
            </td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Type") %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFFF; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Select Yarn Dealer : 
            </td>
            <td class="style15">
                <asp:Label ID="Label2" runat="server" Text='<%#Eval("Dealer") %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFFF; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Brand :</td>
            <td class="style15">
                <asp:Label ID="Label3" runat="server" Text='<%#Eval("Brand") %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFFF; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Color : 
            </td>
            <td class="style15">
                <asp:Label ID="Label4" runat="server" Text='<%#Eval("Color") %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFFF; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Quantity() :</td>
            <td class="style15">
                <asp:Label ID="Label5" runat="server" Text='<%#Eval("Quantity") %>'></asp:Label>
            </td>
        </tr>
         <tr>
            <td align="right" 
                
                style="color: #FFFFFF; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Total Price() :</td>
            <td class="style15">
                <asp:Label ID="Label11" runat="server" Text='<%#Eval("Total_Price") %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFFF; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        
    </table>
   
 
  
<table class="style1">
            <tr>
                <td class="style16" align="right" 
                    
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; ">
                    </td>
                <td class="style10">
                    </td>
            </tr>
            <tr>
                <td class="style16" align="right" 
                    
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; ">
                    Name :</td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style16" align="right" 
                    
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; ">
                    City :</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text='<%#Eval("City") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style16" align="right" 
                    
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; ">
                    Full Address :</td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style16" align="right" 
                    
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                    Pin :</td>
                <td class="style4">
                    <asp:Label ID="Label9" runat="server" Text='<%#Eval("Pin") %>'></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style16" align="right" 
                    
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; ">
                    Mobile : </td>
                <td>
                    <asp:Label ID="Label10" runat="server" Text='<%#Eval("Mobile") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style16" align="right" 
                    
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; ">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16" align="right" 
                    
                    
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; ">
                    </td>
                <td class="style19">
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="Confirm Details" 
                        Width="125" Font-Bold="True" PostBackUrl="~/FillForm2.aspx" />
                    </td>
            </tr>
            <tr>
                <td class="style16" align="right" 
                    
                    
                    
                    
                    
                    style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; ">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
            </tr>
        
          </ItemTemplate>
          </asp:Repeater>
            </table>


</asp:Content>
