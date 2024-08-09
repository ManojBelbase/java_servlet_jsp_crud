package com.registe.np;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class UpdateData
 */
public class UpdateData extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Roll= request.getParameter("roll");
		
		Connection conn= DbConnect.getConnection();
		String query="Select * from register where roll=?";
		
		try {
			Student s= new Student();
			List<Student> li = new ArrayList<Student>();
			
			PreparedStatement stmt= conn.prepareStatement(query);
			stmt.setString(1, Roll);
			ResultSet rs= stmt.executeQuery();
			
			while(rs.next()) {
				
				s.setRoll(rs.getString("roll"));
				s.setName(rs.getString("name"));
				s.setEmail(rs.getString("email"));
				s.setPassword(rs.getString("password"));
				
				li.add(s);
			}
			
			request.setAttribute("update_key", li);
			RequestDispatcher rd = request.getRequestDispatcher("update.jsp");
			rd.forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
