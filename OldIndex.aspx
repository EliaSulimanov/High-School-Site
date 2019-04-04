<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OldIndex.aspx.cs" Inherits="OldIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table dir="rtl">
<tr>
<td style="background-color: White;">
<p>
כאן תופיע פרסומת
<br />
182 px
<br />
X
<br />
485 px
</p>
</td>
<td>
    <p class="indexText1">
        אורח חיים בריא זה לא רק אכילה נכונה, אלא גם ספורט.
<br />
ריצה, ריכבה על אופניים, משחקי כדור ושחיה הם חלק ניכר באורח חיים בריא.
<br />
אורח חיים בריא מעלה משמעותית את תוכלת החיים שלנו, עוזר לנו להראות צעירים יותר
<br />
ועוזר לנו להיות בריאים יותר.
    </p>
    <p class="indexText1">
    <%if (Session["login"] == null)
      {
          Response.Write("אם הינך משתמש/ת רשום/ה אנא התחבר/י לקבלת תפריטים נוספים.");
          Response.Write("<br />");
          Response.Write("אם לא, אנא הרשם/י, זה יקח לך רק 15 שניות.");
          Response.Write("<br />");
      }
%>
        <iframe width="560" height="315" src="http://www.youtube.com/embed/TaRrafWIFrc?rel=0" frameborder="0"></iframe>
    </p>
</td>
<td>    
<p>
<marquee direction="up" height="450 px" scrollamount="3"> <%=newsfeeds%> </marquee>
</p>
</td>
</tr>
</table>
</asp:Content>

