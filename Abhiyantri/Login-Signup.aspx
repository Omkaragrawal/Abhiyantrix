<%@ Page Language="C#" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="Login-Signup.aspx.cs" Inherits="Abhiyantrix.Login_Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <br />
        <br />
    
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="Login" runat="server" OnActivate="Page_Load"> 
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Email"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" ValidateRequestMode="Enabled" ValidationGroup="LoginIn"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Enter Your Email ID" ValidationGroup="LoginIn"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Password"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox8" runat="server" ValidateRequestMode="Enabled" ValidationGroup="LoginIn"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*Enter your password" ValidationGroup="LoginIn"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Height="35px" Text="Login" Width="118px" ValidationGroup="LoginIn" OnClick="Button1_Click" />
                <br />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Height="41px" OnClick="Button3_Click" Text="Signup" Width="105px" UseSubmitBehavior="False" ValidationGroup="ChangeView" ViewStateMode="Enabled" />
            </asp:View>
            <asp:View ID="Signup" runat="server">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="First Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" runat="server" Font-Size="Larger" ValidateRequestMode="Enabled" ValidationGroup="SignUp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please enter your first name" ControlToValidate="TextBox9" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Last Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server" Font-Size="Larger" ValidateRequestMode="Enabled" ValidationGroup="SignUp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please enter your last name" ControlToValidate="TextBox10" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Email"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox11" runat="server" Font-Size="Larger" ValidationGroup="SignUp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Check your Email -ID" ControlToValidate="TextBox11" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Password"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox12" runat="server" Font-Size="Larger" ValidationGroup="SignUp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Password required" ControlToValidate="TextBox12" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Confirm Password"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox13" runat="server" Font-Size="Larger" ValidationGroup="SignUp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Confirm Password required" ControlToValidate="TextBox13" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Contact number"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox14" runat="server" Font-Size="Larger" ValidationGroup="SignUp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox14" ErrorMessage="*Enter your contact number" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="User Type  ---&gt;"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" Font-Size="Larger" GroupName="UserType" Text="Engineer" ValidationGroup="SignUp" />
                <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="Larger" GroupName="UserType" Text="Company" ValidationGroup="SignUp" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Font-Size="Larger" Height="37px" Text="Register" Width="100px" ValidationGroup="SignUp" />
                <br />
                <br />
                <asp:Button ID="Button4" runat="server" Height="34px" OnClick="Button4_Click" Text="Login Here" Width="99px" ValidationGroup="ChangeView" />
            </asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
