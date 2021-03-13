<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FLYAWAY</title>
</head>



<style type="text/css">
	body {
	background-image: url("Adminn.jpg");background-repeat: no-repeat ;background-size: cover;
	
}

</style>

   <h2> <p style="text-align:center">FLYAWAY</p></h2>
   <h4> <p style="text-align:center">We help you fly</p></h2>






 <body> 

      <form method="post" action="search.jsp">
       
       FROM :<input type="text" name="source" placeholder="eg:chennai" required >    
        To  :<input type="text" name="destination" placeholder="eg:bangalore" required>
        Deparature(dd/mm/yyy) :<input type="date" name="deparature" min="2021-03-02" max="2021-12-02" required>
        
       No of Passengers <select name="passenger" id="passenger">
       
        <option value="1">1 </option>
         <option value="2">2 </option>
          <option value="3">3 </option>
           <option value="4">4 </option>
           <option value="5">5 </option>
            <option value="6">6 </option>
             <option value="7">7 </option>
              <option value="8">8 </option>
               <option value="9">9 </option>
               

      </form>
}
 
       </select>
          <input type="submit" value="search"> <br><br> 
          
      </form>
       




<a href="admin.jsp">ADMIN</a> <br><br><br>
 <!-- <footer> &copy;  flyaway.com  -->

</body>
</html>