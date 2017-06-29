<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <div>
        </div>
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="#0000CC" BorderStyle="Double" Font-Italic="True" Font-Size="XX-Large" Height="70px" OnTextChanged="TextBox1_TextChanged" Width="729px">Welcome Enginner</asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Font-Size="Medium" Height="47px" Text="Edit Profiles" Width="125px" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Font-Size="Medium" Height="44px" Text="Add Certificates" Width="123px" />
        </p>
    </form>
</body>
</html>
