<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="PeoplesRegister.aspx.cs" Inherits="OPLS.PeoplesRegister" %>
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
            width: 520px;
        }
        .style4
        {
            width: 405px;
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
    <table class="style1">
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #FFFFCC">
                &nbsp;
            </td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #FFFFCC">
                Username
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox6" runat="server" Height="22px" Width="225px" AutoPostBack="True"
                    OnTextChanged="TextBox6_TextChanged" CausesValidation="True"></asp:TextBox>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6"
                    ErrorMessage="Enter Username" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #FFFFCC">
                Password
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox9" runat="server" Height="22px" Width="225px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox9"
                    ErrorMessage="Enter Password" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegExp1" runat="server" ErrorMessage="Password not in required format"
                    ControlToValidate="TextBox9" ForeColor="Red" ValidationExpression="^(?=.{8,})(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[(!@#$%^&*()_+|~\- =\`{}[\]:”;'<>?,.\/, )])(?!.*(.)\1{2,}).+$"
                    ValidationGroup="1"></asp:RegularExpressionValidator>
                <ajaxtoolkit:passwordstrength id="PasswordStrength1" runat="server" minimumlowercasecharacters="1"
                    minimumnumericcharacters="1" minimumsymbolcharacters="1" minimumuppercasecharacters="1"
                    requiresupperandlowercasecharacters="true" targetcontrolid="TextBox9" preferredpasswordlength="8"
                    helpstatuslabelid="PasswordLabel" strengthindicatortype="Text" />
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td colspan="2">
                <asp:Label ID="PasswordLabel" runat="server" Text="Label" ForeColor="LightGreen"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #FFFFCC">
                Email
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox8" runat="server" Height="22px" Width="225px" TextMode="Email"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox8"
                    ErrorMessage="Enter Email" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #FFFFCC">
                Name
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="225px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="Enter Name" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #FFFFCC">
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
                text-transform: none; color: #FFFFCC">
                City
            </td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" Width="180px">
                    <asp:ListItem>Select City</asp:ListItem>
                    <asp:ListItem>Jalalpur</asp:ListItem>
                    <asp:ListItem>Bhulepur</asp:ListItem>
                    <asp:ListItem>Tanda</asp:ListItem>
                    <asp:ListItem>Akbarpur</asp:ListItem>
                    <asp:ListItem>Malipur</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2"
                    ErrorMessage="Select City" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #FFFFCC">
                Address
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox4" runat="server" Height="100px" Width="225px" Style="margin-top: 1px"
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="Enter Address" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #FFFFCC">
                Mobile No
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox5" runat="server" Height="22px" Width="225px" TextMode="Number"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5"
                    ErrorMessage="Enter Mobile" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Mobile No should be 10 digits"
                    ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #FFFFCC">
                &nbsp;
            </td>
            <td class="style4">
                &nbsp;
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #FFFFCC">
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
                text-transform: none; color: #FFFFCC">
                &nbsp;
            </td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Height="32px" Text="Submit" Width="94px"
                    Font-Bold="True" ForeColor="#990000" OnClick="Button1_Click" ValidationGroup="1" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Height="32px" Text="Reset" Width="90px" Font-Bold="True"
                    ForeColor="#990000" OnClick="Button3_Click" ValidationGroup="2" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="font-family: 'Courier New', Courier, monospace;
                font-size: medium; font-weight: bolder; font-style: normal; font-variant: normal;
                text-transform: none; color: #FFFFCC">
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
