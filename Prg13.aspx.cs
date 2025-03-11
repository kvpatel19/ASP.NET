using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Prg13 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string str = "insert into UserLogin values(@fnm,@psw)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@fnm", txtnm.Text);
        cmd.Parameters.AddWithValue("@psw", txtpsw.Text);
        int ans = cmd.ExecuteNonQuery();
        if (ans > 0)
        {
            lblmsg.Text = "Record Inserted...";
        }
        else
        {
            lblmsg.Text = "Problem Occurs";
        }
    }


    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtnm.Text = " ";
        txtpsw.Text = " ";

    }
}