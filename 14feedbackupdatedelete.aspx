<%@ Page Language="C#" AutoEventWireup="true" CodeFile="14feedbackupdatedelete.aspx.cs" Inherits="_14feedbackupdatedelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Feedback Form</h1>
        <Table>
            <tr>
                <td>
        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
    <br /></td>
                <tr><td>
   
        
            <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label></td>
                    <td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        <br /></td></tr><tr>
                            <td>
       
            
        
            <asp:Label ID="Label3" runat="server" Text="Comment:"></asp:Label></td>
                            <td>
            <asp:TextBox ID="txtcomment" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br /></td>
                            </tr><br />
                </Table>
            <asp:Button ID="btninsert" runat="server" Text="Insert" OnClick="btninsert_click" />
        <br />
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        <br />
        <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
           <Columns>
               <asp:CommandField ShowDeleteButton="true" ShowEditButton="true" />
               
               <asp:BoundField DataField="Name" HeaderText="Name"  SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email"  SortExpression="Email" />
                <asp:BoundField DataField="Comment" HeaderText="Comment"  SortExpression="Comment" />
               </Columns>
                 </asp:GridView>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="delete from feedback where id=@id" SelectCommand="SELECT * FROM [feedback]" UpdateCommand="update feedback set name=@name,email=@email,comment=@comment where id=@id"></asp:SqlDataSource>
       
       </div>
    </form>
</body>
</html>
