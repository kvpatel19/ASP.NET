<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prg19.aspx.cs" Inherits="Prg19" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
        <tr><td>
        <asp:Label ID="lblStudid" runat="server" Text="Student ID"></asp:Label></td>
        <td><asp:TextBox ID="txtstudid" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
        <td><asp:Label ID="lblName" runat="server" Text="Name"></asp:Label></td>
            <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label></td>
        <td><asp:RadioButton ID="rdbfemale" runat="server" Text="Female" />
        <asp:RadioButton ID="rdbmale" runat="server" Text="Male" />
        </td></tr>
        <tr><td>
            <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label></td>
            <td><asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        </td></tr>
        <tr><td>
        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label></td>
        <td>
        <asp:DropDownList ID="ddlCity" runat="server">
            <asp:ListItem>Rajkot</asp:ListItem>
            <asp:ListItem>Surat</asp:ListItem>
        </asp:DropDownList>
        </td></tr>
        <tr><td>
            <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
        </td></tr>
        </table>
        
        <br /><br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
     </div>
     </form>
</body>
</html>
