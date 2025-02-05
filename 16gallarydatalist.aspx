<%@ Page Language="C#" AutoEventWireup="true" CodeFile="16gallarydatalist.aspx.cs" Inherits="website_16gallarydatalist" %>

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
    
        <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="txtpronm" runat="server"></asp:TextBox>
    </tr>
        <tr><td>
   
            <asp:Label ID="Label2" runat="server" Text="Product Image:"></asp:Label></td>
            <td>
            <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
        <tr>
       
        <asp:Button ID="btnsave" runat="server" Text="Save Product" OnClick="btnsave_click" />
            </td></tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
       <Columns>
           <asp:CommandField ShowDeleteButton="True" />
           <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="false" ReadOnly="True" SortExpression="Id" />
           <asp:BoundField DataField="pro_name" HeaderText="pro_name" SortExpression="pro_name" />
           <asp:TemplateField HeaderText="Image">
               <ItemTemplate>
                   <asp:Image ID="image1" runat="server" ImageUrl='<%#"~images/"+Eval("pro_imgpath")%>' Height="150" Width="200" />

               </ItemTemplate>
               </asp:TemplateField></Columns>
            </asp:GridView>
        
             
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\kriyanshi\website\2129.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="select * from [product]" DeleteCommand="delete from product where id=@id">

        </asp:SqlDataSource>
        
             </div>
        
    </form>
</body>
</html>
