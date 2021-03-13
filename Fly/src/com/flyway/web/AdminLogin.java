package com.flyway.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String  name=request.getParameter("name");
        String password= request.getParameter("password");
        if(name.equals("admin123") && password.equals("admin123"))
        {
     	   HttpSession session= request.getSession();
     	   session.setAttribute("uname", name);
     	   
     	   response.sendRedirect("adminHome.jsp");
        }
        else
        {
     	   out.println("enter the valid username and password");
        }
	}

}
