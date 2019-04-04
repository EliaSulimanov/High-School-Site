<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="links.aspx.cs" Inherits="links" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<%if (Session["login"] != null)
  {
      Response.Write("<h1>לינקים שימושיים</h1>");
      Response.Write(favlinks);
  }
  else
  {
      Response.Write("חלק זה באתר הוא לרשומים בלבד");
  } %>

 
 </center>
</asp:Content>