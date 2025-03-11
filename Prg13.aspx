<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prg13.aspx.cs" Inherits="Prg13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server" Font-Size="20pt" Text="Login"></asp:Label><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Name : "></asp:Label>
        <asp:TextBox ID="txtnm" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label>
        <asp:TextBox ID="txtpsw" runat="server" TextMode="Password">txtpsw</asp:TextBox><br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />&nbsp;
        <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" /><br /><br />
        <asp:Label ID="lblmsg" runat="server"></asp:Label><br /><br /><br />

    </div>
    </form>
</body>
</html>
