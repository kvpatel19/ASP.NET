using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prg20 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security = True");
    static SqlDataAdapter da;
    static DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            LoadFreshData();
        }
    }
    void LoadFreshData()
    {
        da = new SqlDataAdapter("select * from Student", conn);
        dt = new DataTable();
        da.Fill(dt);
        ddlname.Items.Clear();
        if(dt.Rows.Count>0)
        {
            for(int i=0; i<dt.Rows.Count; i++)
            {
                ddlname.Items.Add(dt.Rows[i]["studname"].ToString());
            }
            ddlname.SelectedIndex = 0;
            txtid.Text = dt.Rows[0]["studid"].ToString();
            txtgender.Text = dt.Rows[0]["gender"].ToString();
            txtage.Text = dt.Rows[0]["age"].ToString();
            txtcity.Text = dt.Rows[0]["city"].ToString();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("No Record Found");
            txtid.Text = "";
            txtgender.Text = "";
            txtage.Text = "";
            txtcity.Text = "";
            btnupdate.Enabled = false;
            btndelete.Enabled = false;
            GridView1.Visible = false;
        }
    }
 protected void btnupdate_Click(object sender, EventArgs e)
    {
        String filter = "studid = " + txtid.Text;
        DataRow[] dr = dt.Select(filter);
        if(dr.Count()>0)
        {
            dr[0].BeginEdit();
            dr[0]["age"] = Convert.ToInt32(txtage.Text);
            dr[0]["city"] = txtcity.Text;
            dr[0].EndEdit();
        }
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        da.Update(dr);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }


    protected void btndelete_Click(object sender, EventArgs e)
    {
        String filter = "studname ='" + ddlname.SelectedValue + "'";
        DataRow[] dr = dt.Select(filter);
        dr[0].Delete();
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        da.Update(dr);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }


    protected void ddlname_SelectedIndexChanged(object sender, EventArgs e)
    {
        String filter = "studname =  ' " + ddlname.SelectedValue + " ' ";
        DataRow[] dr = dt.Select(filter);
        if(dr.Count()>0)
        {
            txtid.Text = dr[0]["studid"].ToString();
            txtgender.Text = dr[0]["gender"].ToString();
            txtage.Text = dr[0]["age"].ToString();
            txtcity.Text = dr[0]["city"].ToString();
        }
    }
}