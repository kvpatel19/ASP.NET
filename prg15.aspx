<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prg15.aspx.cs" Inherits="prg15" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="GridView">
        <h2>Registration Form</h2>
        <asp:Label ID="Label3" runat="server" Text="Full Name : "></asp:Label>
        <asp:TextBox ID="txtFullName" runat="server" MaxLength="100"></asp:TextBox>
    
   
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName" ErrorMessage="Full Name is required!" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        
            <asp:Label ID="Label1" runat="server" AssociatedControlID="txtEmail" Text="Email"></asp:Label>
        
        <asp:TextBox ID="txtEmail" runat="server" MaxLength="100"></asp:TextBox>
       
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required!" ForeColor="Red"></asp:RequiredFieldValidator>
       
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format!" ForeColor="Red" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"></asp:RegularExpressionValidator><br /><br />
       
            <asp:Label ID="Label2" runat="server" AssociatedControlID="txtPassword" Text="Password"></asp:Label>
       
            <asp:TextBox ID="txtPassword" runat="server" MaxLength="50" TextMode="Password"></asp:TextBox>
       
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required!" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
       
        <asp:Label ID="Label4" runat="server" AssociatedControlID="txtConfirmPassword" Text="Confirm Password"></asp:Label>
        <asp:TextBox ID="txtConfirmPassword" runat="server" MaxLength="50" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password do not match!" ForeColor="Red"></asp:CompareValidator><br /><br />
      
            <br />
        <asp:Label ID="Label5" runat="server" AssociatedControlID="chkHobbies" Text="Hobbies :"></asp:Label>
        <asp:CheckBoxList ID="chkHobbies" runat="server" RepeatColumns="2">
            <asp:ListItem>Reading</asp:ListItem>
            <asp:ListItem>Travelling</asp:ListItem>
            <asp:ListItem>Cooking</asp:ListItem>
            <asp:ListItem>Music</asp:ListItem>
        </asp:CheckBoxList>
            <br /><br />
        
            <asp:Label runat="server" AssociatedControlID="rbtnGender" Text="Gender"></asp:Label>
            <asp:RadioButtonList ID="rbtnGender" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem Value="Other"></asp:ListItem>
            </asp:RadioButtonList>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rbtnGender" ErrorMessage="Please select a gender!" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        
            <asp:Label ID="Label6" runat="server" AssociatedControlID="ddlCountry" Text="Country :"></asp:Label>
            <asp:DropDownList ID="ddlCountry" runat="server">
                <asp:ListItem Value="0">Select Country :</asp:ListItem>
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
            </asp:DropDownList>
      
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlCountry" ErrorMessage="Please select a country!" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator><br /><br />
        
            <asp:Button ID="btnInsert" runat="server" Text="Register" OnClick="btnInsert_Click" /><br /><br />
        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Full_Name" HeaderText="Full_Name" SortExpression="Full_Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Confirm_Password" HeaderText="Confirm_Password" SortExpression="Confirm_Password" />
                <asp:BoundField DataField="Hobbies" HeaderText="Hobbies" SortExpression="Hobbies" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="delete from UserRegistration where id=@id" SelectCommand="SELECT * FROM [UserRegistration]" UpdateCommand="update UserRegistration set Full_Name=@Full_Name,Email=@Email,Password=@Password,Confirm_Password=@Confirm_Password,Hobbies=@Hobbies,Gender=@Gender,Country=@Country where id=@id"></asp:SqlDataSource>
        <br /><br />
       </div>
    </form>
</body>
</html>
