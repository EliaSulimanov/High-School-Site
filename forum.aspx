<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forum.aspx.cs" Inherits="forum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
function formSubmit()
{
document.getElementById("showMSG").submit();
}
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<%if (Session["login"] != null)
  {
      Response.Write("<h1>פורום האתר</h1>");
      Response.Write("<a href=newtopic.aspx>הוספת הודעה חדשה</a>");
      Response.Write(myforum);
      Response.Write("<a href=newtopic.aspx>הוספת הודעה חדשה</a>");
  }
  else
  {
      Response.Write("חלק זה באתר הוא לרשומים בלבד");
  } %>

 
 </center>
</asp:Content>

