<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Abhiyantrix.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> 
            <br />
            <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Engineers.jpg" BorderStyle="Ridge" Height="234px" HorizontalAlign="Center" style="margin-right: 261px" Width="638px">
            </asp:Panel>
            <br />
            <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl="~/Login-Signup.aspx" >Sign Up/Login</asp:HyperLink>

        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
