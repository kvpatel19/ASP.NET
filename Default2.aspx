<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id"/>
                <asp:BoundField DataField="name" HeaderText="name"/>
                <asp:BoundField DataField="city" HeaderText="city"/>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
