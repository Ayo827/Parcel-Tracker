package com.example.trackcourier;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.*;
import java.sql.*;
//import com.example.trackcourier.TrackProcedures;

@WebServlet("/Register")
public class Register extends HttpServlet {
//    private String message;
//
//    public void init() {
//        message = "Hello World!";
//    }

private static final long serialVersionUID = 1L;
    public Register() {
        super();
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String name = request.getParameter("name");
        String email_id = request.getParameter("email_id");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm_password = request.getParameter("confirm_password");
        if(name.isEmpty() || email_id.isEmpty() || username.isEmpty() ||
                password.isEmpty() || confirm_password.isEmpty()){
            RequestDispatcher req = request.getRequestDispatcher("signup.jsp");
           req.include(request, response);
        }
        else
        {
//            try {
//                TrackProcedures pro = new TrackProcedures();
//                pro.account_signup(name,
//                        name,
//                        email_id,
//                        password);
                RequestDispatcher req = request.getRequestDispatcher("dashboard.jsp");
                req.forward(request, response);
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }

        }
//        response.sendRedirect("signup.jsp");
    }

    public void destroy() {
    }
}
//            Connection c = null;
//            Statement stmt = null;
//            try {
//                Class.forName("org.postgresql.Driver");
//                c = DriverManager
//                        .getConnection("jdbc:postgresql://localhost:5432/trackCourier",
//                                "postgres", "Caterpillar");
//                System.out.println("Opened database successfully");
//                stmt = c.createStatement();
//                String sql = "CREATE TABLE Account " +
//                        "(ID INT PRIMARY KEY     NOT NULL," +
//                        " FIRSTNAME           TEXT    NOT NULL, " +
//                        " LASTNAME           TEXT    NOT NULL, " +
//                        " EMAIL            VARCHAR(255)     NOT NULL, " +
//                        "PASSWORD  VARCHAR(200)";
//                stmt.executeUpdate(sql);
//                stmt.close();
//                c.close();
//            } catch ( Exception e ) {
//                System.err.println( e.getClass().getName()+": "+ e.getMessage() );
//                System.exit(0);
//            }
//            System.out.println("Table created successfully");