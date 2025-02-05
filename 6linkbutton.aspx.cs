using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _6linkbutton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lbNext_Click(object sender, EventArgs e)
    {
        Response.Redirect("6Imtetxt.aspx");
    }
}