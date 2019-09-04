<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dealers.aspx.cs" Inherits="OPLS.Dealers.Dealers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">





<div class="">

    <div class="menu" 
         style="font-family: 'Bodoni MT'; float: left; width: 27%; height: 1000px; margin-left: 0px; color: #008000; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; background-color: #CCFFFF;" 
         align="left">
    <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 100%; height: 25px">
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px; margin-left: 95px;">
            Services 
        </h1>
    </div>
    <div class="toplinks">
        <a href="Dealers.aspx" 
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Yarn Dealers</a></div>
    <div class="toplinks">
        <a href="../Traders/Traders.aspx"
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">
        Find Traders</a></div>
    <div class="toplinks">
        <a href="../Peoples/FindPeoples.aspx"
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Find Peoples</a></div>
    <div class="toplinks">
        <a href="../UserRegister.aspx"
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Registration</a></div>
    <div class="toplinks">
        <a href="../UserLogin.aspx"
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Login</a></div>
    <div class="toplinks">
        <a href="../News.aspx"
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">News / Info</a></div>
    <div class="toplinks">
        <a href="../feedback.aspx"
                    
            style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Feedback</a></div>
</div>

    <br />

    <table class="style1">
       
        <tr>
            <td align="right" class="style3"
                 
                
                style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFFF">
              
              &nbsp; &nbsp; &nbsp;
              What Are You Looking For :</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Type" DataValueField="Type" 
                    Height="28px" Width="140px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT DISTINCT [Type] FROM [DealerRegister]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
       
    </table>
    <br />
   

    <table class="style1">
       
        <tr>
            <td align="right" class="style3"
                 
                
                style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFFF">
              
              &nbsp; &nbsp; &nbsp;
              Select Your Favorite Yarn Supplier :</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" 
                    Height="28px" Width="140px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    
                    SelectCommand="SELECT [Name] FROM [DealerRegister] WHERE ([Type] = @Type)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="Type" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
       
    </table>
    <hr />

    <br />

    
       <div>
       <div style= "width:50px; height :1000px; float:left;"> &nbsp;
       </div>
       <div>
      
          <asp:Repeater ID="d1" runat="server">

        
        <HeaderTemplate>
         </HeaderTemplate>
          
          <ItemTemplate>
          <div style="width:33% ; float:left;" >
         <div class="" style="width:100%;float:left;">
          <img  src='<%#Eval("Image") %>' alt="" height="220px" width="270px"/>
          </div>
         <div class="" style="width:50%;float:left; font-family: 'Bodoni MT'; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC;">
          &nbsp;&nbsp;  Brand:&nbsp;<%#Eval("Brand") %><br />&nbsp;&nbsp;  Rate:&nbsp;<%#Eval("Rate") %><br />&nbsp;&nbsp;  Colour:&nbsp;<%#Eval("Color") %><br /><br /></div>
         
              
           </div>
           </ItemTemplate>
           <FooterTemplate>&nbsp;
           </ul>
           </FooterTemplate>
           </asp:Repeater> <br />
           
           
           </div>
            </div>
            <div></div>
           </div>





</asp:Content>
