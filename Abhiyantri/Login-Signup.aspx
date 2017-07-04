<%@ Page Language="C#" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="Login-Signup.aspx.cs" Inherits="Abhiyantrix.Login_Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
</head>
<body style="background-color: #DFE2DB" onkeydown = "return (event.keyCode!=9 || event.keyCode!=13)">

    <form id="form1" runat="server">
        <asp:HiddenField ID="HFformatvalid" runat="server" />
        <asp:HiddenField ID="HFsmtpcheck" runat="server" />
        <asp:HiddenField ID="HFdisposable" runat="server" />
        <asp:HiddenField ID="HFmxfound" runat="server" />
        <asp:HiddenField ID="HFrole" runat="server" />
        <asp:HiddenField ID="HFaccept" runat="server" />
        <asp:HiddenField ID="HFfname" runat="server" />
        <asp:HiddenField ID="HFsname" runat="server" />
        <asp:HiddenField ID="HFemail" runat="server" />
        <asp:HiddenField ID="HFpass" runat="server" />
        <asp:HiddenField ID="HFphno" runat="server" />
        <asp:HiddenField ID="HFut" runat="server" />
        <div>

            <asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
            <br />

            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="Login" runat="server" OnActivate="Page_Load">
                    <div style="background-color: #FFF056">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Email"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" ValidateRequestMode="Enabled" ValidationGroup="LoginIn" TextMode="Email" class="input input-sm form-control" placeholder="Enter your email here"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Enter Your Email ID" ValidationGroup="LoginIn"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <br />
                    <div style="background-color: #FFF056">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Password"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox8" runat="server" ValidateRequestMode="Enabled" ValidationGroup="LoginIn" TextMode="Password" class="input input-sm form-control" placeholder="Enter your password here"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*Enter your password" ValidationGroup="LoginIn"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <br />
                    <div style="background-color: #FFF056">
                        <asp:Button ID="Button1" runat="server" Height="45px" Text="Login" Width="118px" ValidationGroup="LoginIn" OnClick="Button1_Click" class="btn btn-primary btn-lg" />
                    </div>
                    <br />
                    <br />
                    <br />
                    <div style="background-color: #D9853B">
                        <asp:Button ID="Button3" runat="server" Height="44px" OnClick="Button3_Click" Text="Signup" Width="105px" UseSubmitBehavior="False" ValidationGroup="ChangeView" ViewStateMode="Enabled" class="btn btn-warning btn-lg" />
                    </div>
                </asp:View>
                <asp:View ID="Signup" runat="server">
                    <div style="background-color: #A2AB58">
                        <div style="background-color: #D9853B">
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="First Name"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" runat="server" Font-Size="Larger" ValidateRequestMode="Enabled" ValidationGroup="SignUp" MaxLength="10" class="input input-sm form-control" Columns="4" placeholder="Enter your first name here" onblur="assign(this.id,HFfname)"></asp:TextBox>
                            &nbsp;
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="*Please enter your first name" ForeColor="Red" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="Only alphabets allowed; upto 15 alphabets with no spaces." ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled" ValidationExpression="^([a-z,A-Z]{1,10}$)" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <div style="background-color: #D9853B">
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Last Name"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server" Font-Size="Larger" ValidateRequestMode="Enabled" ValidationGroup="SignUp" MaxLength="10" class="input input-sm form-control" placeholder="Enter your last name here" onblur="assign(this.id,HFsname)"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox10" ErrorMessage="*Please enter your last name" ForeColor="Red" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox10" ErrorMessage="Only alphabets allowed; upto 15 alphabets with no spaces." ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled" ValidationExpression="^([a-z,A-Z]{1,10}$)" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <div style="background-color: #D9853B">
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Email"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TextBox11" runat="server" Font-Size="Larger" ValidationGroup="SignUp" OnTextChanged="TextBox11_TextChanged" class="input input-sm form-control" placeholder="Enter your email name here" name="TextBox11" onblur="setmail()" MaxLength="50"></asp:TextBox>
                            &nbsp;
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox11" ErrorMessage="*Check your Email -ID" ForeColor="Red" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox11" ErrorMessage="*Check youe Email - ID" ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled" ValidationExpression="^[a-zA-Z0-9.!#$%&amp;'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                        <asp:Label ID="Label17" runat="server"></asp:Label>
                        <br />
                        <br />
                        <div style="background-color: #D9853B">
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Password"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox12" runat="server" class="input input-sm form-control" Font-Size="Larger" MaxLength="15" onblur="assign(this.id,HFpass)" placeholder="Enter your password here" TextMode="Password" ValidationGroup="SignUp"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox12" ErrorMessage="*Password required" ForeColor="Red" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox12" ErrorMessage="Password length must be between 7 to 15 alphanumeric characters with @&amp;#" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\S]{7,15}$" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <div style="background-color: #D9853B">
                            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Confirm Password"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox13" runat="server" class="input input-sm form-control" Font-Size="Larger" placeholder="Confirm your password" TextMode="Password" ValidationGroup="SignUp"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;</div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox13" ErrorMessage="*Confirm Password required" ForeColor="Red" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" BorderStyle="None" BorderWidth="2px" ControlToCompare="TextBox12" ControlToValidate="TextBox13" ErrorMessage="*Confirm password should match with password" ForeColor="Red" ValidationGroup="SignUp"></asp:CompareValidator>
                        <br />
                        <br />
                        <div style="background-color: #D9853B">
                            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="Contact number"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox14" runat="server" class="input input-sm form-control" Font-Size="Larger" MaxLength="13" onblur="assign(this.id,HFphno)" placeholder="Enter your contact details here" TextMode="Phone" ValidationGroup="SignUp"></asp:TextBox>
                            &nbsp;
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox14" ErrorMessage="*Enter your contact number" ForeColor="Red" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox14" ErrorMessage="*Enter number with (0 or +)&amp;(91/22)&amp; then the number" ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled" ValidationExpression="(((^[\+,0][9][1])(((\s[0-9]{7,10})|(\S[0-9]{7,10}))|([-]\S[0-9]{7,10})))|((^[\+,0][2]{2,2})((\S[0-9]{7,8})|((([-])[0-9]{7,8})|(\s[0-9]{7,8})))))|(((^[6,7,8,9][0-9]{9,9}))|(^[0,\+](([9][1)|[6,7,8,9]))[0-9]{8,9}))" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <div style="background-color: #D9853B">
                            <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="User Type  ---&gt;"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton1" runat="server" Font-Size="Larger" GroupName="UserType" Text="Engineer" ValidationGroup="SignUp" />
                            <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="Larger" GroupName="UserType" Text="Company" ValidationGroup="SignUp" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                        <br />
                        <br />
                        <div style="background-color: #D9853B">
                            <asp:Button ID="SUSbmtBtn" runat="server" Font-Size="Larger" Height="49px" Text="Register" Width="125px" ValidationGroup="SignUp" class="btn btn-primary btn-lg" />
                        </div>
                        <br />
                        <br />
                        <div style="background-color: #FFF056">
                            <asp:Button ID="Button4" runat="server" Height="53px" OnClick="Button4_Click" Text="Login Here" Width="123px" ValidationGroup="ChangeView" class="btn btn-warning btn-lg" />
                        </div>
                    </div>
                </asp:View>
            </asp:MultiView>

        </div>
    </form>
    <script type="text/javascript" src="Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="Scripts/MyJS.js"></script>
</body>
</html>
