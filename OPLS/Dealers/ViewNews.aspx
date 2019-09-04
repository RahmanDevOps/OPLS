<%@ Page Title="" Language="C#" MasterPageFile="~/Dealer.Master" AutoEventWireup="true" CodeBehind="ViewNews.aspx.cs" Inherits="OPLS.Dealers.ViewNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">






    <asp:Repeater ID="d1" runat="server">
    <HeaderTemplate>
        <ul>
        </ul>
    </HeaderTemplate>
    <ItemTemplate>
        <div class=" con-w3l" align="center">
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="mid-1">
                        <div class="women">
                            <p style="font-family: Times New Roman; font-size: large;">
                                <%#Eval("News") %> &nbsp;&nbsp;&nbsp; <a href="delete.aspx" style="color: #FFFFFF"> Delete News</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </ItemTemplate>
    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>






</asp:Content>
