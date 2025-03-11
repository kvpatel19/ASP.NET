<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prg16.aspx.cs" Inherits="prg16" %>

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
        <td><asp:Label ID="Label1" runat="server" Text="Product Name : "></asp:Label>
    </td>
        <td><asp:TextBox ID="txtPronm" runat="server"></asp:TextBox>
            </td>
            </tr>
        <tr>
       <td><asp:Label ID="Label2" runat="server" Text="Product Image : "></asp:Label>
    </td>
        <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
        <tr>
            <td>
       <asp:Button ID="btnSave" runat="server" Text="Save Product" OnClick="btnSave_Click" /></td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="pro_name" HeaderText="pro_name" SortExpression="pro_name" />
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/images/" + Eval("Pro_imgPath") %>' Height="150" Width="200" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]" DeleteCommand="delete from product where id=@id"></asp:SqlDataSource>
    
    </div>
        
    </form>
</body>
</html>
