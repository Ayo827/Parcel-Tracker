package com.example.trackcourier;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.*;


@WebServlet("/login")
public class LoginUserServlet extends HttpServlet {
//    private String message;
//
//    public void init() {
//        message = "Hello World!";
//    }

    private static final long serialVersionUID = 1L;
    public LoginUserServlet() {
        super();
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String email_id = request.getParameter("email_id");
        String password = request.getParameter("password");
           response.sendRedirect("signup.jsp");

           String dashboard = "dashboard.jsp";
            RequestDispatcher req = request.getRequestDispatcher(dashboard);
            req.include(request, response);

//        else
//        {
////            try {
//                TrackProcedures pro = new TrackProcedures();
//                pro.account_signup(name,
//                        name,
//                        email_id,
//                        password);
//            RequestDispatcher req = request.getRequestDispatcher("dashboard.jsp");
//            req.forward(request, response);
////            } catch (SQLException e) {
////                e.printStackTrace();
////            }
//
//        }
//        response.sendRedirect("signup.jsp");
    }

    public void destroy() {
    }
}
