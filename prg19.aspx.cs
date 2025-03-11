using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class Prg19 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(x);
        SqlDataAdapter da = new SqlDataAdapter("select * from Student", conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(x);
        SqlDataAdapter da = new SqlDataAdapter("select * from Student", conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataRow dr = dt.NewRow();
        dr["studid"] = txtstudid.Text;
        dr["studname"] = txtName.Text;
        if (rdbmale.Checked == true)
            dr["gender"] = "Male";
        else
            dr["gender"] = "Female";
        dr["age"] = txtAge.Text;
        dr["city"] = ddlCity.SelectedValue;
        dt.Rows.Add(dr);
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        da.Update(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Response.Write("Inserted Succesfully");
    }
}