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

public partial class index : System.Web.UI.Page
{
    public string newsfeeds = "";
    public string indexRows;
    protected void Page_Load(object sender, EventArgs e)
    {
        //news
        string newsFileName = "database.mdb";
        string newsTableName = "news";
        string newsSelectQuery = "SELECT * FROM " + newsTableName;

        DataTable newsTable = MyAdoHelper.ExecuteDataTable(newsFileName, newsSelectQuery);
        newsfeeds = "<b>חדשות</b>";
        int reports = newsTable.Rows.Count;
        for (int i = 0; i < reports; i++)
        {

            newsfeeds += "<p>";
            newsfeeds += newsTable.Rows[i]["flash"] + "<br />";
            newsfeeds += newsTable.Rows[i]["publish_date"] + "<br />";
            newsfeeds += newsTable.Rows[i]["id"] + "<br />";
            newsfeeds += "</p>";

        }
        //news

        string fileName = "indexDB.mdb";
        string tableName = "indexDB";
        string selectQuery = "SELECT * FROM " + tableName;

        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
        int length = table.Rows.Count;
        if (length > 0)
        {
            indexRows += "<table dir=rtl>";
            indexRows += "<tr>";
            indexRows += "<td style='background-color: White;' height='400 px' width='100 px'>";
            indexRows += "<p>";
            indexRows += "כאן תופיע פרסומת";
            indexRows += "<br />";
            indexRows += "100 px";
            indexRows += "<br />";
            indexRows += "X";
            indexRows += "<br />";
            indexRows += "400 px";
            indexRows += "</p>";
            indexRows += "</td>";
            indexRows += "<td>";
            indexRows += "<table dir=rtl>";
        }
        for (int i = 0; i < length; i++)
        {
            indexRows += "<tr>";
            indexRows += "<td>";
            indexRows += "<p style='font-size: " + table.Rows[i]["textSize"] + "px; color: " + table.Rows[i]["textColor"] + "; text-decoration:" + table.Rows[i]["underLineDec"] + "; font-weight:" + table.Rows[i]["boldDec"] + "; font-style:" + table.Rows[i]["italicDec"] + ";'>";
            indexRows += table.Rows[i]["flash"];
            indexRows += "<br />";
            indexRows += table.Rows[i]["flash2"];
            indexRows += "<br />";
            indexRows += table.Rows[i]["flash3"];
            indexRows += "<br />";
            indexRows += table.Rows[i]["thetDate"];
            indexRows += "</p>";
            indexRows += "<hr />";
            indexRows += "</td>";
            indexRows += "</tr>";
        }
        indexRows += "</table>";
        indexRows += "</td>";
        indexRows += "<td>";    
        indexRows += "<p>";
        indexRows += "<marquee direction=up height=450 px scrollamount=3>" + newsfeeds + "</marquee>";
        indexRows += "</p>";
        indexRows += "</td>";
        indexRows += "</tr>";
        indexRows += "</table>";
    }
}
