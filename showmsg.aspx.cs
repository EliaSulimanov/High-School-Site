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

public partial class showmsg : System.Web.UI.Page
{
    public string showenmsg, underpostmsg;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            string fileName = "database.mdb";
            string tableName = "myForum";
            string ID = Request.QueryString["hidden"];
            string selectQuery = "SELECT * FROM " + tableName + " WHERE ID = " + ID;

            DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
            int i = 0;
            int length = table.Rows.Count;
            if (length > 0)
            {
                showenmsg += "<a name='down'>";
                showenmsg += "<a href='forum.aspx'>חזרה לפורום</a>";
                showenmsg += "<center>";
                showenmsg += "<table border=1 dir=rtl>";
                showenmsg += "<tr>";
                showenmsg += "<td>";
                showenmsg += "<b>שם השולח:</b>";
                showenmsg += "</br>";
                showenmsg += table.Rows[i]["senderName"];
                showenmsg += "</td>";
                showenmsg += "<td width='500 px'>";
                showenmsg += "<b>נושא:</b>";
                showenmsg += table.Rows[i]["topic"];
                showenmsg += "<br />";
                showenmsg += table.Rows[i]["topicDate"];
                showenmsg += "<br />";
                showenmsg += "<hr />";
                showenmsg += "<br />";
                showenmsg += table.Rows[i]["msg"];
                showenmsg += "<br />";
                showenmsg += "</td>";
                showenmsg += "</tr>";
                showenmsg += "</table>";
                showenmsg += "</center>";


                string under = "select * from underPost where under = '" + ID.ToString() + "'";
                if (MyAdoHelper.IsExist(fileName, under))
                {
                    DataTable under1 = MyAdoHelper.ExecuteDataTable(fileName, under);
                    int r = 0;
                    int length1 = under1.Rows.Count;
                    if (length1 > 0)
                    {
                        for (r = 0; r < length1; r++)
                        {
                            showenmsg += "<center>";
                            showenmsg += "<table border=1 dir=rtl>";
                            showenmsg += "<tr>";
                            showenmsg += "<td>";
                            showenmsg += "<b>שם השולח:</b>";
                            showenmsg += "</br>";
                            showenmsg += under1.Rows[r]["senderName"];
                            showenmsg += "</td>";
                            showenmsg += "<td width='500 px'>";
                            showenmsg += "<b>נושא:</b>";
                            showenmsg += table.Rows[i]["topic"];
                            showenmsg += "<br />";
                            showenmsg += under1.Rows[r]["topicDate"];
                            showenmsg += "<br />";
                            showenmsg += "<hr />";
                            showenmsg += "<br />";
                            showenmsg += under1.Rows[r]["msg"];
                            showenmsg += "<br />";
                            showenmsg += "</td>";
                            showenmsg += "</tr>";
                            showenmsg += "</table>";
                            showenmsg += "<a href='newunderpost.aspx?topic=" + ID + "'>הוספת תגובה</a>";
                            showenmsg += "</center>";
                        }
                    }
                }
                else
                {
                    showenmsg += "<center>";
                    showenmsg += "<a href='newunderpost.aspx?topic=" + ID + "'>הוספת תגובה</a>";
                    showenmsg += "</center>";
                }
            }
        }
    }
}