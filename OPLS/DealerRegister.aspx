<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DealerRegister.aspx.cs" Inherits="OPLS.DealerRegister" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 480px;
        }
        .style3
        {
            width: 495px;
        }
        .style8
        {
            width: 480px;
            height: 29px;
        }
        .style9
        {
            height: 29px;
        }
        .style10
        {
            width: 480px;
            height: 30px;
        }
        .style11
        {
            height: 30px;
        }
        .style12
        {
            width: 480px;
            height: 110px;
        }
        .style13
        {
            height: 110px;
        }
        .style14
        {
            width: 372px;
            height: 29px;
        }
        .style15
        {
            width: 372px;
            height: 30px;
        }
        .style16
        {
            width: 372px;
            height: 110px;
        }
        .style17
        {
            width: 372px;
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
    <table class="style1" style="background-color: #FFFFCC">
        <tr>
            <td align="right" class="style8" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                &nbsp;
            </td>
            <td class="style14">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#009933"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" class="style8" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Registration ID
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="225px" AutoPostBack="True"
                    OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Please Enter" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Email
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox7" runat="server" Height="22px" Width="225px" AutoPostBack="True"
                    OnTextChanged="TextBox7_TextChanged" TextMode="Email"></asp:TextBox>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox7"
                    ErrorMessage="Please Enter" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Password
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox8" runat="server" Height="22px" Width="225px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox8"
                    ErrorMessage="Please Enter" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegExp1" runat="server" ErrorMessage="Password not in required format"
                    ControlToValidate="TextBox8" ForeColor="Red" ValidationExpression="^(?=.{8,})(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[(!@#$%^&*()_+|~\- =\`{}[\]:”;'<>?,.\/, )])(?!.*(.)\1{2,}).+$"
                    ValidationGroup="1"></asp:RegularExpressionValidator>
                <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" MinimumLowerCaseCharacters="1"
                    MinimumNumericCharacters="1" MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1"
                    RequiresUpperAndLowerCaseCharacters="true" TargetControlID="TextBox8" PreferredPasswordLength="8"
                    HelpStatusLabelID="PasswordLabel" StrengthIndicatorType="Text" />
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
            <td align="right" class="style10" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Name
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="225px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="Please Enter" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Yarn Type
            </td>
            <td class="style15">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="160px">
                    <asp:ListItem Value="0">Select Type</asp:ListItem>
                    <asp:ListItem>Textiles</asp:ListItem>
                    <asp:ListItem>Polyster</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2"
                    ErrorMessage="Please Enter" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Address
            </td>
            <td class="style16">
                <asp:TextBox ID="TextBox4" runat="server" Height="100px" Width="225px" Style="margin-top: 1px"
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="Please Enter" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Mobile No
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox5" runat="server" Height="22px" Width="225px" TextMode="Number"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5"
                    ErrorMessage="Please Enter" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Mobile No should be 10 digits"
                    ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style10" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #800000">
                Upload Document&nbsp;
            </td>
            <td class="style15">
                <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Green" />
            </td>
            <td class="style11">
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
            <td class="style17">
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
                &nbsp;
            </td>
            <td class="style17">
                <asp:Button ID="Button3" runat="server" Height="32px" Text="Register" Width="94px"
                    Font-Bold="True" ForeColor="Black" OnClick="Button3_Click" BorderStyle="Outset"
                    BorderWidth="1px" ValidationGroup="1" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="32px" Text="Reset" Width="90px" Font-Bold="True"
                    ForeColor="Black" BorderStyle="Outset" BorderWidth="1px" OnClick="Button2_Click" />
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
            <td class="style17">
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
