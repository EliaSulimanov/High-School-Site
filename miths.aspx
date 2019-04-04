<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="miths.aspx.cs" Inherits="miths" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%if (Session["login"] == null)
  {
      Response.Redirect("index.aspx");
  } %>
<h1>מס' מיתוסים על ריצה שחייבים לנפץ</h1>
<p dir="rtl">
    <span class="mithHadder">כושר משפר את איכות חיינו אך לא מאריך
<br />
    </span><span class="trueFalse">לא נכון !
</span>
<br />
    <span class="mithdisc">יש קשר ישיר בין ביצוע אימון גופני באופן סדיר לעלייה בתוחלת החיים, וככל<br />
שהכושר הגופני של האדם טוב יותר, הוא מגדיל בצורה משמעותית<br />
את תוחלת החיים שלו.
</span>
<br />
    <br />
    <span class="mithHadder">אם יש נטייה גנטית להשמנה, אימון גופני לא יעזור להוריד משקל.<br />
    </span><span class="trueFalse">לא נכון !
    </span>
    <br />
    <span class="mithdisc">נמצא שביצוע סדיר
    <br />
של פעילות גופנית גרם לירידה של כ‭30%-‬ במסת השומן בגוף בלי קשר לפרופיל הגנטי.
<br />
המסקנה: השפעת האימון הגופני בשילוב עם תזונה חזקה יותר מהנטייה הגנטית להשמנה.
    </span>
    <br />
<br />
    <span class="mithHadder">ריצה עלולה לגרום לכאבי גב</span>. 
<br /> 
    <span class="trueFalse">לא נכון!
</span>
<br />
    <span class="mithdisc">בקרב מתאמנים שרצים באופן קבוע וגם בקרב
<br />
מתאמנים שהתחילו לרוץ בצורה הדרגתית לא חלה עלייה בשכיחות
<br />
כאבי הגב. למעשה זו הייתה הפציעה שהופיעה בשיעור הנמוך ביותר.
    </span>
    <br />
    <br />
    <span class="mithHadder">לרצים או לרוכבי אופניים אין צורך בחיזוק נוסף של שרירי הרגליים.<br />
    </span><span class="trueFalse">! לא נכון</span><br />
    <span class="mithdisc">נמצא שחיזוק שרירי הרגליים גורם להפחתת הפציעות<br />
הנובעות מהפעילות וגם משפר את תפקוד השרירים בזמן הפעילות<br />
עצמה. בכלל, כל אימון גופני, אפילו הקל ביותר, שמבוצע לאורך זמן משפר את המצב הבריאותי</span></p>
<p><a href="bib.aspx">בבליוגרפיה</a></p>
</asp:Content>