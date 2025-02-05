<%@ Page Language="C#" AutoEventWireup="true" CodeFile="15registrationform.aspx.cs" Inherits="website_15registrationform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Registration Form</h2>
    
        <asp:Label ID="Label1" runat="server" Text="Full Name:"></asp:Label>
        <asp:TextBox ID="txtfnm" runat="server" MaxLength="100"></asp:TextBox>
    
    <br /><br />
            <asp:Label ID="Label2" runat="server" AssociatedControlID="txtemail" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtemail" runat="server" MaxLength="100"></asp:TextBox>
            
        <br /><br />
            <asp:Label ID="Label3" runat="server" AssociatedControlID="txtpassword" Text="Password"></asp:Label>
            <asp:TextBox ID="txtpassword" runat="server" MaxLength="50" TextMode="Password"></asp:TextBox>
        <br /><br />
           
       <br />
            <asp:Label ID="Label5" runat="server" Text="Select Your Hobbies:"></asp:Label><br />
            <asp:CheckBoxList ID="chkhobbies" runat="server" RepeatColumns="2">
                <asp:ListItem>Reading</asp:ListItem>
                <asp:ListItem>Travelling</asp:ListItem>
                <asp:ListItem>Cooking</asp:ListItem>
                <asp:ListItem>Misic</asp:ListItem>
            </asp:CheckBoxList>
        <br /><br />
            <asp:Label ID="Label6" runat="server" AssociatedControlID="rbtngender" Text="Gender"></asp:Label>
            <asp:RadioButtonList ID="rbtngender" runat="server">
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:RadioButtonList>
        <br /><br />
            <asp:Label ID="Label7" runat="server" AssociatedControlID="ddlcountry" Text="Country"></asp:Label>
            <asp:DropDownList ID="ddlcountry" runat="server">
                <asp:ListItem></asp:ListItem>
                
        <asp:ListItem Value="0">Select Country</asp:ListItem>
             <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
            </asp:DropDownList>
        <br /><br />
        <asp:Button ID="btninsert" runat="server" Text="Insert" OnClick="btninsert_click" />
        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label><br /><br />
       </div>
    </form>
</body>
</html>