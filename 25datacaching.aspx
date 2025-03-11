<%@ Page Language="C#" AutoEventWireup="true" CodeFile="25datacaching.aspx.cs" Inherits="_25datacaching" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lbltime" runat="server"></asp:Label><br /><br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="false" ReadOnly="true" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name"  SortExpression="name" />
                 <asp:BoundField DataField="email" HeaderText="email"  SortExpression="email" />
                 <asp:BoundField DataField="comment" HeaderText="comment"  SortExpression="comment" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%ConnectionString:ConnectionString %>" EnableCaching="True" SelectCommand="select * from [feedback]" CacheDuration="30">

        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
