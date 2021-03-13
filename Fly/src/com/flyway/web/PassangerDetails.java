package com.flyway.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flyaway.connection.DbConnection;

/**
 * Servlet implementation class PassangerDetails
 */
@WebServlet("/PassangerDetails")
public class PassangerDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PassangerDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		   PrintWriter out = response.getWriter();
		   String fname= request.getParameter("fname");
           String lname= request.getParameter("lname");
           String dob= request.getParameter("dob");
          //String age= request.getParameter("age");
          String email= request.getParameter("email");
         String number= request.getParameter("number");
         //String url="jdbc:mysql://localhost:3306/flyaway";
         String url="jdbc:h2:~/test";
           String username="sa";
          String password="";

          try
   	   {
   	   DbConnection conn= new DbConnection(url,username,password); 
   	   
   	 Statement st= conn.getConnection().createStatement();
   	 
   	    st.executeUpdate("insert into passangerdetails values('"+fname+"','"+lname+"','"+dob+"','"+email+"', '"+number+"');");
   	    response.sendRedirect("paynow.jsp");
   	 out.println("test passenger det");
   	   
   	   }
   	   catch(Exception e)
   	   {
   		   out.println(e);
   	   }

	}

}
