using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _29login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_click(object sender, EventArgs e)
    {
        sqlConnection con = new sqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\kriyanshi\\Unit-3\\App_Data\\Database.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from login where username=@username and password=@password",con);
        cmd.Parameters.AddWithValue("@username", txtusername.Text);
        cmd.Parameters.AddWithValue("@password", txtpassword.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.open();
        int i = cmd.ExecuteNonQuery();
        con.close();
        if(dt.Rows.Count>0)
        {
            Session["id"] = txtusername.Text;
            Response.Redirect("Home.aspx");
            Session.RemoveAll();
        }
        else
        {

        }
    }
}