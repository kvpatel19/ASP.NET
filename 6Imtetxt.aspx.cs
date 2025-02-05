using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _6Imtetxt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Random rmd = new Random();
        int imageIndex = rmd.Next(3);
        switch(imageIndex)
        {
            case 0:
                imgrandom.ImageUrl="img102.jpg";
                imgrandom.AlternateText = "picture1";
                break;

            case 1:
                imgrandom.ImageUrl="img103.jpg";
                imgrandom.AlternateText = "picture2";
                break;

            case 2:
                imgrandom.ImageUrl="img104.jpg";
                imgrandom.AlternateText = "picture3";
                break;


        }
    }
}