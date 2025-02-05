<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5checkboxlist.aspx.cs" Inherits="_5checkboxlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="cbllang">
    
        <asp:CheckBox ID="chkall" runat="server" AutoPostBack="True" OnCheckedChanged="chkall_CheckedChanged" Text="Select All" />
        <asp:CheckBoxList ID="cbllang" runat="server">
            <asp:ListItem>PHP</asp:ListItem>
            <asp:ListItem>JAVA</asp:ListItem>
            <asp:ListItem>PYTHON</asp:ListItem>
            <asp:ListItem>ASP.NET</asp:ListItem>
        </asp:CheckBoxList>
    
    </div>
        <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
        <p>
            <asp:Label ID="lbllang" runat="server" EnableViewState="False"></asp:Label>
        </p>
    </form>
</body>
</html>
