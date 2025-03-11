using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _27hiddenformfield : System.Web.UI.Page
{
    int no;
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnstore_click(object sender, EventArgs e)
    {
        ViewState["no"] = txt1.Text;
        HiddenField1.Value = txt1.Text;
    }


    protected void btnttransfer_click(object sender, EventArgs e)
    {
        txt2.Text = Convert.ToString(no);
        txt2.Text = Convert.ToString(ViewState["no"]);
        txt2.Text = HiddenField1.Value;
    }


    protected void btnhiddenfield_click(object sender, EventArgs e)
    {
        Label1.Text = HiddenField1.Value;
    }
}