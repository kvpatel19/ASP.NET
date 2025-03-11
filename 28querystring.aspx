<%@ Page Language="C#" AutoEventWireup="true" CodeFile="28querystring.aspx.cs" Inherits="_28querystring" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       Name: <asp:TextBox ID="txtname" runat="server"></asp:TextBox><br />
      City:  <asp:TextBox ID="txtcity" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnsend" runat="server" Height="26px" Text="Send" OnClick="btnsend_click" />
    
    </div>
    </form>
</body>
</html>
