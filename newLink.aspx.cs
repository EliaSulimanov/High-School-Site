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

public partial class newLink : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string theLink = Request.Form["theLink"];
            string theSender = Session["login"].ToString();
            string theMassage = Request.Form["theMassage"];

            string fileName = "database.mdb";

            string sql = "INSERT INTO favLinks (favLink, favLinkSender, favLinkDis) VALUES ('" + theLink + "', '" + theSender + "', '" + theMassage + "')";

            MyAdoHelper.ConnectToDb(fileName);
            MyAdoHelper.DoQuery(fileName, sql);

            Response.Redirect("links.aspx");
        }
    }
}
