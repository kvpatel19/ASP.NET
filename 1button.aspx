<%@ Page Language="C#" AutoEventWireup="true" CodeFile="1button.aspx.cs" Inherits="_1button" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="c#" runat="server">
        void b1_click(Object sender,EventArgs E)
        {
            lblmsg.Text = "Welcome to asp.net page";
        }
    </script> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
    
    </div>
        
          <asp:Button ID="b1"  onClick="b1_click" runat="server" Text="Click Me" Width="108px" />
           </form>
</body>
</html>
