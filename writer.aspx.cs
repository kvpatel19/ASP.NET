using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class writer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        XmlWriter xwr = XmlWriter.Create(Server.MapPath("Data.xml"));
        xwr.WriteStartDocument();
        xwr.WriteStartElement("college");
        xwr.WriteStartElement("student");

        xwr.WriteElementString("id", "1");
        xwr.WriteElementString("name", "kriyanshi");
        xwr.WriteElementString("city", "rajkot");

        xwr.WriteEndElement();
        xwr.WriteEndElement();
        xwr.WriteEndDocument();
        xwr.Flush();
        xwr.Close();
        Label1.Text = "File created";

    }
}