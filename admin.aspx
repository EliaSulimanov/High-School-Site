<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%if (Request.QueryString["up"] == "yes")
      { %>
            <script type="text/javascript">
            alert("הפרטים עודכנו בהצלחה");
            </script>
      <%} %>
      
      <%if (Request.QueryString["del"] == "yes")
      { %>
            <script type="text/javascript">
            alert("המשתמש נמחק בהצלחה");
            </script>
      <%} %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%if (Session["admin"] != null)
  {
      Response.Write("שלום מנהל. ברוך שובך <br />");
      Response.Write("בדף זה תוכל לערוך את הרשומות בפורום, לערוך משתמשים<br />");
      Response.Write("לעדכן לינקים בדף לינקים שימושיים ולנהל את העדכונים באתר<br />");
      Response.Write("<table border=1 dir=rtl align='center'>");
      Response.Write("<tr>");
      Response.Write("<td>");
      Response.Write("<a href=adminNews.aspx>עדכון חדשות</a>");
      Response.Write("</td>");
      Response.Write("<td>");
      Response.Write("<a href=adminUsersList.aspx>רשימת משתמשים</a>");
      Response.Write("</td>");
      Response.Write("<td>");
      Response.Write("<a href=adminIndexUpdate.aspx>עדכון הדף הראשי</a>");
      Response.Write("</td>");
      Response.Write("</tr>");
      Response.Write("<tr>");
      Response.Write("<td>");
      Response.Write("<a href=cuont.aspx>ספירת משתמשים</a>");
      Response.Write("</td>");
      Response.Write("<td>");
      Response.Write("5");
      Response.Write("</td>");
      Response.Write("<td>");
      Response.Write("6");
      Response.Write("</td>");
      Response.Write("</tr>");
      Response.Write("</table");
  }
  else
  {
      Response.Redirect("404.htm");
  }
    %>
    
    
</asp:Content>

