using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _26cookie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btncreate_click(object sender, EventArgs e)
    {
        Response.Cookies["name"].Value = txtcreatecookie.Text;
        Response.Cookies["name"].Expires = DateTime.Now.AddSeconds(10);
        Label1.Text = "Cookie created";
        txtcreatecookie.Text = " ";
    }


    protected void btnretrieve_click(object sender, EventArgs e)
    {
        if(Request.Cookies["name"]==null)
        {
            txtretrievecookie.Text = "no cookie found";
            Label1.Text = "no cookie found";
        }
        else
        {
            txtretrievecookie.Text = Request.Cookies["name"].Value;
            Label1.Text = "Retrieve Cookie";
        }
    }
}