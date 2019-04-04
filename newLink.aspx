<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newLink.aspx.cs" Inherits="newLink" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%if (Session["login"] == null)
  {
      Response.Redirect("index.aspx");
  } %>
  <a href="links.aspx">חזרה לקישורים שימושיים</a>
<form id="newLink" name="newLink" action="" method="post">
<table>
<tr>
<td>קישור:</td>
</tr>
<tr>
<td><input id="theLink" type="text" name="theLink" /></td>
</tr>
<tr>
<td>תיאור:</td>
</tr>
<tr>
<td><textarea id="theMassage" rows="8" cols="80"></textarea></td>
</tr>
</table>
<input id="submit" name="submit" type="submit" value="שלח" />
</form>
</asp:Content>

