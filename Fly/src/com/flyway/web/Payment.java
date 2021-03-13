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
 * Servlet implementation class Payment
 */
@WebServlet("/Payment")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Payment() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	  response.setContentType("text/html");
	 PrintWriter out = response.getWriter();
	 String carddetails = request.getParameter("cno");
	 String cardholdername = request.getParameter("cname");
	 String amount= request.getParameter("amount");
	 //String url="jdbc:mysql://localhost:3306/flyaway";
	 String url="jdbc:h2:~/test";
     String username="sa";
    String password="";

    try
	   {
	   DbConnection conn= new DbConnection(url,username,password); 
	   
	 Statement st= conn.getConnection().createStatement();
	 
	    st.executeUpdate("insert into carddetails values('"+carddetails+"','"+cardholdername+"','"+amount+"');");
	    response.sendRedirect("success.jsp");
	   
	   }
	   catch(Exception e)
	   {
		   out.println(e);
	   }

}
	
	}


