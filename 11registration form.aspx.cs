using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _11registration_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_click(object sender, EventArgs e)
    {
        if (chkreading.Checked || chktravelling.Checked || chkcooking.Checked || chkmusic.Checked)
        {
            Response.Write("<b> Data Added");
            ClearFormControls();
        }
        else
        {
            lblmessage.Text = "Please Select at least one Hobby..";
            lblmessage.ForeColor = System.Drawing.Color.Red;
        }
    }
    private void ClearFormControls()
    {
        txtfullname.Text = string.Empty;
        txtemail.Text = string.Empty;
        txtpassword.Text = string.Empty;
        txtconfirmpassword.Text = string.Empty;


        chkreading.Checked = false;
        chktravelling.Checked = false;
        chkcooking.Checked = false;
        chkmusic.Checked = false;

        rbtngender.ClearSelection();
        ddlcountry.SelectedIndex = 0;
    }
}