<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showmsg.aspx.cs" Inherits="showmsg" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%if (Session["login"] == null)
  {
      Response.Write("אתה לא מחובר, ואתה לא מורשה לצפות בהודעה זו");
  }
  else
  {
      Response.Write(showenmsg);
      Response.Write(underpostmsg);
  }
    %>

  
</asp:Content>

