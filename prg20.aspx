<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prg20.aspx.cs" Inherits="prg20" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
        <asp:Label ID="lblname" runat="server" Text="Stud Name"></asp:Label>
        </td>
   <td>
        <asp:DropDownList ID="ddlname" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlname_SelectedIndexChanged">
        </asp:DropDownList>
       </td>
                </tr>
            <tr>
                <td>
        <asp:Label ID="lblid" runat="server" Text="Stud ID"></asp:Label>
                    </td>
                <td>
        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                <td>
        <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
                    </td>
                <td>
        <asp:TextBox ID="txtgender" runat="server"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                <td>
        <asp:Label ID="lblage" runat="server" Text="Age"></asp:Label>
                    </td>
                <td>
        <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                <td>
        <asp:Label ID="lblcity" runat="server" Text="City"></asp:Label>
                    </td>
                <td>
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                    </td>
                </tr>
            <tr>
                <td>
            <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
                    </td>
                    <td>
            <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
        </td>
            </tr>
            </table>
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        </div>
    </form>
</body>
</html>
