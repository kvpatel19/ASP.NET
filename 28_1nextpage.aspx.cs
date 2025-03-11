using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _28_1nextpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Name=" + Request.QueryString["name"].ToString();
        Label2.Text = "city=" + Request.QueryString["city"].ToString();
    }
}