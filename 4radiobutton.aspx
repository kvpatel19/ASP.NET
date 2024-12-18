<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4radiobutton.aspx.cs" Inherits="_4radiobutton" %>

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
            <td>Select Language:</td>
        </tr>
        <tr>
            <td>&nbsp:&nbsp:</td>
        </tr>
        <tr>
            <td>
        <asp:RadioButton ID="rdjava" runat="server" GroupName="lang" Text="Java" />
                &nbsp;
        <asp:RadioButton ID="rdphp" runat="server" GroupName="lang" Text="PHP" />
                &nbsp;
        <asp:RadioButton ID="rdpython" runat="server" GroupName="lang" Text="Python" />
                &nbsp;
                </td>
            </tr>
        <tr>
            <td>
                <asp:Button ID="btnselect" runat="server" Text="Select" OnClick="btnselect_Click" />
                </td>
            </tr>
        <tr>
            <td>

        <asp:Label ID="lbldisplay" runat="server" Text="Label"></asp:Label>
        </td>
            </tr>
        </table>
        </div>

    </form>
</body>
</html>
