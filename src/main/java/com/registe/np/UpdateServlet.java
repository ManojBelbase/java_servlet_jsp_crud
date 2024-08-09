package com.registe.np;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		
		 
        String myroll = req.getParameter("roll");
        String myname = req.getParameter("name");
        String myemail = req.getParameter("email");
        String mypassword = req.getParameter("password");
		
        Connection conn = DbConnect.getConnection();
        PreparedStatement ps;
		try {
			ps = conn.prepareStatement("update register set name=?, email=?, password=? where roll=?");
			   
		        ps.setString(1, myname);
		        ps.setString(2, myemail);
		        ps.setString(3, mypassword);
		        ps.setString(4, myroll);
		        
		        ps.executeUpdate();
		        response.sendRedirect("ViewData");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
      
	}

}
