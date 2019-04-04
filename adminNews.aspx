<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminNews.aspx.cs" Inherits="adminNews" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form action="" method="post">
        <textarea id="newNews" name="newNews" cols="20" rows="2">
        Enter Text
        </textarea>
        <input id="submit" name="submit" type="submit" value="שלח" />
        </form>
        <%=stat %>
</asp:Content>

