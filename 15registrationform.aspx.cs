using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class website_15registrationform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btninsert_click(object sender, EventArgs e)
    {
        string chkselect = "";
        for(int i=0;i<chkhobbies.Items.Count;i++)
        {
            if(chkhobbies.Items[i].Selected)
            {
                if(chkselect=="")
                {
                    chkselect = chkhobbies.Items[i].Text;
                }
                else
                {
                    chkselect+=" "+chkhobbies.Items[i].Text;
                }
            }
        }
        string constr = "Data Source=pc-14;Initial Catalog=2129;Integrated Security=True;Pooling=False";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string str = "insert into userregister(@fnm,@email,@password,@hobbies,@gender,@country)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@fnm", txtfnm.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@password", txtpassword.Text);
        cmd.Parameters.AddWithValue("@hobbies", chkselect);
        cmd.Parameters.AddWithValue("@gender", rbtngender.SelectedValue);
        cmd.Parameters.AddWithValue("@country", ddlcountry.SelectedValue);
        int ans = cmd.ExecuteNonQuery();
        if(ans>0)
        {
            lblmsg.Text = "record inserted..";
        }
        else
        {
            lblmsg.Text = "problem occur";
        }
    }
}