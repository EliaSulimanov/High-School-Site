<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="answers.aspx.cs" Inherits="answers" Title="Untitled Page" %>

<script runat="server">
int one, two, three, numberOfVotes = 0;
    public void Page_Load()
    {
        switch (Request.Form["poll"])
        {
            case "one":
                Application["one"] = (int)(Application["one"]) + 1; break;
            case "two":
                Application["two"] = (int)(Application["two"]) + 1; break;
            case "three":
                Application["three"] = (int)(Application["three"]) + 1; break;
        }

        //צור משתנים בשם התשובות ומספר הקולות
        one = 0;
        two = 0;
        three = 0;
        //עדכן את מספר הקולות
        numberOfVotes = (int)Application["one"] + (int)Application["two"] + (int)Application["three"];

        //הכנס לכל משתנה את אחוזי המצביעים בו
        if (numberOfVotes != 0)
        {
            one = (int)(Application["one"]);
            one = one * 100;

            one = one / numberOfVotes;



            two = (int)(Application["two"]);
            two = two * 100;

            two = two / numberOfVotes;




            three = (int)(Application["three"]);
            three = three * 100;

            three = three / numberOfVotes;

        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%if(Session["login"] == null)
  {
      Response.Redirect("index.aspx");
  } %>
<table width="500" dir="rtl">
  <tr>
  <td>
  <b>
        תוצאות הסקר:
  </b>
  </td>
  </tr>
  <tr>
  <td>
        נעליים טובות
  </td>
  <td width="300">
  <table bgcolor="red" width="<%=one %>%">
  <tr>
  <td>
  <font size="1" color="white">
        <%=one %>%
  </font>
  </td>
  </tr>
  </table>
  </td>
  </tr>
  <tr>
  <td>
        מצב רוח טוב
  </td>
  <td>
  <table bgcolor="red" width="<%=two%>%">
  <tr>
  <td>
  <font size="1" color="white">
        <%=two%>%
  </font>
  </td>
  </tr>
  </table>
  </td>
  </tr>
  <tr>
  <td>
        תנאי שטח טובים
  </td>
  <td>
  <table bgcolor="red" width="<%=three%>%">
  <tr>
  <td>
  <font size="1" color="white">
        <%=three%>%
  </font>
  </td>
  </tr>
  </table>
  </td>
  </tr>
  </table>
        סה"כ הצבעות:
 <b>
        <%=numberOfVotes%>
 </b>
</asp:Content>