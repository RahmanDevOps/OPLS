<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="TraderRegister.aspx.cs" Inherits="OPLS.TraderRegister" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 487px;
        }
        .style3
        {
            width: 512px;
        }
        .style4
        {
            width: 422px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="headings" style="background-color: #800000; border: 1px inset #000000;
        width: 99.8%; height: 25px">
        <h1 style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bolder;
            font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC;
            margin-top: 0px;" align="center">
            Register Here
        </h1>
    </div>
    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" class="style3" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #FFFF99">
                Select Type of User
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="200px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    AutoPostBack="True">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Yarn Dealers</asp:ListItem>
                    <asp:ListItem>Traders</asp:ListItem>
                    <asp:ListItem>Peoples</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <hr />
    <br />
    <br />
    <table class="style1" style="background-color: #CCFF99">
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                &nbsp;
            </td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Registration ID
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="225px" AutoPostBack="True"
                    OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Enter RID" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Password
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox7" runat="server" Height="22px" Width="225px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox7"
                    ErrorMessage="Password" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegExp1" runat="server" ErrorMessage="Password not in required format"
                    ControlToValidate="TextBox7" ForeColor="Red" ValidationExpression="^(?=.{8,})(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[(!@#$%^&*()_+|~\- =\`{}[\]:”;'<>?,.\/, )])(?!.*(.)\1{2,}).+$"
                    ValidationGroup="1"></asp:RegularExpressionValidator>
                <ajaxtoolkit:passwordstrength id="PasswordStrength1" runat="server" minimumlowercasecharacters="1"
                    minimumnumericcharacters="1" minimumsymbolcharacters="1" minimumuppercasecharacters="1"
                    requiresupperandlowercasecharacters="true" targetcontrolid="TextBox7" preferredpasswordlength="8"
                    helpstatuslabelid="PasswordLabel" strengthindicatortype="Text" />
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td colspan="2">
                <asp:Label ID="PasswordLabel" runat="server" Text="Label" ForeColor="Green"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Name
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="225px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="Enter Name" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Aadhar Card No
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="225px" placeholder="Optional"></asp:TextBox>
            </td>
            <td class="style11">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Address
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox4" runat="server" Height="100px" Width="225px" Style="margin-top: 1px"
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="Enter Address" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Mobile No
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox5" runat="server" Height="22px" Width="225px" TextMode="Number"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5"
                    ErrorMessage="Enter Mobile" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Mobile No should be 10 digits"
                    ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Email
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox6" runat="server" Height="22px" Width="225px" TextMode="Email"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6"
                    ErrorMessage="Enter Email" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                &nbsp;
            </td>
            <td class="style4">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Document
            </td>
            <td class="style4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FileUpload1"
                    ErrorMessage="Upload Document" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                &nbsp;
            </td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Height="32px" Text="Button" Width="94px"
                    Font-Bold="True" ForeColor="#990000" OnClick="Button1_Click" ValidationGroup="1" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Height="32px" Text="Reset" Width="90px" Font-Bold="True"
                    ForeColor="#990000" OnClick="Button3_Click" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                &nbsp;
            </td>
            <td class="style4">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</asp:Content>
