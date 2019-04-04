<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="javascript">	
         <!--     
           

         var picName1=new Image();
         var picName2=new Image();       
         var picName3=new Image(); 
         var picName4=new Image();
	     var picName5=new Image();
	     var picName6=new Image();
	     var picName7=new Image();
	     var picName8=new Image();
	     var picName9=new Image();
	     var picName10=new Image();
	     var picName11=new Image();
	     var picName12=new Image();
	     var picName13=new Image();
	     var picName14=new Image();
	     var picName15=new Image();
	     var picName16=new Image();
	     var picName17=new Image();
	     var picName18=new Image();
	     var picName19=new Image();
	     var picName20=new Image();
	     var picName21=new Image();
	     var picName22=new Image();
	     var picName23=new Image();
	     var picName23=new Image();
	     var picName24=new Image();
	     var picName25=new Image();
      

	var picName=new Array();


   
     picName1.src="img/2014.jpg";
     picName2.src="img/2015.jpg";
     picName3.src="img/32137658_wa.jpg";
     picName4.src="img/homer_running.jpg";
     picName5.src="img/tips/1.jpg";
	 picName6.src="img/tips/2.jpg";
     picName7.src="img/tips/3.jpg";
	 picName8.src="img/tips/4.jpg";
	 picName9.src="img/tips/5.jpg";
	 picName10.src="img/image001(9).gif";
	 picName11.src="img/iStock_running.jpg";
	 picName12.src="img/logo.jpg";
	 picName13.src="img/outdoor-running.jpg";
	 picName14.src="img/running.jpg";
	 picName15.src="img/running1.jpg";
	 picName16.src="img/running2.jpg";
	 picName17.src="img/running3.jpg";
	 picName18.src="img/RunningCert0108AllisonNYC3.jpg";
	 picName19.src="img/RunningCert0108EvaT.jpg";
	 picName20.src="img/runningmarathon.jpg";
	 picName21.src="img/The_Horse_in_Motion.jpg";
	 picName22.src="img/Usain-Bolt-Blurry.jpg";
	 picName23.src="img/Woman-Running-on-Beach.jpg";
	 picName24.src="img/women-running-beach-sunrise1.jpg";

	
 	
       var picArray=new Array();

	picArray[0]=picName1.src;
	picArray[1]=picName2.src;
	picArray[2]=picName3.src;
	picArray[3]=picName4.src;
	picArray[4]=picName5.src;
	picArray[5]=picName6.src;
	picArray[6]=picName7.src;
	picArray[7]=picName8.src;
	picArray[8]=picName9.src;
	picArray[9]=picName10.src;
	picArray[10]=picName11.src;
	picArray[11]=picName12.src;
	picArray[12]=picName13.src;
	picArray[13]=picName14.src;
	picArray[14]=picName15.src;
	picArray[15]=picName16.src;
	picArray[16]=picName17.src;
	picArray[17]=picName18.src;
	picArray[18]=picName19.src;
	picArray[19]=picName20.src;
	picArray[20]=picName21.src;
	picArray[21]=picName22.src;
	picArray[22]=picName23.src;
	picArray[23]=picName24.src;

	

	var i=0;
        //var x;
        function animation(option)
           {    
             if (option==2)
              {
		    clearTimeout(x);	//  stop the animation and return!
		    return;
              }
             
             else if (option==1)     // start the animation again.
               {
             	x=setTimeout('animation(1)',800);                                                  
               }
             else // option==3
		{
		  clearTimeout(x);	//  stop the animation and continue to the next lines.
                 }
              // -----------------------------------------------------
              // do the next lines either when option==1 or option==3
              // -----------------------------------------------------
		  document.picture.src=picArray[i];  //after 'stop' - one by one           
	          i++;
                  i=i%23; 		
                                    
	   }  // end  function animation(option)


    //-->
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%if (Session["login"] != null)
  {
      Response.Write(" <table dir=rtl>");
      Response.Write(" <tr>");
      Response.Write(" <td>");
      Response.Write(" <img alt=ריצה src=img/2014.jpg height=150 width=200 />");
      Response.Write(" </td>");
      Response.Write(" <td>");
      Response.Write(" <img alt=ריצה src=img/2015.jpg height=150 width=200 />");
      Response.Write(" </td>");
      Response.Write(" <td>");
      Response.Write(" <img alt=ריצה src=img/32137658_wa.jpg height=150 width=200 />");
      Response.Write(" </td>");
      Response.Write(" <td>");
      Response.Write(" <img alt=ריצה src=img/homer_running.jpg height=150 width=200 />");
      Response.Write(" </td>");
      Response.Write(" <td>");
      Response.Write(" <img alt=ריצה src=img/tips/1.jpg height=150 width=200 />");
      Response.Write(" </td>");
      Response.Write(" </tr>");
      Response.Write(" <tr>");
      Response.Write(" <td>");
      Response.Write(" <img alt=ריצה src=img/tips/2.jpg height=150 width=200 />");
      Response.Write(" </td>");
      Response.Write(" <td>");
      Response.Write(" <img alt=ריצה src=img/tips/3.jpg height=150 width=200 />");
      Response.Write(" </td>");
      Response.Write(" <td>");
      Response.Write(" <img alt=ריצה src=img/tips/4.jpg height=150 width=200 />");
      Response.Write(" </td>");
      Response.Write(" <td>");
      Response.Write(" <img alt=ריצה src=img/tips/5.jpg height=150 width=200 />");
      Response.Write(" </td>");
      Response.Write(" <td>");
      Response.Write(" <img alt=ריצה src=img/outdoor-running.jpg height=150 width=200 />");
      Response.Write(" </td>");
      Response.Write(" </tr>");
      Response.Write(" </table>");
      Response.Write(" <center>");
      Response.Write(" <img width='300' height='220' src='img/2014.jpg' name='picture' alt='תמונות משתנות' >");
      Response.Write(" <br />");
      Response.Write(" <input type='button' name='stop' value='עצור אנימציה'  width='85px' onclick='animation(2)'>");
      Response.Write(" <input type='button' name='start' value='התמונה הבאה' width='85px' onclick='animation(3)'>");
      Response.Write(" <input type='button' name='Auto' value='הפעל אנימציה' width='85px' onclick='animation(1)'>");
      Response.Write(" </center>");
  }
  else
  {
      Response.Write("חלק זה באתר הוא לרשומים בלבד!");
  }
%>
</asp:Content>

