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

public partial class forum : System.Web.UI.Page
{
    public string myforum;
    protected void Page_Load(object sender, EventArgs e)
    {

        string fileName = "Database.mdb";
        string tableName = "myForum";

        string selectQuery = "SELECT * FROM " + tableName;

        /*
        string selectUnderPost = "SELECT * FROM " + tableName + "WHERE underPost != null";
        if(MyAdoHelper.IsExist(fileName,selectUnderPost))
        {
            DataTable underPosts = MyAdoHelper.ExecuteDataTable(fileName, selectUnderPost);
            int length1 = underPosts.Rows.Count;
        }
        */


        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
        int length = table.Rows.Count;
        if (length > 0)
        {
            myforum += "<table border=1 dir=rtl>";
            myforum += "<tr >";
            myforum += "<th>תאריך שליחה</th>";
            myforum += "<th>שם השולח</th>";
            myforum += "<th>נושא</th>";
            myforum += "</tr>";
            for (int i = 0; i < length; i++)
            {
                /*string visable;
                if (table.Rows[i]["underPost"] == null)
                {
                    visable = "true";
                }
                else
                {
                    visable = "false";
                }*/

                myforum += "<form id='showMSG' name='showMSG' action='showmsg.aspx' method='get'>";
                myforum += "<tr>";
                myforum += "<td>" + table.Rows[i]["topicDate"] + "</td>";
                myforum += "<td>" + table.Rows[i]["senderName"] + "</td>";
                myforum += "<td><a href='showmsg.aspx?hidden=" + table.Rows[i]["ID"] + "#down'>";
                myforum += "<input type='hidden' name='hidden' value=";
                myforum += table.Rows[i]["ID"];
                myforum += " />";
                myforum += table.Rows[i]["topic"];
                myforum += "</a>";
                myforum += "</tr>";
                myforum += "</form>";
            }
            myforum += "</table>";
        }
    }

}