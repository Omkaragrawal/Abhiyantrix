<%@ Page AutoEventWireup="true" CodeBehind="Login-Signup.aspx.cs" Inherits="Abhiyantri.LoginSignup" Language="C#" UnobtrusiveValidationMode="none" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Login/Signup to Abhiyantrix</title>

    <%--    <script type="text/javascript">

        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
    </script>--%>    <%--    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />--%>



    <link href="JS\bootstrap-4.0.0-alpha.6-dist\bootstrap-4.0.0-alpha.6-dist\css\bootstrap.min.css" rel="stylesheet">
    <link href="Content/MyCSS.css" rel="stylesheet" />
</head>
<body style="background-image: url('backgroundlogin.jpg')">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ABHIYANTRIX PROJECTConnectionString %>" SelectCommand="SELECT * FROM [Login]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ABHIYANTRIX PROJECTConnectionString2 %>" DeleteCommand="DELETE FROM [Login] WHERE [UID] = @original_UID AND [UserName] = @original_UserName AND [UserEmail] = @original_UserEmail AND [Password] = @original_Password AND [UserType] = @original_UserType AND (([EID] = @original_EID) OR ([EID] IS NULL AND @original_EID IS NULL)) AND (([CID] = @original_CID) OR ([CID] IS NULL AND @original_CID IS NULL))" InsertCommand="INSERT INTO [Login] ([UserName], [UserEmail], [Password], [UserType], [EID], [CID]) VALUES (@UserName, @UserEmail, @Password, @UserType, @EID, @CID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [UserName] = @UserName, [UserEmail] = @UserEmail, [Password] = @Password, [UserType] = @UserType, [EID] = @EID, [CID] = @CID WHERE [UID] = @original_UID AND [UserName] = @original_UserName AND [UserEmail] = @original_UserEmail AND [Password] = @original_Password AND [UserType] = @original_UserType AND (([EID] = @original_EID) OR ([EID] IS NULL AND @original_EID IS NULL)) AND (([CID] = @original_CID) OR ([CID] IS NULL AND @original_CID IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_UID" Type="Int32" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_UserEmail" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_UserType" Type="String" />
            <asp:Parameter Name="original_EID" Type="Int32" />
            <asp:Parameter Name="original_CID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="UserType" Type="String" />
            <asp:Parameter Name="EID" Type="Int32" />
            <asp:Parameter Name="CID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="UserType" Type="String" />
            <asp:Parameter Name="EID" Type="Int32" />
            <asp:Parameter Name="CID" Type="Int32" />
            <asp:Parameter Name="original_UID" Type="Int32" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_UserEmail" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_UserType" Type="String" />
            <asp:Parameter Name="original_EID" Type="Int32" />
            <asp:Parameter Name="original_CID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <%-- <div class="page-bg"></div>--%>
    <%--<div id="fb-root"></div>
<script>
    window.fbAsyncInit = function () {
        FB.init({
            appId: '1004919652976616',
            xfbml: true,
            version: 'v2.10'
        });
        FB.AppEvents.logPageView();
    };

    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) { return; }
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>--%>
    <%--        <asp:HiddenField ID="HFformatvalid" runat="server" />
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
        <asp:HiddenField ID="HFut" runat="server" />--%>
    <div>



        <%--<div
                class="fb-like"
                data-share="true"
                data-width="450"
                data-show-faces="true">
            </div>--%>


        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <asp:Label ID="Result" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#CCFFCC" Visible="False"></asp:Label>
        <br />
        <br />

        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="Login" runat="server" OnActivate="Page_Load">
                <form id="form1" runat="server">
                    <div <%--style="background-color: #FFF056"--%> class="form-group-lg row">
                        <asp:Label BorderColor="Black" class="col-2 col-form-label" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="White" ID="Label8" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox class="col-8 col-form-label input-sm form-control" ID="TextBox7" placeholder="Enter your email here" runat="server" TextMode="Email" ValidateRequestMode="Enabled" ValidationGroup="LoginIn" Height="32px" Width="369px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Enter Your Email ID" ValidationGroup="LoginIn" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <br />
                    <div <%--style="background-color: #FFF056"--%> class="form-group-lg row">
                        <asp:Label class="col-2 col-form-label" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="White" ID="Label9" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox class="col-8 col-form-label  input-sm form-control" ID="TextBox8" placeholder="Enter your password here" runat="server" TextMode="Password" ValidateRequestMode="Enabled" ValidationGroup="LoginIn" Height="32px" Width="369px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*Enter your password" ValidationGroup="LoginIn" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <br />
                    <div <%--style="background-color: #FFF056"--%> class="form-group-lg row">
                        <asp:Button BackColor="#CC00FF"  class="btn btn-lg" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Height="53px" ID="buttonWaste" OnClick="Button1_Click" runat="server" Text="Login" Width="147px" />
                    </div>
                    <br />


                    <%--<div class="fb-login-button col-3" data-show-faces="false" data-width="200" data-height="300px" data-max-rows="1"></div>--%>


                    <br />
                    <br />
                    <div <%--style="background-color: #D9853B"--%>>
                        <asp:Button ID="Button3" OnClick="Button3_Click" runat="server" Height="53px" Text="Signup" Width="147px" UseSubmitBehavior="False" ValidationGroup="ChangeView" class="btn btn-warning btn-lg" BackColor="#66FF66" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" CausesValidation="False" ValidateRequestMode="Disabled" />
                    </div>
                </form>
            </asp:View>
            <asp:View ID="Signup" runat="server">
                <form id="form2" runat="server">
                    <div <%--style="background-color: #A2AB58"--%>>
                        <div <%--style="background-color: #D9853B" --%>>
                            <div class="form-group-lg row">
                                <asp:Label class="col-2 col-form-label" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="White" ID="Label10" runat="server" Text="First Name"></asp:Label>
                                <asp:TextBox CausesValidation="True" class="col-8 input-sm form-control form-group-lg col-8" Columns="4" Font-Size="Larger" Height="32px" ID="TextBox9" MaxLength="15" onblur="assign(this.id,HFfname)" placeholder="Enter your first name here" runat="server" ValidateRequestMode="Enabled" ValidationGroup="SignUp" Width="369px"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox9" Display="Dynamic" ErrorMessage="*Please enter your first name" ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="*Only alphabets allowed; upto 15 alphabets with no spaces." ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(\S[a-z,A-Z]{3,15}$)" ValidationGroup="SignUp" Display="Dynamic" EnableViewState="False"></asp:RegularExpressionValidator>
                        </div>
                        <br />
                        <br />
                        <div <%--style="background-color: #D9853B"--%>class="form-group-lg row">
                            <asp:Label class="col-2 col-form-label" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="White" ID="Label11" runat="server" Text="Last Name"></asp:Label>
                            <asp:TextBox AutoCompleteType="Disabled" class="col-8 col-form-label input-sm form-control form-group-lg col-8" Columns="4" Font-Size="Larger" Height="32px" ID="TextBox10" MaxLength="10" onblur="assign(this.id,HFsname)" placeholder="Enter your last name here" runat="server" ValidateRequestMode="Enabled" ValidationGroup="SignUp" Width="369px" CausesValidation="True"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox10" ErrorMessage="*Please enter your last name" ForeColor="Red" ValidationGroup="SignUp" SetFocusOnError="True" ValidateRequestMode="Enabled" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox10" ErrorMessage="*Only alphabets allowed; upto 15 alphabets with no spaces." ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled" ValidationExpression="^([a-z,A-Z]{1,10}$)" ValidationGroup="SignUp" Display="Dynamic"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <div class="form-group-lg row">
                            <asp:Label class="col-2 col-form-label" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="White" ID="UNamelbl" runat="server" Text="UserName"></asp:Label>
                            <asp:TextBox class="col-8 input-sm form-control" Font-Size="Larger" Height="32px" ID="UNametxt" MaxLength="15" name="TextBox11" onblur="setmail()" OnTextChanged="TextBox11_TextChanged" placeholder="Enter your email name here" runat="server" ValidationGroup="SignUp" Width="369px" CausesValidation="True" Columns="4" ValidateRequestMode="Enabled"></asp:TextBox>
                        </div>
                        <asp:Label runat="server" ID="UNameElbl" Text="Username already exists please enter a new username" ForeColor="Red" Visible="False"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="UNametxt" Display="Dynamic" ErrorMessage="*UserName Required" ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="UNametxt" Display="Dynamic" ErrorMessage="*Name can contain alpha numeric characters only with no spaces (min. length is 5 and max length is 15)" ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled" ValidationExpression="^\S[a-z,A-Z,0-9]{4,15}$" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <div <%--style="background-color: #D9853B"--%> class="form-group-lg row">
                            <asp:Label class="col-2 col-form-label" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="White" ID="Label12" runat="server" Text="Email"></asp:Label>
                            <asp:TextBox class="col-8 input-sm form-control" Font-Size="Larger" Height="32px" ID="TextBox11" MaxLength="50" name="TextBox11" onblur="setmail()" OnTextChanged="TextBox11_TextChanged" placeholder="Enter your email name here" runat="server" ValidationGroup="SignUp" Width="369px"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox11" ErrorMessage="*Check your Email -ID" ForeColor="Red" ValidationGroup="SignUp" SetFocusOnError="True" ValidateRequestMode="Enabled" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox11" ErrorMessage="*Check youe Email - ID" ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled" ValidationExpression="^[a-zA-Z0-9.!#$%&amp;'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$" ValidationGroup="SignUp" Display="Dynamic"></asp:RegularExpressionValidator>
                        <asp:Label class="col-2 col-form-label" ID="Label17" runat="server"></asp:Label>
                        <asp:Label runat="server" ID="MailElbl" Text="This email id is already registered.Please use a new email or try logging in using this email" ForeColor="Red" Visible="False"></asp:Label>
                        <br />
                        <br />
                        <div <%--style="background-color: #D9853B"--%> class="form-group-lg row">
                            <asp:Label class="col-2 col-form-label" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="White" ID="Label13" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox class="col-8 input-sm form-control" Font-Size="Larger" Height="32px" ID="TextBox12" MaxLength="15" onblur="assign(this.id,HFpass)" placeholder="Enter your password here" runat="server" TextMode="Password" ValidationGroup="SignUp" Width="369px"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox12" ErrorMessage="*Password required" ForeColor="Red" ValidationGroup="SignUp" SetFocusOnError="True" ValidateRequestMode="Enabled" Display="Dynamic"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox12" ErrorMessage="*Password length must be between 7 to 15 alphanumeric characters with @&amp;#" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\S]{7,15}$" ValidationGroup="SignUp" SetFocusOnError="True" ValidateRequestMode="Enabled" Display="Dynamic"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <div <%--style="background-color: #D9853B"--%> class="form-group-lg row">
                            <asp:Label class="col-2 col-form-label" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="White" ID="Label14" runat="server" Text="Confirm Password"></asp:Label>
                            <asp:TextBox class="col-8 input-sm form-control" Font-Size="Larger" Height="32px" ID="TextBox13" placeholder="Confirm your password" runat="server" TextMode="Password" ValidateRequestMode="Enabled" ValidationGroup="SignUp" Width="369px"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox13" ErrorMessage="*Confirm Password required" ForeColor="Red" ValidationGroup="SignUp" SetFocusOnError="True" ValidateRequestMode="Enabled" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" BorderStyle="None" BorderWidth="2px" ControlToCompare="TextBox12" ControlToValidate="TextBox13" ErrorMessage="*Confirm password should match with password" ForeColor="Red" ValidationGroup="SignUp" SetFocusOnError="True" ValidateRequestMode="Enabled"></asp:CompareValidator>
                        <br />
                        <br />
                        <div <%--style="background-color: #D9853B"--%> class="form-group-lg row">
                            <asp:Label class="col-2 col-form-label" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="White" ID="Label15" runat="server" Text="Contact number"></asp:Label>
                            <asp:TextBox class="col-8 input-sm form-control" Font-Size="Larger" Height="32px" ID="TextBox14" MaxLength="13" onblur="assign(this.id,HFphno)" placeholder="Enter your contact details here" runat="server" TextMode="Phone" ValidateRequestMode="Enabled" ValidationGroup="SignUp" Width="369px"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox14" ErrorMessage="*Enter your contact number" ForeColor="Red" ValidationGroup="SignUp" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox14" ErrorMessage="*Enter number with (0 or +)&amp;(91/22)&amp; then the number" ForeColor="Red" SetFocusOnError="True" ValidateRequestMode="Enabled" ValidationExpression="(((^[\+,0][9][1])(((\s[0-9]{7,10})|(\S[0-9]{7,10}))|([-]\S[0-9]{7,10})))|((^[\+,0][2]{2,2})((\S[0-9]{7,8})|((([-])[0-9]{7,8})|(\s[0-9]{7,8})))))|(((^[6,7,8,9][0-9]{9,9}))|(^[0,\+](([9][1)|[6,7,8,9]))[0-9]{8,9}))" ValidationGroup="SignUp" Display="Dynamic" EnableViewState="False"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <div <%--style="background-color: #D9853B"--%> class="form-group-lg row">
                            <asp:Label class="col-2 col-form-label" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="White" ID="Label16" runat="server" Text="User Type"></asp:Label>
                            <asp:DropDownList aria-expanded="false" aria-haspopup="true" CausesValidation="True" class="btn btn-danger dropdown-toggle form-control col-3" data-toggle="dropdown" Font-Bold="True" Font-Size="X-Large" ID="DropDownList1" runat="server" ValidateRequestMode="Enabled" ValidationGroup="SignUp" Height="32px" Width="369px">
                                <asp:ListItem>Engineer</asp:ListItem>
                                <asp:ListItem>Client</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <br />
                        <br />
                        <div <%--style="background-color: #D9853B"--%>>
                            <asp:Button BackColor="#66FF66"  class="btn btn-lg" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" Height="53px" ID="button2" OnClick="SignupSubmit" runat="server" Text="Signup" Width="147px" />
                        </div>
                        <br />
                        <br />
                        <div <%--style="background-color: #FFF056"--%>>
                            <asp:Button ID="Button4" runat="server" Height="53px" OnClick="Button4_Click" Text="Login" Width="147px" ValidationGroup="ChangeView" class="btn btn-warning btn-lg" BackColor="#CC00FF" Font-Bold="True" Font-Size="X-Large" ForeColor="White" />
                        </div>
                    </div>
                </form>
            </asp:View>
        </asp:MultiView>

    </div>
    <%--    <script type="text/javascript" src="Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>--%><%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <script src="JS/jquery/jquery-3.2.1.slim.js"></script>
    <script src="JS/jquery/tether.min.js"></script>
    <script src="JS/bootstrap-4.0.0-alpha.6-dist/bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js"></script>
    <script src="JS/crypt.js"></script>

    <script type="text/javascript" src="Scripts/MyJS.js"></script>
</body>
</html>
