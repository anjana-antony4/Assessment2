<%@page import="com.flyaway.connection.*" %>
  <%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
	body {
	background-image: url("Adminn.jpg");background-repeat: no-repeat ;background-size: cover;
	
}

</style>




<body>
   <form action="Payment" method="post"> 
   
   
   


 <fieldset> 
    
       
          <legend>			payment</legend>
           card number:<input type="text" name="cno" required><br><br>  
           cardholder name:<input type="text" name="cname" required><br> <br>
           Amount: <input type="text" name="amount"><br> <br> 
           <input type="submit" value="paynow">
            </fieldset>
           <% 
  /*          String session_price = (String)session.getAttribute("column1");
           out.println(session_price); */
           
           %>
           </form>
           
           </body>
           </html>
           

