<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="conect.aspx.cs" Inherits="conect" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p class="tutorialHead">
צור קשר
</p>
<form id="conect" method="post" action="mailto:ielia379@gmail.com">
<table dir="rtl">
<tr>
<td>השם שלך:</td>
<td><input type="text" id="name" name="name" /></td>
</tr>
<tr>
<td>האי-מייל שלך (ליצירת קשר חזרה):</td>
<td><input type="text" id="email" name="email" /></td>
</tr>
<tr>
<td>שאלות/תגובות/משוב:</td>
<td><textarea rows="3" cols="20" name="text" id="text"></textarea></td>
</tr>
</table>
<input type="submit" value="שלח" />
</form>
</asp:Content>

