<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%if (Request.QueryString["status"] != null)
  { %>
    <script type="text/javascript">
    alert("ההרשמה התבצעה בהצלחה");
    </script>
  <%}%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="loginPage">
<form id="loginForm" method="post" action="" >
<table dir="rtl">
<tr>
<td>
שם משתמש:
</td>
<td>
<%if (Request.QueryString["status"] != null)
  { %>
    <input type="text" id="Text1" name="username" value="<%=Request.QueryString["status"] %>" />
  <%}

  else
  {%>
<input type="text" id="username" name="username" />
<%} %>
</td>
</tr>
<tr>
<td>
סיסמה:
</td>
<td>
<input type="password" id="password" name="password" />
</td>
</tr>
</table>
<input type="submit" id="submit" name="submit" value="שלח" />
</form>
<%=loginErorr %> <!--הודעת שגיאה במידה והמשתמש לא נמצא-->
<br />
<a href="resetpass.aspx" class="downLink">שכחת את סיסמתך?</a>

</div>
</asp:Content>

