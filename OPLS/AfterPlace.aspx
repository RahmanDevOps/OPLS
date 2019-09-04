<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AfterPlace.aspx.cs" Inherits="OPLS.AfterPlace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">


    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br /> <br /> <br />

<center><div class="confirm" style="background-color: #000000; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; width: 50%; height: 120px;">

<br /> 
Congratulation , , , , , Your order has been placed , <br /> we will inform you soon regarding confirmation of items..



</div></center>
<br /> 
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#FF9966" 
                    BorderStyle="Solid" Font-Bold="True" ForeColor="#006600" 
                    onclick="Button1_Click" Text="Payment Through Card" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" BackColor="#FFFFCC" BorderStyle="Solid" 
                    Font-Bold="True" ForeColor="#006600" Text="Payment Through Paytm" 
                    Width="220px" onclick="Button2_Click" />
            </td>
        </tr>
    </table>
    <br /> <br />
</asp:Content>
