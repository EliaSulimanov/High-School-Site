<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="seker.aspx.cs" Inherits="seker" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%if(Session["login"] == null)
  {
      Response.Redirect("index.aspx");
  } %>
<form id="seker" action="answers.aspx" method="post">
מה לדעתך החלק החשוב ביותר לריצה:
<br />
<center>
<table dir="ltr">
<tr>
<td align="right">נעליים טובות</td>
<td><input id="one" name="poll" type="radio" value="one" /></td>
</tr>
<tr>
<td align="right">מצב רוח טוב</td>
<td><input id="two" name="poll" type="radio" value="two" /></td>
</tr>
<tr>
<td align="right">תנאי שטח טובים</td>
<td><input id="three" name="poll" type="radio" value="three" /></td>
</tr>
</table>
<br />
<input id="submit" type="submit" value="שלח" />
</center>
</form>
<a href="answers.aspx">למעבר לתוצאות לחצ\י כאן</a>
</asp:Content>

