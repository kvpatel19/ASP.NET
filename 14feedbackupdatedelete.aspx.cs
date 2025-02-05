using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _14feedbackupdatedelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btninsert_click(object sender, EventArgs e)
    {
        string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\logindemo.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string query="insert into feedback(name,email,comment)values('"+txtnm.Text+"','"+txtemail.Text+"','"+txtcomment.Text+"')";
        SqlCommand cmd = new SqlCommand(query, con);
        int ans = cmd.ExecuteNonQuery();
        lblmsg.Text = "Record Inserted..";
        Response.Redirect("14feedbackupdatedelete");
    }
}