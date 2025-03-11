<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prg14.aspx.cs" Inherits="prg14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Feedback Form</h1>
        <table>
            <tr>
        <td>
        <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label></td>
                <td>
        <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
                    </td>
        </tr>
            <tr>
                <td>
            <asp:Label ID="Label2" runat="server" Text="Email : "></asp:Label>
                    </td>
                <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
                    </td>
                </tr>
            <tr>
                <td>
        
        <asp:Label ID="Label3" runat="server" Text="Comment : "></asp:Label>
                    </td>
                <td>
        <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine"></asp:TextBox><br />
                    </td>
                </tr><br />
            </table>
        
            <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" /><br />
        
        <asp:Label ID="lblmsg" runat="server"></asp:Label><br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="comment" HeaderText="comment" SortExpression="comment" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [feedback]" DeleteCommand="delete from feedback where id=@id" UpdateCommand="update feedback set name=@name,email=@email,comment=@comment where id=@id"></asp:SqlDataSource>
    </div>
        </form>
</body>
</html>
