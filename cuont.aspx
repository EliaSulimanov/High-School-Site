<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cuont.aspx.cs" Inherits="cuont" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
את מי תרצה לספור:
  <br />
  <form id="cu3" action="" method="post">
  <select id="cu" name="cu">
  <option id="*" value="*" selected="selected">הכל</option>
  </select>
  <br />
  בחר תנאי:
  <br />
  <select id="cu1" name="cu1">
  <option id="username" value="username" selected="selected">username</option>
  <option id="password" value="password">password</option>
  <option id="admin" value="admin">admin</option>
  <option id="age" value="age">age</option>
  <option id="hobbies" value="hobbies">hobbies</option>
  <option id="email" value="email">email</option>
  <option id="gender" value="gender">gender</option>
  <option id="firstName" value="firstName">firstName</option>
  <option id="lastName" value="lastName">lastName</option>
  <option id="address" value="address">address</option>
  </select>
  <br />
  מכיל:
  <input id="cu2" name="cu2" type="text" />
  <input type="submit" name="submit" id="submit" value="בחר" />
  </form>
  <%=cuError %>
  <%=num %>
</asp:Content>

