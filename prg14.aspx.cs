using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prg14 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string query = "insert into feedback(name,email,comment)values(' " + txtnm.Text + " ', ' " + txtEmail.Text + " ', ' " + txtComment.Text + " ')";
        SqlCommand cmd = new SqlCommand(query,con);
        int ans = cmd.ExecuteNonQuery();
        lblmsg.Text = "Record Inserted...";
        GridView1.DataBind();
    }
}