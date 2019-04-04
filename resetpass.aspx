<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="resetpass.aspx.cs" Inherits="resetpass" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form action="" method="post" id="resetPass">
<p>שכחתי סיסמה</p>
<table dir="rtl">
<tr>
<td>
אנא הכנס את האי-מייל איתו נרשמת לאתר:
</td>
<td>
<input type="text" id="email" name="email" />
</td>
</tr>
</table>
<input type="submit" value="שלח" />
</form>
</asp:Content>

