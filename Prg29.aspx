<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prg29.aspx.cs" Inherits="Prg29" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Login</h2>
    <div>
<label for="Username">Username:</label>
<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    
    </div>
        <div>
<label for="Password">Password:</label>
<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
</div>
<div>

<asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
</div>
<div>
<asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
</div>

    </form>
</body>
</html>
