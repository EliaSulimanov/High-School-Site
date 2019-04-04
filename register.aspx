<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<script type="text/javascript">
    function Check()
      {

        if (EmptyField(register.nuser,'אנא הזן שם משתמש'))
            return false;
            
        if (EmptyField(register.npass,'אנא הזן סיסמה'))
            return false;

        if (EmptyField(register.npass1,'אנא הזן סיסמה לאימות'))
            return false;

        if (register.npass.value != register.npass1.value)
        {
            register.npass1.focus();
            register.npass1.select();
            alert("הסיסמאות אינן זהות");
            return false;
        }
            
        if (EmptyField(register.fname,'אנא הזן שם פרטי'))
            return false;

        if (!NoDigits(register.fname,'אסור שבשם הפרטי יהיו ספרות'))
            return false;
            
        if (EmptyField(register.lname,'אנא הזן שם משפחה'))
            return false;

        if (!NoDigits(register.lname,'אסור שבשם המשפחה יהיו ספרות'))
            return false;
            
        if (EmptyField(register.email,'אנא הזן אימייל'))
            return false;

        if ((register.email.value.indexOf("@") == -1)||(register.email.value.indexOf(".") == -1))
        {
            register.email.focus();
            register.email.select();
            alert("אימייל לא תקין");
            return false;
        }
                     
      return true;
      }
      
      
      function EmptyField(field, errMsg)
      {
        if (field.value=="")
        {
            field.focus();
            field.select();
            alert(errMsg);
            return true;
        }
        return false;
      }
      function NoDigits(field, errMsg)
      {

        for(i=0;i<field.value.length;i++)
        {
            if ((field.value.charAt(i)>='0')&&(field.value.charAt(i)<='9'))
            {
                field.focus();
                field.select();
                alert(errMsg);
                return false;
            }
        }
        return true;
      }
      /* במקרה וארצה להוסיף שדה טלפון

      function AllDigits(field, errMsg)
      {

        for(i=0;i<field.value.length;i++)
        {
            if ((field.value.charAt(i)<'0')||(field.value.charAt(i)>'9'))
            {
                field.focus();
                field.select();
                alert(errMsg);
                return false;
            }
        }
        return true;
      }
      */
</script>
    <style type="text/css">
        .style2
        {
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<b>
<%=check1 %>
<%=RegStatus%>
</b>
<form id="register" name="register" action="" method="post">
<table dir="rtl">
<tr>
<td>
    <span class="style2">*</span>
שם משתמש:
</td>
<td>
<input type="text" id="nuser" name="nuser" maxlength="8" />
</td>
</tr>
<tr>
<td>
    <span class="style2">*</span>סיסמה:
</td>
<td>
<input type="password" id="npass" name="npass" maxlength="8" />
</td>
</tr>
<tr>
<td>
    <span class="style2">*</span>וידוי סיסמה:
</td>
<td>
<input type="password" id="npass1" name="npass1" maxlength="8" />
</td>
</tr>
<tr>
<td>
    <span class="style2">* </span>שם פרטי:
</td>
<td>
<input type="text" id="fname" name="fname" />
</td>
</tr>
<tr>
<td>
    <span class="style2">* </span>שם משפחה:
</td>
<td>
<input type="text" id="lname" name="lname" />
</td>
</tr>

<tr>
<td>
    גיל:
</td>
<td>
<select id="age" name="age">
<option id="0-10" value="0-10">0-10</option>
<option id="11-20" value="11-20" selected="selected">11-20</option>
<option id="21-30" value="21-30">21-30</option>
<option id="31-40" value="31-40">31-40</option>
<option id="41-50" value="41-50">41-50</option>
</select>
</td>
</tr>

<tr>
<td>
    <span class="style2">* </span>אימייל:
</td>
<td>
<input type="text" id="email" name="email" />
</td>
</tr>

<tr>
<td>
עיר מגורים
</td>
<td>
<input type="text" id="address" name="address" />
</td>
</tr>

<tr>
<td>
תחביבים:
</td>
<td>

<table>

<tr>
<td>
<input type="checkbox" id="hobbies" name="hobbies" value="כדורגל" />
</td>
<td>
כדורגל
</td>
</tr>

<tr>
<td>
<input type="checkbox" id="hobbies2" name="hobbies" value="כדורסל" />
</td>
<td>
כדורסל
</td>
</tr>

<tr>
<td>
<input type="checkbox" id="hobbies3" name="hobbies" value="אופניים" />
</td>
<td>
אופניים
</td>

</tr>

<tr>
<td>
<input type="checkbox" id="hobbies4" name="hobbies" value="מחשבים" />
</td>
<td>
מחשבים
</td>
</tr>
</table>

</td>
</tr>
<tr>
<td>
מין:
</td>
<td>
<input type="radio" id="gender" name="gender" value="male" /> זכר
<input type="radio" id="gender2" name="gender" value="female" /> נקבה
</td>
</tr>
<tr>
<td>
<input type="submit" id="submit" name="submit" value="הרשם" onclick="return Check()" />
</td>
<td>
<input type="reset" value="נקה" />
</td>
</tr>
<tr>
<td colspan="2">
שדות שלידם מופיע כוכבית <span class="style2">* </span> הנם שדות חובה
</td>
</tr>
</table>
</form>
</asp:Content>