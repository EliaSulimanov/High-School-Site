<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newtopic.aspx.cs" Inherits="newtopic" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%if (Session["login"] == null)
  {
      Response.Redirect("index.aspx");
  } %>
<form id="newTopic" name="newTopic" action="" method="post">
<table>
<tr>
<td>נושא:</td>
</tr>
<tr>
<td><input id="myTopic" type="text" name="myTopic" /></td>
</tr>
<tr>
<td>הודעה:</td>
</tr>
<tr>
<td><textarea id="myMassage" name="myMassage" rows="8" cols="80"></textarea></td>
</tr>
</table>
<input id="submit" name="submit" type="submit" value="שלח הודעה" />
</form>
</asp:Content>

