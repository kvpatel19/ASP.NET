<%@ Page Language="C#" AutoEventWireup="true" CodeFile="2textbox.aspx.cs" Inherits="website_textbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtname" runat="server" AutoPostBack="true" OnTextChanged="txtname_text_changed1" Height="25px"></asp:TextBox>
        </p>
    </form>
</body>
</html>
