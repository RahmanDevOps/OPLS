<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Connect.aspx.cs" Inherits="OPLS.Peoples.Connect" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 143px;
        }
        .style4
        {
            width: 291px;
        }
        .style5
        {
            width: 417px;
        }
        .style6
        {
            width: 440px;
        }
        .style8
        {
            width: 440px;
            height: 3px;
        }
        .style9
        {
            height: 3px;
        }
        .style10
        {
            width: 417px;
            height: 3px;
        }
        .style14
        {
            width: 440px;
            height: 0px;
        }
        .style15
        {
            height: 0px;
        }
        .style16
        {
            width: 417px;
            height: 0px;
        }
        .style17
        {
            width: 417px;
            height: 59px;
        }
        .style18
        {
            width: 440px;
            height: 59px;
        }
        .style19
        {
            height: 59px;
        }
        .style20
        {
            width: 417px;
            height: 2px;
        }
        .style21
        {
            width: 440px;
            height: 2px;
        }
        .style22
        {
            height: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Send your Interest  </h1>

         
         </div>

          <table class="style1">
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 40%;" 
                class="style4">
                RID :</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                    ontextchanged="TextBox1_TextChanged" Height="20px" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
                </td>
        </tr>
        &nbsp;
        
        Need to verify RID .... This will not be shown to any places.
     </table>
      <br /> 
      
      <hr />
      
      <div class="middle" align="center">
      

          <table class="style1">
              <tr>
                  <td align="right" class="style5" 
                      style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                      <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#FFFF99"></asp:Label>
                  </td>
                  <td class="style6">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td align="right" class="style5" 
                      style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                      Name :
                  </td>
                  <td class="style6">
                      <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="190px"></asp:TextBox>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td align="right" class="style10" 
                      style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                      </td>
                  <td class="style8">
                      </td>
                  <td class="style9">
                      </td>
              </tr>
              <tr>
                  <td align="right" class="style17" 
                      style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                      Address :
                  </td>
                  <td class="style18">
                      <asp:TextBox ID="TextBox3" runat="server" Height="51px" TextMode="MultiLine" 
                          Width="189px"></asp:TextBox>
                  </td>
                  <td class="style19">
                      </td>
              </tr>
              <tr>
                  <td align="right" class="style16" 
                      style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                      </td>
                  <td class="style14">
                      </td>
                  <td class="style15">
                      </td>
              </tr>
              <tr>
                  <td align="right" class="style5" 
                      style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                      Mobile No :</td>
                  <td class="style6">
                      <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="190px"></asp:TextBox>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td align="right" class="style20" 
                      style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                      </td>
                  <td class="style21">
                      </td>
                  <td class="style22">
                      </td>
              </tr>
              <tr>
                  <td align="right" class="style5" 
                      style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                      Requirment : </td>
                  <td class="style6">
                      <asp:TextBox ID="TextBox5" runat="server" Height="100px" TextMode="MultiLine" 
                          Width="230px"></asp:TextBox>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td align="right" class="style5" 
                      style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                      &nbsp;</td>
                  <td class="style6">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td align="right" class="style5" 
                      style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                      &nbsp;</td>
                  <td class="style6">
                      <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="30px" 
                          Text="Submit" Width="190px" onclick="Button1_Click" />
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td align="right" class="style5" 
                      style="font-family: Arial, Helvetica, sans-serif; font-size: small; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                      &nbsp;</td>
                  <td class="style6">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
              </table>


        </div>

</asp:Content>
