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
 * Servlet implementation class AddFlightDetails
 */
@WebServlet("/addDetails")
public class AddFlightDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFlightDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		 String fno= request.getParameter("fno");
	       String fname= request.getParameter("fname");
	       String source= request.getParameter("source");
	       String destination= request.getParameter("destination");
	       String deparature= request.getParameter("deparature");
	       String arrive= request.getParameter("arrive");
	       String price= request.getParameter("price");
	       //String url="jdbc:mysql://localhost:3306/flyaway";
	       String url="jdbc:h2:~/test";
		   String username="sa";
		   String password="";
		   try
		   {
		   DbConnection conn= new DbConnection(url,username,password); 
		   
		 Statement st= conn.getConnection().createStatement();
		 
		    st.executeUpdate("insert into flightdetails values('"+fno+"','"+fname+"','"+source+"','"+destination+"','"+deparature+"', '"+arrive+"', '"+price+"');");
		    response.sendRedirect("adminHome.jsp");
		   
		   }
		   catch(Exception e)
		   {
			   out.println(e);
		   }

}
}