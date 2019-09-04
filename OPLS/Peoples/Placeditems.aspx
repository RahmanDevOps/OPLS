<%@ Page Title="" Language="C#" MasterPageFile="~/people.Master" AutoEventWireup="true" CodeBehind="Placeditems.aspx.cs" Inherits="OPLS.Peoples.Placeditems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
         Item Placed by you  </h1>

         
         </div>  <br />

         <center><p style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC"> To Cancel order Enter ID :     
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>      &nbsp;&nbsp;&nbsp;&nbsp;
             
             <asp:Button ID="Button1" runat="server" Text="Cancel Now" Font-Bold="True" 
                 onclick="Button1_Click" />        &nbsp;&nbsp;&nbsp;
                 
             <asp:Button ID="Button2" runat="server" Text="View Cancel Item" 
                 Font-Bold="True" PostBackUrl="~/Peoples/ViewCancelItems.aspx" />               </p></center>



         <br /> 
      
          <asp:Repeater ID="d1" runat="server">

        
        <HeaderTemplate>
         </HeaderTemplate>
          
          <ItemTemplate>
          <div style="width:33% ; float:left;" >
        
         <div class="" style="width:50%;float:left; font-family: 'Bodoni MT'; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC;">
          &nbsp;&nbsp;  ID:&nbsp;<%#Eval("ID") %><br />&nbsp;&nbsp;  
          Dealer :&nbsp;<%#Eval("Dealer") %><br />&nbsp;&nbsp;  Color:&nbsp;<%#Eval("Color") %><br /><br /></div>
         
              
           </div>
           </ItemTemplate>
           <FooterTemplate>&nbsp;
           </ul>
           </FooterTemplate>
           </asp:Repeater> <br />

    
</asp:Content>
