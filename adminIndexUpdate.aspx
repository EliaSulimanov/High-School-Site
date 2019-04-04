<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminIndexUpdate.aspx.cs" Inherits="adminIndexUpdate" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%if (Session["admin"] == null)
  {
      Response.Redirect("404.htm");
  } %>
  
  <form id="AdminUp" action="" method="post">
  <table dir="rtl">
  <tr>
  <td>טקסט 1: (אנא הכנס עד 255 אותיות[5 שורות ו5 מילים])</td>
  <td><textarea id="fla" name="fla" cols="50" rows="8"></textarea></td>
  </tr>
  <tr>
  <td>טקסט 2: (אנא הכנס עד 255 אותיות[5 שורות ו5 מילים])</td>
  <td><textarea id="fla2" name="fla2" cols="50" rows="8"></textarea></td>
  </tr>
  <tr>
  <td>טקסט 3: (אנא הכנס עד 255 אותיות[5 שורות ו5 מילים])</td>
  <td><textarea id="fla3" name="fla3" cols="50" rows="8"></textarea></td>
  </tr>
  <tr>
  <td>
  צבע רקע:
  </td>
  <td>
  <select id="color" name="color">
  <option id="red" value="red">אדום</option>
  <option id="green" value="green">ירוק</option>
  <option id="blue" value="blue">כחול</option>
  <option id="yellow" value="yellow">צהוב</option>
  <option id="gray" value="gray">אפור</option>
  </select>
  </td>
  </tr>
    <tr>
  <td>
  עיצובים מיוחדים:
  </td>
  <td>
  הדגשה:
  <select id="textBold" name="textBold">
  <option id="bold" value="bold">כן</option>
  <option id="noneBold" value="none">לא</option>
  </select>
  <br />
  הטייה:
  <select id="textItalic" name="textItalic">
  <option id="italic" value="italic">כן</option>
  <option id="noneItalic" value="none">לא</option>
  </select>
  <br />
  קו-תחתון:
  <select id="textUnderline" name="textUnderline">
  <option id="underline" value="underline">כן</option>
  <option id="noneUnderline" value="none">לא</option>
  </select>
  </td>
  </tr>
  </table>
  <input id="submit" type="submit" name="submit" />
  </form>
</asp:Content>

