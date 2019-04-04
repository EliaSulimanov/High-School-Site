<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminUsersPanel.aspx.cs" Inherits="adminUsersPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="userpanel">
<p dir="rtl">
עריכת משתמשים
</p>
</div>

<!--פאנל משתמש-->
<div id="panel">

<form method="post" action ="">
<table dir="rtl" align="center">
  <tr align="right">
   <td>
   בחר את המשתמש שברצונך לערוך:
   </td>
   <td>
   <%=userSelect %> 
   </td>
   </tr>
   <tr align="right">
   <td>
   שם פרטי: 
   </td>
   <td>
   <input type="text" name="firstname" id="firstname" size="20" /> 
   </td>
   </tr>
   <tr align="right">
   <td>
   שם משפחה:
   </td>
   <td>
   <input type="text" name="lastname" size="20" /> 
   </td>
   </tr>
   <tr align="right">
   <td>
   דואר אלקטרוני:
   </td>
   <td>
   <input type="text" name="email" size="20" id="email" /> 
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

