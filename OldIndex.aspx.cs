using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Xml;

public partial class OldIndex : System.Web.UI.Page
{
    public string newsfeeds = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string XMLfile = Server.MapPath("newsfeeds.xml");
        XmlDocument XMLdocu = new XmlDocument();
        XMLdocu.Load(XMLfile);
        XmlNodeList name = XMLdocu.GetElementsByTagName("name");
        XmlNodeList date = XMLdocu.GetElementsByTagName("date");
        XmlNodeList flash = XMLdocu.GetElementsByTagName("flash");

        newsfeeds = "<b>חדשות</b>";
        int reports = flash.Count;
        for (int i = 0; i < reports; i++)
        {

            newsfeeds += "<p>";
            newsfeeds += flash[i].InnerText + "<br />";
            newsfeeds += name[i].InnerText + "<br />";
            newsfeeds += date[i].InnerText + "<br />";
            newsfeeds += "</p>";

        }
    }
}
