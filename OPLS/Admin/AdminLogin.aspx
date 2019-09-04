<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="OPLS.Admin.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<br /> <br /><center>
 <div class="login"
               
        
        style="border: 3px outset #C0C0C0; background-color: #800000; width: 70%; height: 320px; color: #000000;"> 
        
    <br /> <br /> <br />

     <asp:Button ID="Button1" runat="server" Text="Dealer Panel" BackColor="Black" 
         BorderColor="Silver" BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" 
         Font-Italic="False" Font-Size="Large" ForeColor="#FFFF99" Height="18%" 
         Width="30%" PostBackUrl="~/Admin/DealerControl.aspx" /> 
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
     <asp:Button ID="Button2" runat="server" Text="People Panel" BackColor="Black" 
         BorderColor="Silver" BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" 
         Font-Italic="False" Font-Size="Large" ForeColor="#FFFF99" Height="18%" 
         Width="30%" PostBackUrl="~/Admin/PeopleControl.aspx" /> 

     <br /><br /><br /> <br />
     
     <asp:Button ID="Button3" runat="server" Text="Trader Panel" BackColor="Black" 
         BorderColor="Silver" BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" 
         Font-Italic="False" Font-Size="Large" ForeColor="#FFFF99" Height="18%" 
         Width="30%" PostBackUrl="~/Admin/TraderControl.aspx" /> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     

    <asp:Button ID="Button4" runat="server" Text="Change Password" BackColor="Black" 
         BorderColor="Silver" BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" 
         Font-Italic="False" Font-Size="Large" ForeColor="#FFFF99" Height="18%" 
         Width="30%" /> 
          <br /><br /><br />          
     
     <asp:Button ID="Button5" runat="server" Text="Logout" BackColor="Black" 
         BorderColor="Silver" BorderStyle="Inset" BorderWidth="2px" Font-Bold="True" 
         Font-Italic="False" Font-Size="Large" ForeColor="#FFFF99" Height="18%" 
         Width="30%" PostBackUrl="~/Default.aspx" />


    </div></center>

    
    <br /> <br />       
               

</asp:Content>
