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

public partial class newtopic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string myTopic = Request.Form["myTopic"];
            string msg = Request.Form["myMassage"];
            string senderN = Session["login"].ToString();
            DateTime now = DateTime.Now;

            string fileName = "database.mdb";

            string sql = "INSERT INTO myForum (topic, topicDate, senderName, msg) VALUES ('" + myTopic + "', '" + now + "', '" + senderN + "', '" + msg + "')";

            MyAdoHelper.ConnectToDb(fileName);
            MyAdoHelper.DoQuery(fileName, sql);

            Response.Redirect("forum.aspx");
        }
    }
}
