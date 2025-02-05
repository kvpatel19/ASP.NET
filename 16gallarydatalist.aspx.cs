using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class website_16gallarydatalist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsave_click(object sender, EventArgs e)
    {
        String conn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\kriyanshi\\website\\2129.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        string path = "~/images/" + FileUpload1.FileName;
        string query="insert into product values(@pro_name,@pro_imgpath)";
        FileUpload1.SaveAs(Server.MapPath("images") + "/" + FileUpload1.FileName);
        SqlCommand cmd=new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@pro_name", txtpronm.Text);
        cmd.Parameters.AddWithValue("@pro_imgpath", FileUpload1.FileName);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
    }
}