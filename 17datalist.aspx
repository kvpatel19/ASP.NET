<%@ Page Language="C#" AutoEventWireup="true" CodeFile="17datalist.aspx.cs" Inherits="_17datalist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Gallary Page</h1>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BorderColor="#cc0099" BorderWidth="5px" RepeatColumns="3">
<ItemTemplate>
    product:
    <asp:Label ID="pro_namelabel" runat="server" Text='<% #Eval("pro_name")%>' />
    <br />
    Image:
    <br /><br />
    <asp:Image ID="image1" runat="server" ImageUrl='<%#"~images/"+Eval("pro_imgpath") %>' Height="150" Width="200" BorderColor="#ffcccc" BorderWidth="3px" />

</ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:2129ConnectionString %>"  SelectCommand="select [pro_name],[pro_imgpath]from[product]"></asp:SqlDataSource>
    </form>
</body>
</html>
