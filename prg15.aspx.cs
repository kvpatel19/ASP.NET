using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prg15 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        string chkselect = "";
        for(int i=0; i<chkHobbies.Items.Count; i++)
        {
            if(chkHobbies.Items[i].Selected)
            {
                if(chkselect=="")
                {
                    chkselect = chkHobbies.Items[i].Text;
                }
                else
                {
                    chkselect += "," + chkHobbies.Items[i].Text;
                }
            }
        }
        string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        string str = "insert into UserRegistration values(@Full_Name,@Email,@Password,@Confirm_Password,@Hobbies,@Gender,@Country)";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.AddWithValue("@Full_Name", txtFullName.Text);
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
        cmd.Parameters.AddWithValue("@Confirm_Password", txtConfirmPassword.Text);
        cmd.Parameters.AddWithValue("@Hobbies", chkselect);
        cmd.Parameters.AddWithValue("@Gender", rbtnGender.SelectedValue);
        cmd.Parameters.AddWithValue("@Country", ddlCountry.SelectedValue);
        int ans = cmd.ExecuteNonQuery();
        if(ans>0)
        {
            lblmsg.Text = "Record Inserted...";
        }
        else
        {
            lblmsg.Text = "Problem Occurs";
        }
    }
}