using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _9dropdownlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    

    protected void btncount_click(object sender, EventArgs e)
    {
        lbldisplay.Text = "The Count=" + ddlcity.Items.Count.ToString();
    }


    protected void btntext_click(object sender, EventArgs e)
    {
        lbldisplay.Text = "Selected Text =" + ddlcity.SelectedItem.Text;
    }


    protected void btnindex_click(object sender, EventArgs e)
    {
        lbldisplay.Text = "Index Value =" + ddlcity.SelectedIndex.ToString();
    }


    protected void btnclear_click(object sender, EventArgs e)
    {
        ddlcity.Items.Clear();
        lbldisplay.Text = "ListBox cleared ";    
    }


    protected void btnadd_click(object sender, EventArgs e)
    {
        ddlcity.Items.Add("Patan");
        lbldisplay.Text = "Item Added ";
    }


    protected void btnremove_click(object sender, EventArgs e)
    {
        ddlcity.Items.Remove("Surat");
        lbldisplay.Text = "Item Removed";
    }
}