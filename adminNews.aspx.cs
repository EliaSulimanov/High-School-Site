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

public partial class adminNews : System.Web.UI.Page
{
    public string stat;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("404.htm");
            Response.End();
        }

        else
        {
            if (Request.Form["submit"] != null)
            {
                string flashN = Request.Form["newNews"];
                string identetyA = Session["login"].ToString();
                DateTime now = DateTime.Now;
                string fileName = "database.mdb";
                string sql = "INSERT INTO news (flash, publish_date, id) VALUES ('" + flashN + "', '" + now + "', '" + identetyA + "')";
                MyAdoHelper.ConnectToDb(fileName);
                MyAdoHelper.DoQuery(fileName, sql);
                stat = "החדשות התעדכנו בהצלחה";
            }
        }
    }
}
