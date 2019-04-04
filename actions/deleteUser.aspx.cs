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

public partial class actions_deleteUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["admin"] != null)
        //{
        //   Response.Redirect("../404.htm");
        //}
        string userid = Request.QueryString["userid"];

        if (userid != null)
        {
            string filename = "../../App_Data/database.mdb";
            string sql = "DELETE * FROM Members WHERE ID=" + userid;

            MyAdoHelper.DoQuery(filename, sql);

            Response.Redirect("../admin.aspx?del=yes");
            Response.End();
        }
        else
        {
            Response.Redirect("../index.aspx");
        }
    }
}
