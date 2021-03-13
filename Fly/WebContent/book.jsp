<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>passanger details</title>
</head>
<style type="text/css">
	body {
	background-image: url("Adminn.jpg");background-repeat: no-repeat ;background-size: cover;
	
}

</style>
<body>
     <form action="PassangerDetails" method="post"> 
       <fieldset> 
          <legend>fill the passanger details</legend>
       First Name:<input type="text" name="fname" required><br><br>
       last Name:<input type="text" name="lname" required><br><br>
        DOB(dd/mm/yyy):<input type="date" name="dob" min="1930-03-02" max="2021-03-12" required><br><br> 
            <!-- age :<input type="text" name="age" required><br><br> -->
            email:<input type="email" name="email" required><br><br>
            mobile number:<input type="text" name="number" required><br><br>
           <input type="submit" value="add"> <br>
           </fieldset> 
           </form>
</body>
</html>