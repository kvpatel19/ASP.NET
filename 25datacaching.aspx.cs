using System;

public partial class _25datacaching : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbltime.Text = string.Format("page posted at:{0}", DateTime.Now.ToLongTimeString());
    }
}