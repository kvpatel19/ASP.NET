<%@ Page Language="C#" AutoEventWireup="true" CodeFile="26cookie.aspx.cs" Inherits="_26cookie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btncreate" runat="server" Text="Create Cokie" OnClick="btncreate_click" />
        <asp:TextBox ID="txtcreatecookie" runat="server"></asp:TextBox><br />
    
    
        
            <asp:Button ID="btnretrieve" runat="server" Text="Retrieve Cookie" OnClick="btnretrieve_click" />
            <asp:TextBox ID="txtretrievecookie" runat="server"></asp:TextBox><br />
        
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
