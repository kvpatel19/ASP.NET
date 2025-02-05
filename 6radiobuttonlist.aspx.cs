using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _6radiobuttonlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack==false)
        {
            ArrayList a = new ArrayList();
            a.Add("Red");
            a.Add("Blue");
            a.Add("Green");
            RadioButtonList1.DataSource = a;
            RadioButtonList1.DataBind();
        }
    }
}