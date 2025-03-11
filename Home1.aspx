<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home1.aspx.cs" Inherits="Home1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Hello,welcome to home page...
    </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Log out" Height="47px" Width="92px" OnClick="Button1_click" />
        </p>
    </form>
</body>
</html>
