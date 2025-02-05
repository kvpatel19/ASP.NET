using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _10panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pnllogin.Visible = false;
    }


    protected void btnshow_click(object sender, EventArgs e)
    {
        if(btnshow.Text.Equals("Show Login Form"))
        {
            pnllogin.Visible = true;
            btnshow.Text = "Hide Login Form";
        }
        else if(btnshow.Text.Equals("Hide Login Form"))
        {
            pnllogin.Visible = false;
            btnshow.Text = "Show Login Form";
        }
    }
}