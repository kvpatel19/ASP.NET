<%@ Page Language="C#" AutoEventWireup="true" CodeFile="12fileupload.aspx.cs" Inherits="_12fileupload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>File Upload</h3>
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
         <br /> <br />
       
            <asp:Button ID="btnsave" runat="server" OnClick="btnsave_click" Text="Save" Width="85px" />
        
            <asp:Label ID="fileuploadstatus" runat="server" Text="Label"></asp:Label>

        <h3>Upload Image:</h3>
            <asp:Image ID="imguploaded" runat="server" Width="300px" />
        </div>
    </form>
</body>
</html>
