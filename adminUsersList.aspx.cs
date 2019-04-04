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

public partial class adminUsersList : System.Web.UI.Page
{
    public string usersTable;
    public string cuTable;
    public string cuError;
    protected void Page_Load(object sender, EventArgs e)
    {

        string fileName = "database.mdb";
        string tableName = "Members";

        string selectQuery = "SELECT * FROM " + tableName;

        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
        int length = table.Rows.Count;
        if (length > 0)
        {
            usersTable += "<table border=1 dir=rtl>";
            usersTable += "<tr >";
            usersTable += "<th>שם משתמש</th>";
            usersTable += "<th>סיסמה</th>";
            usersTable += "<th>ID</th>";
            usersTable += "<th>גיל</th>";
            usersTable += "<th>תאריך הרשמה</th>";
            usersTable += "<th>מין</th>";
            usersTable += "<th>אימייל</th>";
            usersTable += "<th>כתובת</th>";
            usersTable += "<th>מנהל?</th>";
            usersTable += "<th>מחיקה</th>";
            usersTable += "<th>עריכה</th>";
            usersTable += "</tr>";
            for (int i = 0; i < length; i++)
            {
                usersTable += "<tr>";
                usersTable += "<td>" + table.Rows[i]["username"] + "</td>";
                usersTable += "<td>" + table.Rows[i]["password"] + "</td>";
                usersTable += "<td>" + table.Rows[i]["ID"] + "</td>";
                usersTable += "<td>" + table.Rows[i]["age"] + "</td>";
                usersTable += "<td>" + table.Rows[i]["תאריך הרשמה"] + "</td>";
                usersTable += "<td>" + table.Rows[i]["gender"] + "</td>";
                usersTable += "<td>" + table.Rows[i]["email"] + "</td>";
                usersTable += "<td>" + table.Rows[i]["address"] + "</td>";
                usersTable += "<td>" + table.Rows[i]["admin"] + "</td>";
                usersTable += "<td><form method='get' action=''><a href='actions/deleteUser.aspx?userid=" + table.Rows[i]["ID"] + "'>מחיקה</a></form></td>";
                usersTable += "<td><form method='get' action=''><a href='actions/updateUser.aspx?userid=" + table.Rows[i]["ID"] + "'>עריכה</a></form></td>";
                usersTable += "</tr>";
            }
            usersTable += "</table>";

            if (Request.Form["submit"] != null)
            {
                string cu = Request.Form["cu"];
                string cu1 = Request.Form["cu1"];
                string cu2 = Request.Form["cu2"];
                string sql = "SELECT " + cu + " FROM Members WHERE " + cu1 + " LIKE '%" + cu2 + "%'";

                if (cu2 == null || cu2 == "")
                {
                    cuError += "לא מילת את השדה האחרון";
                }

                else
                {
                    if (MyAdoHelper.IsExist(fileName, sql))
                    {
                        DataTable cuTableData = MyAdoHelper.ExecuteDataTable(fileName, sql);
                        int culength = cuTableData.Rows.Count;
                        if (culength > 0)
                        {
                            cuTable += "<table border=1 dir=rtl>";
                            cuTable += "<tr >";
                            cuTable += "<th>שם משתמש</th>";
                            cuTable += "<th>סיסמה</th>";
                            cuTable += "<th>ID</th>";
                            cuTable += "<th>גיל</th>";
                            cuTable += "<th>תאריך הרשמה</th>";
                            cuTable += "<th>מין</th>";
                            cuTable += "<th>אימייל</th>";
                            cuTable += "<th>כתובת</th>";
                            cuTable += "<th>מנהל?</th>";
                            cuTable += "<th>מחיקה</th>";
                            cuTable += "<th>עריכה</th>";
                            cuTable += "</tr>";
                            for (int i = 0; i < culength; i++)
                            {
                                cuTable += "<tr>";
                                cuTable += "<td>" + cuTableData.Rows[i]["username"] + "</td>";
                                cuTable += "<td>" + cuTableData.Rows[i]["password"] + "</td>";
                                cuTable += "<td>" + cuTableData.Rows[i]["ID"] + "</td>";
                                cuTable += "<td>" + cuTableData.Rows[i]["age"] + "</td>";
                                cuTable += "<td>" + cuTableData.Rows[i]["תאריך הרשמה"] + "</td>";
                                cuTable += "<td>" + cuTableData.Rows[i]["gender"] + "</td>";
                                cuTable += "<td>" + cuTableData.Rows[i]["email"] + "</td>";
                                cuTable += "<td>" + cuTableData.Rows[i]["address"] + "</td>";
                                cuTable += "<td>" + cuTableData.Rows[i]["admin"] + "</td>";
                                cuTable += "<td><form method='get' action=''><a href='actions/deleteUser.aspx?userid=" + cuTableData.Rows[i]["ID"] + "'>מחיקה</a></form></td>";
                                cuTable += "<td><form method='get' action=''><a href='actions/updateUser.aspx?userid=" + cuTableData.Rows[i]["ID"] + "'>עריכה</a></form></td>";
                                cuTable += "</tr>";
                            }
                            cuTable += "</table>";
                        }
                    }
                    else
                    {
                        cuError += "לא נמצאו תוצאות לפי תאי החיפוש שלך";
                    }
                }

            }
        }
    }
}