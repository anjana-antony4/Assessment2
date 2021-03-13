<%@page import="jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode"%>
<%@page import="java.sql.*" %>
<%@page import="com.flyaway.connection.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>  
<%
  if(session.getAttribute("uname")==null)
  {
	  response.sendRedirect("admin.jsp");
  }

%>

   <h2> Welcome to admin page </h2>
   <h3> Available Flights </h3>
    <table width=50% border=1>

            <% 
  
  
  String source = request.getParameter("source");
  String destination = request.getParameter("destination");
  String deparature= request.getParameter("deparature");
  String passenger=request.getParameter("passenger");

  
  
 
  String url="jdbc:h2:~/test";
  String username="sa";
  String password="";
   String sql= "select * from flightdetails" ;

  try {
	  
	     DbConnection conn= new DbConnection(url,username,password);
	     PreparedStatement st = conn.getConnection().prepareStatement(sql);
	     ResultSet rs= st.executeQuery();
 	     ResultSetMetaData rsmd = (ResultSetMetaData) rs.getMetaData();
		int  total= rsmd.getColumnCount();
	      for(int i=1;i<=total;i++)
	 {
	 	 
		 %>
 <th> <%= rsmd.getColumnName(i)%></th>

<% 

}

while(rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%= rs.getString(4)%></td>
		<td><%= rs.getString(5)%></td>
		<td><%= rs.getString(6)%></td>
		<td><%= rs.getString(7)%></td>
		
	  </tr>

    
	  <%
	}

  }
  catch (Exception e){
	  out.println(e);
	  
  }
  
  
  

  
   %>
   
           
 </table>







 
 
       <form action="addDetails" method="post"> 
       <fieldset> 
          <legend>fill the details</legend>
       Flight no :<input type="text" name="fno"><br><br>
       Flight Name:<input type="text" name="fname"><br><br>
       source :<input type="text" name="source"><br><br> 
       destination :<input type="text" name="destination"><br><br>
       deparature(dd-mm-yyyy) :<input type="date" name="deparature"><br><br>
         Arrive (dd-mm-yyyy):<input type="date" name="arrive"><br><br>
            
         price :<input type="text" name="price"><br><br>
           <input type="submit" value="add"> <br>
           
           
           
           
           
           

           
           
           
           
           
           
           
           
           
           
           
           
           
           
           </fieldset> 
           </form>
           <a href="admin.jsp">Logout</a>
           <a href="changePassword.jsp">Change password</a>
</body>
</html>