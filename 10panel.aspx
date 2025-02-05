<%@ Page Language="C#" AutoEventWireup="true" CodeFile="10panel.aspx.cs" Inherits="_10panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btnshow" runat="server" OnClick="btnshow_click" Text="Show Login Form" /><br />
        <asp:Panel ID="pnllogin" runat="server" BackColor="#2F799D" ForeColor="#FF66FF" GroupingText="Login Form"><br /><br />
      UserName:
       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br /><br />
      Password:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
