using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Prg29 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\kriyanshi\\Unit-3\\App_Data\\Database.mdf;Integrated Security=True;Connect Timeout=30");

SqlCommand cmd = new SqlCommand("select * from login where username = @username and password = @password",con);
        cmd.Parameters.AddWithValue("@username",txtUsername.Text);
        cmd.Parameters.AddWithValue("@password",txtPassword.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (dt.Rows.Count > 0)
        {
            Session["Id"] = txtUsername.Text;
            Response.Redirect("Home.aspx");
            Session.RemoveAll();
        }
        else
        {
            lblMessage.Text = "Username and Password is incorrect";
        lblMessage.ForeColor = System.Drawing.Color.Red;
        }

    }
}