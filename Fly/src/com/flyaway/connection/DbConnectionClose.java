package com.flyaway.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnectionClose {
	public Connection connection;
	//init method
	
	public DbConnectionClose(String url,String username,String password) throws ClassNotFoundException, SQLException {
		//1.reg jdbc driver class
		//Class.forName("com.mysql.cj.jdbc.Driver");
		Class.forName("org.h2.Driver");
		 //2. create the connection
		this.connection=DriverManager.getConnection(url, username, password);
		
		
		
	}
	//get the connection
	public Connection getConnection()
	{
		return this.connection;
		
	}
	//close the connection
	public void closeConnection() throws SQLException
	{
		if(this.connection != null)
		{
			this.connection.close();
		}
	}
public static void main() {
	try {
		DbConnectionClose dlpclose=new DbConnectionClose("jdbc:h2:~/test","sa","");
		dlpclose.closeConnection();
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		
	}
	
	
}
}
