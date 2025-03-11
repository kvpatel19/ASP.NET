using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _28querystring : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsend_click(object sender, EventArgs e)
    {
        Response.Redirect("28_1nextpage.aspx?name=" + txtname.Text + "&city=" + txtcity.Text);
    }
}