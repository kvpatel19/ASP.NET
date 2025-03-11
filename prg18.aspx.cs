using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class prg18 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
        conn.Open();
        string sql = "select * from Feedback";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                Response.Write("<br/><b>Name:</b>" + dr[0].ToString());
                Response.Write("<br/><b>Email:</b>" + dr["email"].ToString());
                Response.Write("<br/><b>Comment:</b>" + dr["comment"].ToString());
            }
        }
        dr.Close();
        conn.Close();

    }
}