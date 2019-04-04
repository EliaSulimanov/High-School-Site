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

public partial class newunderpost : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("forum.aspx");
        }
                string fileName = "database.mdb";
                string id = Request.QueryString["topic"];
                string under = "select * from myForum where ID = " + id.ToString() + "";

        if (Request.Form["submit"] != null)
        {
            string underPostMsg = Request.Form["underpost"];
            string senderN = Session["login"].ToString();
            DateTime now = DateTime.Now;
            

            string sql = "INSERT INTO underPost (under, topicDate, senderName, msg) VALUES ('" + id + "','" + now + "', '" + senderN + "', '" + underPostMsg + "')";

            MyAdoHelper.ConnectToDb(fileName);
            MyAdoHelper.DoQuery(fileName, sql);
        }
    }
}
