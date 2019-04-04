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
using System.Data.OleDb;

public partial class links : System.Web.UI.Page
{
    public string favlinks;
    protected void Page_Load(object sender, EventArgs e)
    {


        string fileName = "database.mdb";
        string tableName = "favLinks";

        string selectQuery = "SELECT * FROM " + tableName;

        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
        int length = table.Rows.Count;
        if (length > 0)
        {
            favlinks += "<a href='newLink.aspx'>הוספת קישור חדש</a>";
            favlinks += "<table dir=rtl>";
            favlinks += "<tr>";
            favlinks += "<td>כתובת האתר</td>";
            favlinks += "<td>תיאור</td>";
            favlinks += "<td>שם המוסיף</td>";
            favlinks += "</tr>";
            for (int i = 0; i < length; i++)
            {
                favlinks += "<tr>";
                favlinks += "<td><a href=http://" + table.Rows[i]["favLink"] + "/>" + table.Rows[i]["favLink"] + "</a></td>";
                favlinks += "<td>" + table.Rows[i]["favLinkDis"] + "</td>";
                favlinks += "<td>" + table.Rows[i]["favLinkSender"] + "</td>";
                favlinks += "</tr>";
            }
            favlinks += "</table>";

        }
    }
}
