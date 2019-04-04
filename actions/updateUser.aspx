<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="updateUser.aspx.cs" Inherits="actions_updateUser" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../css/StyleSheet.css" type="text/css" rel="Stylesheet" rev="Stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%if (Session["admin"] == null)
  {
      Response.Redirect("../404.htm");
  }

  if (userid == null)
  {
      Response.Redirect("../404.htm");
  } %>
  
<form action="" id="updateOfUsers" method="post">
<%=update %>
    <table dir="rtl">
        <tr>
            <td>
                שם משתמש
            </td>
            <td>
                 <input name="uname" type="text" id="uname" disabled="disabled" value="<%=uname %>" />
            </td>
        </tr>
               <tr>
            <td>
                סיסמה
            </td>
            <td>
                 <input name="upass" type="text" id="upass" value="<%=upass %>" />
            </td>
        </tr>
                <tr>
            <td>
                ID
            </td>
            <td>
                 <input name="userid" type="text" id="userid" disabled="disabled" value="<%=userid %>" />
            </td>
        </tr>
        <tr>
            <td>
                גיל
            </td>
            <td>
                <input name="uage" type="text" id="uage" disabled="disabled" value="<%=uage %>" />
            </td>
        </tr>
                <tr>
            <td>
                שם פרטי
            </td>
            <td>
                <input name="ufname" type="text" id="ufname" value="<%=ufname %>" />
            </td>
        </tr>
                <tr>
            <td>
                שם משפחה
            </td>
            <td>
                <input name="ulname" type="text" id="ulname" value="<%=ulname %>" />
            </td>
        </tr>
        <tr>
            <td>
                מין</td>
            <td>
                <input name="ugender" type="text" id="ugender" disabled="disabled" value="<%=ugender %>" />
            </td>
        </tr>
                <tr>
            <td>
                אימייל</td>
            <td>
                <input name="umail" type="text" id="umail" value="<%=uemail %>" />
            </td>
        </tr>
        <tr>
        <td align="center" colspan="2">
        <input type="submit" id="update" name="update" value="עדכן" />
        </td>
        </tr>
    </table>
    </form>

</asp:Content>

