<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prg17.aspx.cs" Inherits="prg17" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Gallery Page</h1>

    </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" BorderColor="#cc0099" BorderWidth="5px" RepeatColumns="3">
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Product:
                <asp:Label ID="pro_nameLabel" runat="server" Text='<%# Eval("pro_name") %>' />
                <br />
                Image:
                <br /><br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/images/"+ Eval("pro_imgpath") %>' Height="150" Width="200" BorderColor="#ffcccc" BorderWidth="30px" />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    </form>
</body>
</html>

