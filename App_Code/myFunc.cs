using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;

/// <summary>
/// מספר פונקציות עזר
/// </summary>
/*
public class myFunc
{
    public myFunc()
    {
        //
        // TODO: Add constructor logic here
        //
    }


    public static OleDbConnection ConnectToDb(string fileName)
    {
        string path = HttpContext.Current.Server.MapPath("App_Data/");//מיקום מסד בפורוייקט
        path += fileName;
        //string path = HttpContext.Current.Server.MapPath("App_Data/" + fileName);//מאתר את מיקום מסד הנתונים מהשורש ועד התקייה בה ממוקם המסד
        string connString = "Provider=Microsoft.Jet.OLEDB.4.0;Data source=" + path;//נתוני ההתחברות הכוללים מיקום וסוג המסד
        OleDbConnection conn = new OleDbConnection(connString);
        return conn;
    }



    public static void Gender()
    {

        string printStr;

        string strAccess = "SELECT gender, COUNT(*) AS Num " +
                        "FROM tblUsers " +
                        "GROUP BY gender ";

        System.Data.DataSet ds = GetDataSet(strAccess);
        printStr += ("<table align='center' dir='ltr' width=150>");
        if (ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                printStr += ("<tr>");
                if ((string)dr["gender"] == "female")
                    printStr += ("<td> Female </td>");
                else
                    printStr += ("<td> Male </td>");
                printStr += ("<td>" + dr["Num"].ToString() + "</td>");
                printStr += ("</tr>");
            }
            printStr += ("</table>");
        }

    }

    private static DataSet GetDataSet(string strAccess)
    {
        throw new NotImplementedException();
    }


    public void Search(string sql)
    {
        string str = "<table style='border:2px solid blue'>";
        str += "<tr><td>Id</td><td>User Name</td><td>First Name</td><td>Last Name</td><td>Address</td><td>Phone No.</td><td>Cell Phone</td><td>Email</td><td>Gender</td><td>Birth Year</td></tr>";
        foreach (DataRow row in GetDataSet(sql).Tables[0].Rows)
        {
            //כאן צריך לעבור על כל המשתמשים,ולהדפיס פרטים
            // בנוסף לאפשר עדכוןומחיקה 
            str += "<tr>";
            str += "<td style='border:2px solid blue'>" + row["id"].ToString() + "</td>";
            str += "<td style='border:2px solid blue'>" + row["username"].ToString() + "</td>";
            str += "<td style='border:2px solid blue'>" + row["firstName"].ToString() + "</td>";
            str += "<td style='border:2px solid blue'>" + row["lastName"].ToString() + "</td>";
            str += "<td style='border:2px solid blue'>" + row["address"].ToString() + "</td>";
            str += "<td style='border:2px solid blue'>" + row["email"].ToString() + "</td>";
            str += "<td style='border:2px solid blue'>" + row["gender"].ToString() + "</td>";

            str += "<td style='border:2px solid blue'>" + "<a href='updateProfile.aspx?upID=" + row["id"].ToString() + "'>Edit</a>" + "</td>";
            str += "<td style='border:2px solid blue'>" + "<a href='DeleteProfile.aspx?ID=" + row["id"].ToString() + "'>Delete</a>" + "</td>";
            str += "</tr>";
        }
        str += "</table>";
        Response.Write(str);
        Response.Write("<br />");
    }



    public static void City(string city)
    {

        if (city != null && city != "")
        {
            string cityForSearch = city;
            string accessUsersByCity = "SELECT * FROM Members WHERE (address LIKE '%" + cityForSearch + "%')";
            Search(accessUsersByCity);
        }
        else
            Response.Write("<h2>יש להכניס עיר לחיפוש</h2>");
    }
}
*/