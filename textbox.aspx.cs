using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class website_textbox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtname_text_changed1(object sender, EventArgs e)
    {
        lblname.Text = "Name: "+txtname.Text;
    }
}