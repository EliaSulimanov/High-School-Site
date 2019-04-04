<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userpanel.aspx.cs" Inherits="userpanel" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="userpanel">
<p dir="rtl">
האזור האישי
<br />
עדכון פרטי המשתמש
</p>
</div>

<!--פאנל משתמש-->
<div id="panel">
<form method="post" action ="">
<table dir="rtl" align="center">
  <tr align="right">
   <td>
   שם משתמש:
   </td>
   <td>
   <input type="text" name="nick" id="nick" size="20" readonly="readonly" disabled="disabled" value="<%=Session["login"] %>" /> 
   </td>
   </tr>
   <tr align="right">
   <td>
   שם פרטי: 
   </td>
   <td>
   <input type="text" name="firstname" id="firstname" size="20" value="<%=Session["fname"].ToString() %>" /> 
   </td>
   </tr>
   <tr align="right">
   <td>
   שם משפחה:
   </td>
   <td>
   <input type="text" name="lastname" size="20" value="<%=Session["lname"].ToString() %>" /> 
   </td>
   </tr>
   <tr align="right">
   <td>
   דואר אלקטרוני:
   </td>
   <td>
   <input type="text" name="email" size="20" id="email" value="<%=Session["emailconf"].ToString() %>" /> 
   </td>
   </tr>
   <tr align="right">
   <td>
   סיסמא:
   </td>
   <td align="right">
   <input type="password"  name="pass1" maxlength="10" /> 
   </td>
   </tr>
   <tr align="right">
   <td>
   חזור על הסיסמא:
   </td>
   <td align="right">
   <input type="password"  name="confrim" maxlength="10" /> 
   </td>
   </tr>
   <tr>
   <td align="center" colspan="2">
   <input type="submit" name="submit" id="submit" value="עדכן" />
   </td>
   </tr>
   </table>
   </form>
   <%=update %>
   </div>
    
</asp:Content>

