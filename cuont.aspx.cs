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

public partial class cuont : System.Web.UI.Page
{
    public string num, cuError;
    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "database.mdb";
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
                        num = "נמצאו: " + culength + "תוצאות ";
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