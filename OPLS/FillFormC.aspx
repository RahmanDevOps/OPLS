<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FillFormC.aspx.cs" Inherits="OPLS.FillFormC" %>
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
        .style4
        {
            height: 26px;
        }
        .style5
        {
            height: 26px;
            width: 389px;
        }
        .style6
        {
            width: 389px;
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
        height: 26px;
        width: 40%;
    }
    .style15
    {
        width: 45%;
    }
    .style16
    {
        height: 26px;
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
                    ontextchanged="TextBox1_TextChanged" AutoPostBack="True" ></asp:TextBox>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                    Font-Bold="True" ForeColor="#FF9900" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td align="right" 
                
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; " 
                class="style15">
                Email :</td>
            <td class="style6">
                <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox2_TextChanged" 
                    style="margin-left: 0px" AutoPostBack="True"></asp:TextBox>
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" 
                    Font-Bold="True" ForeColor="#FF9900" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
     </table>
      <br /> 
      
      <div class="leftt" 
        style="width: 100%; background-color: #273d27; height: 450px;" 
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
            <td class="style4">
                &nbsp;</td>
        </tr>
        </table>
       <hr />

          <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#FFFFCC"></asp:Label>

        <br />

          <br />

        
                <table class="style2">
        <tr>
            <td align="right" 
                
                style="color: #FFFFCC; font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: none; width: 45%;" 
                class="style7">
                Select Yarn Type : </td>
            <td class="style13">
                <asp:DropDownList ID="DropDownList17" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Type" DataValueField="Type" 
                    Height="24px" Width="160px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
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
                <asp:DropDownList ID="DropDownList18" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
                    Height="24px" Width="160px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [Name] FROM [DealerRegister] WHERE ([Type] = @Type)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList17" Name="Type" 
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
                <asp:DropDownList ID="DropDownList19" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource3" DataTextField="Color" DataValueField="Color" 
                    Height="24px" Width="160px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    
                    
                    SelectCommand="SELECT [Color] FROM [DearlerPostItem] WHERE ([Supplier_name] = @Supplier_name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList18" Name="Supplier_name" 
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
                Brand : </td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList20" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource4" DataTextField="Brand" DataValueField="Brand" 
                    Height="24px" Width="160px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    
                    SelectCommand="SELECT [Brand] FROM [DearlerPostItem] WHERE ([Supplier_name] = @Supplier_name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList18" Name="Supplier_name" 
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
                Quantity() :</td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList14" runat="server" Height="24px" 
                    Width="114px" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList14_SelectedIndexChanged">
                    <asp:ListItem>Select </asp:ListItem>
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
                <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table> 
    <br /> <br />
           
    <div class="button" align="center"> 

        <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="28px" 
                    Text="Process" Width="250px" onclick="Button3_Click" 
            ValidationGroup="1"  />    
        
                <br />
                <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="28px" 
                    Text="Reset" Width="250px" />
              
                <br />
               </div>
   
   </div>
    <br />
      

    


</asp:Content>
