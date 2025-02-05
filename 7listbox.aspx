<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7listbox.aspx.cs" Inherits="_7listbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script Language="c#" runat="server">
        void Calculate(object sender,EventArgs e)
        {
            if(lbstore.SelectedIndex >- 1)
            {
                int i = lbstore.SelectedIndex;
                lblcost.Text = "You have choosen " + lbstore.SelectedItem.Value + "  and its cost is Rs.";
                if (i == 0)
                    lblcost.Text += "10";
                else if (i == 1)
                    lblcost.Text += "20";
                else if (i == 2)
                    lblcost.Text += "30";
                else if (i == 3)
                    lblcost.Text += "40";
            }
        }
        void display(object sender,EventArgs e)
        {
            int i = lbstore.SelectedIndex;
            if(i==0)
            {
                img.ImageUrl = "thumsup.jpg";
                img.AlternateText = "Thumsup";
            }
            else if(i==1)
            {
                img.ImageUrl = "sprit.jpg";
                img.AlternateText = "sprit";
            }
            else if(i==2)
            {
                img.ImageUrl = "coca.jpg";
                img.AlternateText = "coca";
            }
            else if(i==3)
            {
                img.ImageUrl = "dew.jpg";
                img.AlternateText = "dew";
            }
        }
        void add(object sender,EventArgs e)
        {
            int tot = 0;
            int qty = System.Int32.Parse(txtqty.Text);
            switch(lbstore.SelectedIndex)
            {
                case 0:
                    tot = qty * 10;
                    break;
                case 1:
                    tot = qty * 20;
                    break;
                case 2:
                    tot = qty * 30;
                    break;
                case 3:
                    tot = qty * 40;
                    break;
            }
            btntotal.Text = "You have to pay a total of RS: " + tot;
        }

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF6666" Text="Following are the items available with us"></asp:Label>
    <br><br>
    </div>
        <asp:ListBox ID="lbstore" runat="server" AutoPostBack="true" Width="200px" OnSelectedIndexChanged="display">
            <asp:ListItem>Thumsup</asp:ListItem>
            <asp:ListItem>Sprit</asp:ListItem>
            <asp:ListItem>Coca</asp:ListItem>
            <asp:ListItem>Dew</asp:ListItem>
        </asp:ListBox>
        <asp:Image ID="img" runat="server" Height="150px" Width="125px" />
        <asp:Button ID="btnfind" runat="server" Text="Find Cost" OnClick="Calculate" /> 
        <br><br>
       
            <asp:Label ID="lblcost" runat="server" Text="0" Width="350px"></asp:Label>
        <br><br>
           <asp:Label ID="lblqty" runat="server" Text="Enter the Quantity:"></asp:Label>
        <asp:TextBox ID="txtqty" runat="server" Width="30px">1</asp:TextBox>
        <br><br>
        <br><br>
        
            <asp:Button ID="btnbuy" runat="server" Text="Buy this " OnClick="add" />
        <br><br>
            <asp:Label ID="btntotal" runat="server" ></asp:Label>
        </div>
        
    </form>
</body>
</html>
