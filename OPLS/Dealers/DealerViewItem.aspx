<%@ Page Title="" Language="C#" MasterPageFile="~/Dealer.Master" AutoEventWireup="true" CodeBehind="DealerViewItem.aspx.cs" Inherits="OPLS.Dealers.DealerViewItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
          Placed Items by people  </h1>
         
         </div>

         <br />
<p style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">Type&nbsp;&nbsp;&nbsp; Color &nbsp; Quantity&nbsp;&nbsp; Total(Rs)&nbsp;&nbsp;
Name&nbsp;&nbsp; City&nbsp;&nbsp;  Address&nbsp;&nbsp; Pin&nbsp;&nbsp;Mobile </p>

    <asp:Repeater ID="d1" runat="server">
    <HeaderTemplate>
        <ul>
        </ul>
    </HeaderTemplate>
    <ItemTemplate>
         
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="women">
                            <p style="font-family: Times New Roman; font-size: large;">
                                <%#Eval("Type") %> &nbsp;&nbsp;&nbsp;&nbsp;
                                <%#Eval("Color") %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <%#Eval("Quantity") %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <%#Eval("Total_Price") %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <%#Eval("Name") %> &nbsp;&nbsp;&nbsp;&nbsp;
                                <%#Eval("City") %> &nbsp;&nbsp;&nbsp;&nbsp;
                                <%#Eval("Address") %> &nbsp;&nbsp;&nbsp;&nbsp;
                                <%#Eval("Pin") %> &nbsp;&nbsp;&nbsp;&nbsp;
                                <%#Eval("Mobile") %> &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="Accept.aspx?id=<%#Eval("ID") %>" target ="_blank"> Accept </a>&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="Reject.aspx" target ="_blank">Reject </a>
                                
                               
                            </p>
                        </div>
         
    </ItemTemplate>
    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>






</asp:Content>
