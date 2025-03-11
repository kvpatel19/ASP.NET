<%@ Page Language="C#" AutoEventWireup="true" CodeFile="23skinfile.aspx.cs" Inherits="_23skinfile" StylesheetTheme="Theme1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
        <asp:Label ID="Label1" runat="server" ></asp:Label>
        
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br /><br />
    
    
        
            <asp:Button ID="Button1" runat="server" Text="Button" SkinID="b1" />
            <asp:Button ID="Button2" runat="server" Text="Button" SkinID="b2" />
        </div>
    </form>
</body>
</html>
