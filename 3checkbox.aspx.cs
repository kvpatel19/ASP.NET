using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class website_checkbox : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void chkba_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void btnclick_click(object sender, EventArgs e)
    {
        var message = " ";
        if (chkbca.Checked)
        {
            message += chkbca.Text + " ";
        }
        if (chkba.Checked)
        {
            message += chkba.Text + " ";
        }
        if (chkbba.Checked)
        {
            message += chkbba.Text + " ";
        }
        lblcourse.Text = message;
    }
}