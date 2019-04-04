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

public partial class adminIndexUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string fla = Request.Form["fla"];
            string fla2 = Request.Form["fla2"];
            string fla3 = Request.Form["fla3"];
            string color = Request.Form["color"];
            string textBold = Request.Form["textBold"];
            string textItalic = Request.Form["textItalic"];
            string textUnderline = Request.Form["textUnderline"];
            DateTime now = DateTime.Now;

            string fileName = "indexDB.mdb";

            string sql = "INSERT INTO indexDB (flash, flash2, flash3, thetDate, textColor, boldDec, italicDec, underLineDec) VALUES ('" + fla + "', '" + fla2 + "', '" + fla3 + "', '" + now + "', '" + color + "', '" + textBold + "', '" + textItalic + "', '" + textUnderline + "')";

            MyAdoHelper.ConnectToDb(fileName);
            MyAdoHelper.DoQuery(fileName, sql);


        }
    }
}
