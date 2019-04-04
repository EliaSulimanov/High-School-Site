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
using DataSet1TableAdapters;

public partial class register : System.Web.UI.Page
{
    public string RegStatus;
    public string check1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            Response.Redirect("index.aspx");
            Response.End();
        }
        else
        {
        if (Request.Form["submit"] != null)
        {
            string nuser = Request.Form["nuser"];
            string npass = Request.Form["npass"];
            string fname = Request.Form["fname"];
            string lname = Request.Form["lname"];
            string email = Request.Form["email"];
            string hobbies = Request.Form["hobbies"];
            string gender = Request.Form["gender"];
            string age = Request.Form["age"];
            DateTime now = DateTime.Now;

            string fileName = "database.mdb";

            string sql = "INSERT INTO Members (username, [password], email, hobbies, gender, age, [תאריך הרשמה]) VALUES ('" + nuser + "', '" + npass + "', '" + email + "', '" + hobbies + "', '" + gender + "', '" + age + "', '" + now + "')";

            string check = "SELECT Username from Members WHERE username='" + nuser + "'";
            if (MyAdoHelper.IsExist(fileName, check))
            {
                check1 += "קיים משתמש בשם זה";
            }
            else
            {
                MyAdoHelper.ConnectToDb(fileName);
                MyAdoHelper.DoQuery(fileName, sql);
                RegStatus = ("ההרשמה התבצעה בהצלחה");
                Response.Redirect("login.aspx?status=" + nuser + "");
            }
            
        }
        }

    }
}
