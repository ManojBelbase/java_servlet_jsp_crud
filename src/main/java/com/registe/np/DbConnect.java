package com.registe.np;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnect {
public static Connection getConnection() {
	Connection conn= null;
	String url="jdbc:mysql://localhost:3306/registration_demo";
	String user="root";
	String password="manoj";
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url,user,password);
	} catch (SQLException e) {
		// TODO: handle exception
		e.printStackTrace();
		System.out.println("Error in sql query");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	if(conn!=null) {
		System.out.println("");
	}
	else {
		System.out.println("Connection in not establish");
	}
	return conn;
	
	
}
}
