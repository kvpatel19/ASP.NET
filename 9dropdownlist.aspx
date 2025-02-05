<%@ Page Language="C#" AutoEventWireup="true" CodeFile="9dropdownlist.aspx.cs" Inherits="_9dropdownlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="ddlcity" runat="server">
            <asp:ListItem>Rajkot</asp:ListItem>
            <asp:ListItem>Surat</asp:ListItem>
            <asp:ListItem>Jamnagar</asp:ListItem>
            <asp:ListItem>Ahmedabad</asp:ListItem>
            <asp:ListItem>Baroda</asp:ListItem>
            <asp:ListItem>Bhavnagar</asp:ListItem>
        </asp:DropDownList><br /><br />

        <asp:Button ID="btncount" runat="server" Text="Count" onClick= "btncount_click "/>&nbsp;
        
        <asp:Button ID="btntext" runat="server" onClick="btntext_click" Text="Selected Text" />&nbsp;
        
        <asp:Button ID="btnindex" runat="server" onClick="btnindex_click" Text="Index" />&nbsp;
        
        <asp:Button ID="btnclear" runat="server" onClick="btnclear_click" Text="Clear" />&nbsp;
       
        <asp:Button ID="btnadd" runat="server" onClick="btnadd_click" Text="Add" />&nbsp;
        
        <asp:Button ID="btnremove" runat="server" onClick="btnremove_click" Text="Remove" />&nbsp;
        <br /><br />
        
        <asp:Label ID="lbldisplay" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
