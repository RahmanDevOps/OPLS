<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Peoples.aspx.cs" Inherits="OPLS.Peoples.Peoples" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <div class="menu" 
         style="font-family: 'Bodoni MT'; float: left; width: 27%; height: 449px; margin-left: 0px; color: #008000; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;" 
         align="left">
    <div class="headings" 
         
            
            style="background-color: #800000; border: 1px inset #000000; width: 100%; height: 25px; margin-top: -15px;">
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px; margin-left: 95px;">
            Services 
        </h1>
    </div>
    <div class="toplinks">
        <a href="../Dealers/Dealers.aspx" 
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Yarn Dealers</a></div>
    <div class="toplinks">
        <a href="../Traders/Traders.aspx"
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">
        Find Traders</a></div>
    <div class="toplinks">
        <a href="Peoples.aspx"
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Find Peoples</a></div>
    <div class="toplinks">
        <a href="../PowerLoom/PowerLooms.aspx"
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Power Loom</a></div>
    <div class="toplinks">
        <a href="../Parts/Parts.aspx"
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Loom Parts</a></div>
    <div class="toplinks">
        <a href="../News.aspx"
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">News / Info</a></div>
    <div class="toplinks">
        <a href="../feedback.aspx"
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Feedback</a></div>
</div>
    
    
    <div class="peopl" align="center">
    
    <h1 style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC"> Welcome user .... </h1>

    <p style="color: #FFFFFF"> Hope you have visited the item sections ..... if not, please click yarn dealer page and find your products that you are looking for ..  <br />
    To use this system, you need to register first <br /> 

    you just have to fill a form to process your order <br /> 
    Make sure your email id must be valid to recieve regular update regarding your product ..<br />
    
    If you have already registered , Click here to make your order to your particular yarn dealer  <br /> <br />

        <asp:Button ID="Button1" runat="server" Text="Click to Process" Height="35px" 
            Width="150px" Font-Bold="True" ForeColor="Black" 
            PostBackUrl="~/FillForma.aspx" onclick="Button1_Click" />
    
        </p>

    </div>
    
    
    </asp:Content>
