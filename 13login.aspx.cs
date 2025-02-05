using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class website_13login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_click(object sender, EventArgs e)
    {
        string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\logindemo.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string str = "insert into userlogin values(@fnm,@psw)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@fnm", txtnm.Text);
        cmd.Parameters.AddWithValue("@psw", txtpsw.Text);
        int ans = cmd.ExecuteNonQuery();
        if(ans>0)
        {
            lblmsg.Text = "record inserted";
        }
        else
        {
            lblmsg.Text = "problem occur";
        }
    }


    protected void btnreset_click(object sender, EventArgs e)
    {
        txtnm.Text = "";
        txtpsw.Text = "";
    }
}