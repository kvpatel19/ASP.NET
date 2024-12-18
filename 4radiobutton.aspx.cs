using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _4radiobutton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnselect_Click(object sender, EventArgs e)
    {
        if(rdjava.Checked==true)
        {
            lbldisplay.Text = "you selected Java language";
        }
       else if (rdphp.Checked == true)
        {
            lbldisplay.Text = "you selected PHP language";
        }
      else if (rdpython.Checked == true)
        {
            lbldisplay.Text = "you selected Python language";
        }
    }
}