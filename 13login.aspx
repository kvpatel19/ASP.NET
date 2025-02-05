<%@ Page Language="C#" AutoEventWireup="true" CodeFile="13login.aspx.cs" Inherits="website_13login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="20pt" Text="Login"></asp:Label>
    <br /><br />
    
            <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
            <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
         <br /><br />
    
      
            <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtpsw" runat="server" TextMode="Password"></asp:TextBox>
         <br /><br />
        
            <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_click" Text="Submit" />&nbsp;
            <asp:Button ID="btnreset" runat="server" OnClick="btnreset_click" Text="Reset" />
            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
      </div
    </form>
</body>
</html>
