<%@ Page Title="" Language="C#" MasterPageFile="~/TraderMaster.Master" AutoEventWireup="true" CodeBehind="ViewClothes.aspx.cs" Inherits="OPLS.Traders.ViewClothes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">





</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
          Items Supplied by people  </h1>

         
         </div>

         <br />

<p style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
Lungi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Brand &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Message&nbsp;&nbsp;

    <asp:Repeater ID="d1" runat="server">
    <HeaderTemplate>
        <ul>
        </ul>
    </HeaderTemplate>
    <ItemTemplate>
         
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="women">
                            <p style="font-family: Times New Roman; font-size: large;">
                                <%#Eval("Clothes") %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <%#Eval("Brand") %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <%#Eval("Date") %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <%#Eval("msg") %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               
                                <a href="Accept.aspx" target ="_blank"> Accept </a>&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="Reject.aspx" target ="_blank">Reject </a>
                                
                               
                            </p>
                        </div>
         
    </ItemTemplate>
    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>






&nbsp;

</asp:Content>
