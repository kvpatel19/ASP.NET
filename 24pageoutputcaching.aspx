<%@ Page Language="C#" AutoEventWireup="true" CodeFile="24pageoutputcaching.aspx.cs" Inherits="_24pageoutputcaching" %>
<%@ OutputCache Duration="15" VaryByParam="none" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
