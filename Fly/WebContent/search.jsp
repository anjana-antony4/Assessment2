<%@page import="jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode"%>
<%@page import="com.flyaway.connection.*" %>
  <%@page import="java.sql.*" %>
  
  
  
 
 <!--        	     <form method="post" action="paynow.jsp">
    
    </form>
	    -->
      
    
    
    
    
  
  <style type="text/css">
	body {
	background-image: url("Adminn.jpg");background-repeat: no-repeat ;background-size: cover;
	
}
 </style>
 
 
 
 
  
        <table width=50% border=1>
      <caption> <b> Available Flights</b></caption>
      
  
      
  <% 
  
  
  String source = request.getParameter("source");
  String destination = request.getParameter("destination");
  String deparature= request.getParameter("deparature");
  String passenger=request.getParameter("passenger");
  /* String noofpass=request.getParameter(rs.getString(7)); */
  
  
 
  String url="jdbc:h2:~/test";
  String username="sa";
  String password="";
   String sql= "select * from flightdetails where source=? and destination=? and departure=? ";
   String sql1= "SELECT COUNT(*) AS rowcount FROM flightdetails where source=? and destination=? and departure=? ";
  try {
	  
	     DbConnection conn= new DbConnection(url,username,password);
	     PreparedStatement st = conn.getConnection().prepareStatement(sql);
	     PreparedStatement st1 = conn.getConnection().prepareStatement(sql1);
	     st.setString(1,source);
	     st.setString(2, destination);
	     st.setString(3, deparature);
	     
	     st1.setString(1,source);
	     st1.setString(2, destination);
	     st1.setString(3, deparature);
	     
	     
	     ResultSet rs= st.executeQuery();
		 ResultSet r = st1.executeQuery();
		 
		 r.next();
		 int count = r.getInt("rowcount");
		 r.close();
		 //out.println("MyTable has " + count + " row(s).");
	     
	     ResultSetMetaData rsmd = (ResultSetMetaData) rs.getMetaData();
		int  total= rsmd.getColumnCount();
	     

	 /*  out.println(total); */
	 
	 for(int i=1;i<=total;i++)
	 {
	 	 
		 %> 
		 <th> <%= rsmd.getColumnName(i)%></th>
		 <% 
	 }
	 
	/*  if (source==destination)
	  {
		  out.print("Source and Destination cannot be same");
	  }  */
	 
	 if (count==0){
		out.println("Sorry No Flights Available for this search criteria");
		
		//out.println(source+" "+destination);
	 }
	/*  else
	 {
		 out.println("no of pass  " + passenger);
	 } */
	 
	  
	  
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
		<td><a href="book.jsp">BOOK NOW</a></td>
		
	  </tr>
	 <% String column1=(rs.getString(7)); 
	// out.println(column1);
	   //String price=request.getParameter("column1");
	   //try{
		// int price1=Integer.parseInt(column1);
		// int passno=Integer.parseInt(passenger);
		// int totalamt=passno * price1;
		// out.println("total"+totalamt);
		//} catch(NumberFormatException ex){ 
			//out.println(ex);
		//}
	   
	 
		 
	   //out.println("price from table"+column1);
	   
	   
//* 	   String price=request.getParameter("column1");
	  // session.setAttribute("column1",price); 
	  // String session_price = (String)session.getAttribute("column1");
	   
	   
	   
    //  out.println("test  "+session_price); */
        
     //int price1=Integer.parseInt(column1);
      
      
      %> 
	  <%
	}
	
	  
  }
  catch (Exception e){
	  out.println(e);
	  
  }
  
  
  

  
   %>
   

   

	   
	   	  
		  
	  
   
  
     </table>
     


     
     
   