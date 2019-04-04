using System;
using System.Collections.Generic;
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

public partial class login : System.Web.UI.Page
{
    public string fname = "";
    public string loginErorr = ""; // הגדרת משתנה שגיאה
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            Response.Redirect("index.aspx");
            Response.End();
        }
        Session["login"] = null;
        Session["admin"] = null;
        string myDataBase = "database.mdb"; //שם הDB שלי
        if (Request.Form["submit"] != null) // אם לחצתי על שלח
        {
            string userName = Request.Form["username"]; //שמירת שם המשתמש בזכרון לצורך בדיקה
            string passWord = Request.Form["password"];
            Session["passwordLogin"] = Request.Form["password"];

            if (userName == "Admin" && passWord == "Admin123456")
            {
                Session["user"] = "yes";
                Session["login"] = "admin";
                Session["admin"] = "yes";
                Response.Redirect("admin.aspx");
            }

            if (userName == null || userName == "")
            {
                loginErorr += "לא מילאת שם משתמש";
            }
            else
            {
                if (passWord == null || passWord == "")
                {
                    loginErorr += "לא מילאת סיסמה";
                }
                else
                {
                    string cheak = "SELECT * FROM Members WHERE username = '"; //הגדרת משתנה שווה לטקסט בדיקה בשרת (לצורך קיצור בקוד)
                    cheak += userName + "'AND password = '" + passWord + "'"; // בדיקה איפה השם משתמש שנקלט שווה לסיסמה שנקלטה

                    /*fname = ("SELECT firstName FROM Members WHERE username='" + userName + "'");
                    DataTable table = MyAdoHelper.ExecuteDataTable(myDataBase, fname);
                    int i = 0;
                    */


                    if (MyAdoHelper.IsExist(myDataBase, cheak))
                    {
                        Session["user"] = "yes";
                        Session["login"] = Request.Form["username"];
                        Response.Redirect("index.aspx");
                        //Session["myName"] = table.Rows[i]["firstName"];
                    }
                    else
                    {
                        loginErorr += "שם המשתמש או הסיסמה אינם נכונים";
                    }
                }
            }
        }
    }
}