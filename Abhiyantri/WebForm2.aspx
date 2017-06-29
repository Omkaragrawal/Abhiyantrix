<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="X-Large" Text="Name"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="224px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Name Is Mandatory"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="E-Mail Id"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="196px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Invalid E-Mail Id"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Contact No"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Height="29px" Width="182px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Qualification"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Height="29px" OnTextChanged="TextBox4_TextChanged" Width="178px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Work Experience"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Height="22px" Width="145px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Experience Is Mandatory"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="Area Of Working"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Height="27px" Width="148px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="47px" Text="Submit" Width="81px" />
        <br />
    </form>
</body>
</html>
