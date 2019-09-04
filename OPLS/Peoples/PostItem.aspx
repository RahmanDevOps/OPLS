<%@ Page Title="" Language="C#" MasterPageFile="~/people.Master" AutoEventWireup="true" CodeBehind="PostItem.aspx.cs" Inherits="OPLS.Peoples.PostItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 370px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




<div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Post Item Here  </h1>

         
         </div>

    <form id="form2" >
<table class="style1">
    <tr>
        <td align="right" class="style2" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
            Product Name : </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="150px"></asp:TextBox>
        &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
            Color : </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                Height="25px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                Width="150px">
                <asp:ListItem>Black</asp:ListItem>
                <asp:ListItem>White</asp:ListItem>
                <asp:ListItem>Green</asp:ListItem>
                <asp:ListItem>Red</asp:ListItem>
                <asp:ListItem>Yellow</asp:ListItem>
                <asp:ListItem>Mehroon</asp:ListItem>
                <asp:ListItem>Dark Red</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBox5" runat="server" Visible="False" Height="18px" 
                Width="150px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
            Type : </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                Height="25px" onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                Width="150px">
                <asp:ListItem>Abcd</asp:ListItem>
                <asp:ListItem>xyz</asp:ListItem>
                <asp:ListItem>pqrs</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBox6" runat="server" Visible="False" Height="18px" 
                Width="150px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
            Rate : </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="18px" Width="150px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
            Pic : </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Width="229px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="style2" 
            style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button3" runat="server" Text="Post Item" Width="120px" 
                Font-Bold="True" Height="30px" onclick="Button3_Click" />

            &nbsp; &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="30px" Text="Reset" 
                Width="120px" />
          
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</form>


<br /> <br />




</asp:Content>
