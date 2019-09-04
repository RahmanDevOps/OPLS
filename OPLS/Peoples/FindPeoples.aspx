<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FindPeoples.aspx.cs" Inherits="OPLS.Peoples.FindPeoples" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">





    <div class="menu" 
         style="font-family: 'Bodoni MT'; float: left; width: 27%; height: 900px; margin-left: 0px; color: #008000; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; " 
         align="left">
        <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 100%; height: 25px">
            <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px; margin-left: 95px;">
                Services 
            </h1>
        </div>
        <div class="toplinks">
            <a href="../Dealers/Dealers.aspx" 
                    
                style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Yarn Dealers</a></div>
        <div class="toplinks">
            <a href="../Traders/Traders.aspx"
                    
                style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Traders</a></div>
        <div class="toplinks">
            <a href="FindPeoples.aspx"
                    
                style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Find Peoples</a></div>
        <div class="toplinks">
            <a href="../PowerLoom/PowerLooms.aspx"
                    
                style="margin-left: 0px; border-top-style: solid; border-top-width: thin; border-top-color: #FFFFFF; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none;">Registration</a></div>
        <div class="toplinks">
            <a href="../Parts/Parts.aspx"
                    
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
              
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; Select City :</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="City" DataValueField="City" 
                    Height="25px" Width="140px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT DISTINCT [City] FROM [PeoplesPostedItem]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
       
        <tr>
            <td align="right" class="style3"
                 
                
                style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFFF">
              
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
       
        <tr>
            <td align="right" class="style3"
                 
                
                style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFFF">
              
                Select Cloth Type :</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="Type" DataValueField="Type" 
                    Height="25px" Width="140px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    
                    SelectCommand="SELECT [Type] FROM [PeoplesPostedItem] WHERE ([City] = @City)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="City" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
       
    </table>
    <br />
     <br />
     <br />

    <asp:Repeater ID="d1" runat="server">

        
        <HeaderTemplate>
         </HeaderTemplate>
          
          <ItemTemplate>
          <div style="width:35% ; float:left;" >
         <div class="" style="width:100%;float:left; font-family: 'Bodoni MT'; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC;">
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

         Weaver : <%#Eval("Pname") %>  <a href="PeopleProfile.aspx">View Profile</a>  <br /> 
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<img  src='<%#Eval("Image") %>' alt="" height="230px" width="230px"/>
          </div>
         <div class="" style="width:50%;float:left; font-family: 'Bodoni MT'; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC;">
          &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<%#Eval("Name") %><br />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Color : &nbsp;<%#Eval("Color") %><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rate : &nbsp;<%#Eval("Rate") %><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <asp:Button ID="Button1" runat="server" Text="Show Interest" Font-Bold="True" Width="150" Height="25" PostBackUrl="~/Peoples/Connect.aspx" />
          
          </div>
         
              
              
           </div>
            
           </ItemTemplate>
           <FooterTemplate>&nbsp;
           </ul>
           </FooterTemplate>
          
           </asp:Repeater>

</asp:Content>
