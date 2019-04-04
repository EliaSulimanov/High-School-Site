<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newunderpost.aspx.cs" Inherits="newunderpost" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <table border="1" dir="rtl">
            <tr>
            <td>
            הגב:
            <br />
            <form action="" method="post" id="underPost">
            <textarea name="underpost" id="underpost" rows="8" cols="80"></textarea>
            <br />
            <input type="submit" id="submit" name="submit" value="הגב" />
            </form>
            </td>
            </tr>
            </table>
            <a href="forum.aspx">חזרה לפורום</a>
</asp:Content>

