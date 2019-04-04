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

public partial class adminUsersPanel : System.Web.UI.Page
{
    public string userSelect;
    public string conf;
    public string update;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("404.htm");
        }

        string filename = "database.mdb";
        string selectionSQL = "SELECT username FROM Members";
        DataTable userSelection = MyAdoHelper.ExecuteDataTable(filename, selectionSQL);

        //טבלה נגללת
        userSelect = "<select name='userSelect'>";
        int length = userSelection.Rows.Count;
        for (int selection = 0; selection < length; selection++)
        {
            userSelect += "<option id=" + userSelection.Rows[selection]["username"] + " value=" + userSelection.Rows[selection]["username"] + ">" + userSelection.Rows[selection]["username"] + "</option>";
        }
        userSelect += "</select>";
        

        if (Request.Form["submit"] != null)
        {
            update += "הפרטים עודכנו בהצלחה";
            string username = Request.Form["userSelect"];
            string password = Request.Form["pass1"];
            string firstname = Request.Form["firstname"];
            string lastname = Request.Form["lastname"];
            string email = Request.Form["email"];
            

            //שינוי שם משפחה
            string lname = "SELECT lastName FROM Members WHERE username='" + username + "'";
            DataTable tablel = MyAdoHelper.ExecuteDataTable(filename, lname);
            int r = 0;
            Session["lname"] = tablel.Rows[r]["lastName"];
            string lname1 = Session["lname"].ToString();

            if (lastname == null || lastname == "")
            {
                lastname = lname1;
            }

            //משיכה של שם פרטי
            string fname = ("SELECT firstName FROM Members WHERE username='" + username + "'");
            DataTable table = MyAdoHelper.ExecuteDataTable(filename, fname);
            int j = 0;
            Session["fname"] = table.Rows[j]["firstName"];

            if (firstname == null || firstname == "")
            {
                firstname = Session["fname"].ToString();
            }

            //שינויי אימייל
            string emailUpdate = "SELECT email FROM Members WHERE username='" + username + "'";
            DataTable emails = MyAdoHelper.ExecuteDataTable(filename, emailUpdate);
            int a = 0;
            Session["emailconf"] = emails.Rows[a]["email"];
            string emailcon = Session["emailconf"].ToString();

            if (email == null || email == "")
            {
                email = emailcon;
            }
            
            //שינוי סיסמה
            string pass2 = Request.Form["pass1"];
            string pass1 = Session["passwordLogin"].ToString();

            if (pass2 == null || pass2 == "")
            {
                pass2 = pass1;
            }
            
            //פעולת העדכון
            string sql = "UPDATE Members SET firstName ='" + firstname + "',[password] = '" + pass2 + "',lastName ='" + lastname + "',email ='" + email + "' WHERE Username = '" + username + "'";
            MyAdoHelper.DoQuery(filename, sql);
            

            //עדכון השם הפרטי שמעל התפריט
            /*
            string fname1 = ("SELECT firstName FROM Members WHERE username='" + username + "'");
            DataTable table2 = MyAdoHelper.ExecuteDataTable(filename, fname1);
            int s = 0;
            Session["fname1"] = table2.Rows[s]["firstName"];*/
            
            
        }
    }
}