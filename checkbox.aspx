<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkbox.aspx.cs" Inherits="website_checkbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <h1>Select Course</h1>
        <asp:CheckBox ID="chkbca" runat="server" Text="BCA" /><br />
        <asp:CheckBox ID="chkba" runat="server"  Text="BA" /><br />
        <asp:CheckBox ID="chkbba" runat="server" Text="BBA" /><br /><br />
        <asp:Button ID="btnclick" runat="server" Text="Click Here" OnClick="btnclick_click" /><br /><br />
        Course Selected:<asp:Label ID="lblcourse" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
