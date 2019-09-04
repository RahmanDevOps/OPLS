<%@ Page Title="" Language="C#" MasterPageFile="~/Dealer.Master" AutoEventWireup="true" CodeBehind="DealerNoticePost.aspx.cs" Inherits="OPLS.Dealers.DealerNoticePost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



  
    <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Post News / Information   </h1>

         
         </div>

        <div class="notice" align="center">


        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#009900" 
            Font-Size="Large"></asp:Label> <br /> <br />

          <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="500" 
            Height="250" Font-Size="X-Large"></asp:TextBox>
        <br /> 
        <br />
        <asp:Button ID="Button3" runat="server" Text="Post Notice" ForeColor="Black" 
            Font-Size="Large" Font-Bold="True" Height="30px" Width="120px" 
                onclick="Button3_Click"/>

       

     &nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="View Posted Notice" ForeColor="Black" 
            Font-Size="Large" Font-Bold="True" Height="30px" Width="185px" 
                onclick="Button2_Click" PostBackUrl="~/Dealers/ViewNews.aspx"/>
        
     </div>
   
   <br /> <br />



</asp:Content>
