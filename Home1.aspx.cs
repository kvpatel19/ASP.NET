using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["Id"].ToString();
    }

    protected void Button1_click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Prg29.aspx");
    }
}