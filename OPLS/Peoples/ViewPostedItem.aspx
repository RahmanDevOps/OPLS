﻿<%@ Page Title="" Language="C#" MasterPageFile="~/people.Master" AutoEventWireup="true" CodeBehind="ViewPostedItem.aspx.cs" Inherits="OPLS.Peoples.ViewPostedItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Posted Items   </h1>

         
         </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
    CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
    GridLines="Vertical" Width="100%" AutoGenerateDeleteButton="True" 
    AutoGenerateEditButton="True" DataKeyNames="Item_Id">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="Item_Id" HeaderText="Item_Id" 
                SortExpression="Item_Id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="99px" 
                        ImageUrl='<%# Eval("Image") %>' Width="89px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>



<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
    
    SelectCommand="SELECT [Item_Id], [Name], [Color], [Type], [Rate], [Image] FROM [PeoplesPostedItem] WHERE (([Username] = @Username) AND ([Username] = @Username2))">
    <SelectParameters>
        <asp:SessionParameter Name="Username" SessionField="Username" Type="String" />
        <asp:SessionParameter Name="Username2" SessionField="Username" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>



</asp:Content>