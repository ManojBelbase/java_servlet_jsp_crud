package com.registe.np;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/viewData")
public class ViewData extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Student> list = new ArrayList<>();

            String query = "SELECT * FROM register";
            Connection conn = DbConnect.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                String roll = rs.getString("roll");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String password = rs.getString("password");

                Student stu = new Student();
                stu.setRoll(roll);
                stu.setName(name);
                stu.setEmail(email);
                stu.setPassword(password);
                list.add(stu);
            }

            request.setAttribute("student", list);
            RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
            rd.forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
