<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FillForm.aspx.cs" Inherits="OPLS.FillForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">


    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 502px;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            height: 26px;
            width: 493px;
        }
        .style6
        {
            width: 493px;
        }
        .style7
        {
            width: 502px;
            height: 26px;
        }
        .style13
        {
            height: 26px;
            width: 48px;
        }
        .style14
        {
            width: 48px;
        }
        .style15
    {
        height: 26px;
        width: 409px;
    }
    .style16
    {
        height: 26px;
        width: 45%;
    }
    .style17
    {
        width: 45%;
    }
        </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


          <table class="style1">
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; " 
                class="style16">
                Username :</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                    AutoPostBack="True" ontextchanged="TextBox1_TextChanged" ></asp:TextBox>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td align="right" 
                
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; " 
                class="style17">
                Email :</td>
            <td class="style6">
                <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox2_TextChanged" 
                    style="margin-left: 0px" AutoPostBack="True"></asp:TextBox>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
     </table>
      <br /> 
      

      <div class="leftt" 
        style="width: 100%; background-color: #273d27; height: 850px;" 
             align="center">
<div class="headings" 
         style="background-color: #800000; border: 1px inset #000000; width: 99.8%; height: 25px"> 
         
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC; margin-top: 0px;" align="center"> 
            Products Details </h1>

         
         </div>
      

      <table class="style2">
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style7">
                No of Items :</td> 
            <td class="style13">
                <asp:DropDownList ID="DropDownList16" runat="server" Height="25px" 
                    Width="160px" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList16_SelectedIndexChanged">

                     <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                   
                </asp:DropDownList>
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        </table>
        <hr />
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #999999"> Item 
            no - 1</h1> <br />

        <table class="style2">
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style7">
                Select Yarn Type : </td>
            <td class="style13">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Type" DataValueField="Type" 
                    Height="24px" Width="160px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT DISTINCT [Type] FROM [DealerRegister]" 
                    onselecting="SqlDataSource1_Selecting">
                </asp:SqlDataSource>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Select Yarn Dealer : </td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
                    Height="25px" Width="160px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [Name] FROM [DealerRegister] WHERE ([Type] = @Type)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Type" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Color :</td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource3" DataTextField="Color" DataValueField="Color">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [Color] FROM [DearlerPostItem]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Brand : </td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource4" DataTextField="Brand" DataValueField="Brand" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [Brand] FROM [DearlerPostItem]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>



        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Quantity() :</td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList13" runat="server" Height="16px" 
                    Width="106px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Total Rate :</td>
            <td class="style14">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #999999"> Item no - 2</h1> <br />

        
                <table class="style2">
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style7">
                Select Yarn Type : </td>
            <td class="style13">
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Type" DataValueField="Type" 
                    Height="24px" Width="160px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT DISTINCT [Type] FROM [DealerRegister]">
                </asp:SqlDataSource>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Select Yarn Dealer : </td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
                    Height="25px" Width="160px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [Name] FROM [DealerRegister] WHERE ([Type] = @Type)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Type" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Color :</td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource3" DataTextField="Color" DataValueField="Color">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [Color] FROM [DearlerPostItem]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Brand : </td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource4" DataTextField="Brand" DataValueField="Brand" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [Brand] FROM [DearlerPostItem]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>



        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Quantity() :</td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList14" runat="server" Height="16px" 
                    Width="106px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Total Rate :</td>
            <td class="style14">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table> 
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #999999"> Item no - 3</h1> <br />

            <table class="style2">
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style7">
                Select Yarn Type : </td>
            <td class="style13">
                <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Type" DataValueField="Type" 
                    Height="24px" Width="160px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT DISTINCT [Type] FROM [DealerRegister]">
                </asp:SqlDataSource>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Select Yarn Dealer : </td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList10" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
                    Height="25px" Width="160px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [Name] FROM [DealerRegister] WHERE ([Type] = @Type)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Type" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Color :</td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList11" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource3" DataTextField="Color" DataValueField="Color">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [Color] FROM [DearlerPostItem]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Brand : </td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList12" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource4" DataTextField="Brand" DataValueField="Brand" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource12" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [Brand] FROM [DearlerPostItem]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>



        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Quantity() :</td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList15" runat="server" Height="16px" 
                    Width="106px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style3">
                Total Rate :</td>
            <td class="style14">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table> <br /> <br />
           
    <div class="button" align="center"> 
               
                <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="28px" 
                    Text="Process" Width="250px" onclick="Button3_Click"/>
            
                <br />
                <br />
            
                <asp:Button ID="Button4" runat="server" Font-Bold="True" Height="28px" 
                    Text="Reset" Width="250px"/>
                <br />
               </div>
   
    </div>

</asp:Content>
