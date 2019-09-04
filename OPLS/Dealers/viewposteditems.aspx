﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dealer.Master" AutoEventWireup="true" CodeBehind="viewposteditems.aspx.cs" Inherits="OPLS.Dealers.viewposteditems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Posted Items   </h1>

         
         </div>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
    CellPadding="4" CellSpacing="2" DataKeyNames="Item_Id" 
    DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%">
        <Columns>
            <asp:BoundField DataField="Item_Id" HeaderText="Item_Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Item_Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
            <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="107px" 
                        ImageUrl='<%# Eval("Image") %>' Width="103px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
    DeleteCommand="DELETE FROM [DearlerPostItem] WHERE [Item_Id] = @Item_Id" 
    InsertCommand="INSERT INTO [DearlerPostItem] ([Name], [Color], [Brand], [Rate], [Image]) VALUES (@Name, @Color, @Brand, @Rate, @Image)" 
    SelectCommand="SELECT [Item_Id], [Name], [Color], [Brand], [Rate], [Image] FROM [DearlerPostItem] WHERE ([RID] = @RID)" 
    UpdateCommand="UPDATE [DearlerPostItem] SET [Name] = @Name, [Color] = @Color, [Brand] = @Brand, [Rate] = @Rate, [Image] = @Image WHERE [Item_Id] = @Item_Id">
    <DeleteParameters>
        <asp:Parameter Name="Item_Id" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Color" Type="String" />
        <asp:Parameter Name="Brand" Type="String" />
        <asp:Parameter Name="Rate" Type="String" />
        <asp:Parameter Name="Image" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="RID" SessionField="RID" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Color" Type="String" />
        <asp:Parameter Name="Brand" Type="String" />
        <asp:Parameter Name="Rate" Type="String" />
        <asp:Parameter Name="Image" Type="String" />
        <asp:Parameter Name="Item_Id" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>


</asp:Content>