<%@ Page Language="C#" AutoEventWireup="true" CodeFile="29login.aspx.cs" Inherits="_29login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Login</h2>
    <div>
    <label for="username">Username:</label>
        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></div><br />
        <div>
            <label for="password">Password:</label>
         <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>
        <div>
        <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_click" />
            </div>
        <div>
        <asp:Label ID="lblmessage" runat="server" ForeColor="Red" Text="Label"></asp:Label>
    </div>
    
    </form>
</body>
</html>
