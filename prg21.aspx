<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prg21.aspx.cs" Inherits="prg21" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
    
    </div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div align="left">
                    student no:<%#Eval("studid") %><br />
                    studentname:<%#Eval("studname") %><br />
                    gender:<%#Eval("gender") %><br />
                </div>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <div align="right">
                    student no:<%#Eval("studid") %><br />
                    studentname:<%#Eval("studname") %><br />
                    gender:<%#Eval("gender") %><br />
                </div>
            </AlternatingItemTemplate>
            <SeparatorTemplate>
                <br style="background-color:#00ff00" size="20" />
            </SeparatorTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
