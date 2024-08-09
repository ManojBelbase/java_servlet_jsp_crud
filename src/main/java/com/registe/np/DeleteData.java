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

@WebServlet("/deleteData")
public class DeleteData extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roll = request.getParameter("roll");
        Connection conn = DbConnect.getConnection();
        String query = "DELETE FROM register WHERE roll=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, roll);
            int res = stmt.executeUpdate();

            if (res > 0) {
                response.sendRedirect("viewData");
            } else {
                response.getWriter().print("Error: Could not delete data");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
