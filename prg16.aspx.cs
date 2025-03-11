using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prg16 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string conn_string = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(conn_string);
        con.Open();
        string path = "~/images/" + FileUpload1.FileName;
        string query = "insert into Product values(@Pro_name,@Pro_imgPath)";
        FileUpload1.SaveAs(Server.MapPath("images") + "/" + FileUpload1.FileName);
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@Pro_name", txtPronm.Text);
        cmd.Parameters.AddWithValue("@Pro_imgPath", FileUpload1.FileName);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
    }
}