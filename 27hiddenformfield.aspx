<%@ Page Language="C#" AutoEventWireup="true" CodeFile="27hiddenformfield.aspx.cs" Inherits="_27hiddenformfield" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    
       No: <asp:TextBox ID="txt1" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnstore" runat="server" Text="Store" OnClick="btnstore_click" />
        <asp:Button ID="btntransfer" runat="server" Text="Transfer" OnClick="btnttransfer_click" Style="height:26px" />
        <asp:Button ID="btnhiddenfield" runat="server" Text="Hidden Field" OnClick="btnhiddenfield_click" />
        &nbsp;<br/>
        
           No= <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
            <asp:HiddenField ID="HiddenField1" runat="server" Value="This is the value of hidden field" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
       </div>
    </form>
</body>
</html>
