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

public partial class actions_updateUser : System.Web.UI.Page
{
    public string userid, uname, uage, ugender, uemail, update, ufname, upass, ulname;
    protected void Page_Load(object sender, EventArgs e)
    {
        userid = Request.QueryString["userid"];

        if (userid == null || userid == "")
        {
            Response.Redirect("../403.htm");
        }

        string fileName = "../../App_Data/database.mdb";
        string tableName = "Members";

        string selectQuery = "SELECT * FROM " + tableName + " WHERE ID=" + userid;

        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
        int length = table.Rows.Count;

        if (length > 0)
        {
            int i = 0;
            uname = table.Rows[i]["username"].ToString();
            uage = table.Rows[i]["age"].ToString();
            ugender = table.Rows[i]["gender"].ToString();
            uemail = table.Rows[i]["email"].ToString();
            ufname = table.Rows[i]["firstName"].ToString();
            upass = table.Rows[i]["password"].ToString();
            ulname = table.Rows[i]["lastName"].ToString();
        }

        if (Request.Form["update"] != null)
        {
            string password = Request.Form["upass"];
            string firstname = Request.Form["ufname"];
            string lastname = Request.Form["ulname"];
            string email = Request.Form["umail"];
            string gender = Request.Form["ugender"];
            string age = Request.Form["uage"];
            string id = Request.Form["userid"];
            string username = Request.Form["uname"];

            //בדיקת שדות, האם מלאו אותם או לא

            if (password == null || password == "")
            {
                password = upass;
            }

            if (firstname == null || firstname == "")
            {
                firstname = ufname;
            }

            if (lastname == null || lastname == "")
            {
                lastname = ulname;
            }

            if (email == null || email == "")
            {
                email = uemail;
            }

            if (gender == null || gender == "")
            {
                gender = ugender;
            }

            if (age == null || age == "")
            {
                age = uage;
            }



            string sql = "UPDATE Members SET firstName ='" + firstname + "',[password] = '" + password + "',lastName ='" + lastname + "',email ='" + email + "',gender ='" + gender + "',age ='" + age + "' WHERE ID = " + userid;
            update += "הפרטים עודכנו בהצלחה";

            MyAdoHelper.DoQuery(fileName, sql);

            Response.Redirect("../admin.aspx?up=yes");
        }

    }
}
