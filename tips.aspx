<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tips.aspx.cs" Inherits="tips" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%if (Session["login"] == null)
  {
      Response.Redirect("index.aspx");
  } %>
<h1>מספר טיפים לריצה נכונה</h1>
<ul dir="rtl">
<li>
<a href="#speed">
מהר או לאט?
</a>
</li>
<li>
<a href="#base">
בסס את האימון שלך
</a>
</li>
</ul>
<p dir="rtl">
<a name="speed">
    <span class="tipsBigHead">מהר או לאט?</span>
    </a>
    <br />
    <img alt="מהר או לאט?" src="img/tips/1.jpg" style="height: 147px; width: 224px" />
<br />
    <span class="tipsBody">נשמע שקל להחליט, מהר או לאט.
<br />
אבל זו החלטה לא פשוטה בכלל, מה המהירות המושלמת לריצה?
<br />
ההחלטה הזו קשה אף יותר אם אתה רץ מתחיל.
<br />
תמיד עולה השאלה: "אני רץ לאט מדי? אני רץ מהר מידי?"
<br />
אנחנו יכולים לרוץ 100% מאיתנו, הנה איך לבחור מהירות בכל אימון:
</span>
</p>
<p dir="rtl">
    <span class="tipsHead">מצא את בסיס ה 5-K שלך(5 קילומטר)
<br />
    </span><span class="tipsBody">המון אימוני ריצה מבוססים על 5K.
<br />
אבל אם בחיים לא רצת 5K או שעבר זמן מה מהפעם האחרונה כנראה
<br />
שאתה מתחת או מעל למהירות שבה אתה אמור לרוץ.
</span>
</p>
<p dir="rtl">
    <span class="tipsHead">להבין את זה
</span>
<br />
    <span class="tipsBody">צא לריצת 5K ורוץ במהירות שתהיה הכי קשה לך.
<br />
אתה לא יוצא למירוץ?
<br />
תרוץ 2 קילומטרים, את הראשון במהירות שנוחה לך, ואת השני במהירות
<br />
כך שבסוף הריצה תוכל לדבר רק בהברות.
<br />
לא משנה מה המהירות שבה רצת, הקילומטר האחרון הוא אינדיקטור מעולה למהירות בה אתה צריך לרוץ.
<br />
כמה ימים לאחר מכן צא לריצה של 3K.
<br />
הקילומטר הראשון יהיה במהירות שבה רצה באימון הקודם שהוזכר, לאחר מכן תאט לג'וגינג של 800 
<br />
מטר, ואז שוב תרוץ בצורה המהירה כמו בהתחלה.
<br />
אם המהירות בה רצת בסוף דומה למהירות של ההתחלה, זו המהירות האידיאלית לך.
</span>
</p>


<p dir="rtl">
<a name="base">
    <span class="tipsBigHead">בסס את האימון שלך</span>
    </a>
    <br />
    <img alt="בסס את האימון שלך" src="img/tips/2.jpg" 
        style="height: 149px; width: 228px" /><br />
    <span class="tipsBody">המון רצים מתחילים חושבים שאימון ריצה זה לצאת החוצה
<br />
לרוץ ולחזור. זה לא נכון.
<br />
אימון דורש מחשבה רבה לפני; מה המהירות שבא אני רץ
<br />
לאיזה אורך אני רוצה לרוץ, כמה זמן אני רוצה לרוץ, ועוד...
</span>
</p>
<p dir="rtl">
    <span class="tipsHead">תזמון זה עניין של timing
<br />
    </span><span class="tipsBody">האתלטים המקצועיים מתאמנים 1-4 פעמים בשבוע.
<br />
אבל אם אתה לא יוצא למרתון, בורח ממס הכנסה, 
<br />
אתה יכול להתאמן כמה שתרצה.
<br />
מפעם בשבוע לפעם בחודש, כשפעם בחודש זה המינימום המומלץ.
</span>
</p>
</asp:Content>

