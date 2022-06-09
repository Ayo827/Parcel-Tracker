package com.example.trackcourier;

import java.sql.*;
import java.lang.ClassNotFoundException;


public class TrackProcedures {
    //static final String JDBC_Driver = "org.postgresql.Driver";
    static final String user = "postgres";
    static final String pass = "Caterpillar";
    static final String DB_URL = "jdbc:postgresql://localhost:5432/postgres";

//    public static void initialize() {
//        try {
//            Class.forName("org.postgresql.Driver");
//        } catch (ClassNotFoundException e) {
//            System.out.println("Class not found " + e);
//        }
//    }
    public static void account_signup ( String firstName, String lastName,
                                    String email, String password) throws SQLException
    {
//        String sql = "INSERT INTO Customers VALUES (?,?,?,?)";
//        initialize();
        try
        {
            DriverManager.registerDriver(new org.postgresql.Driver());
            Connection conn = DriverManager.getConnection(DB_URL, user, pass);
            //PreparedStatement pstmt = conn.prepareStatement(sql);
            CallableStatement pstmt = conn.prepareCall("account_signup");
            pstmt.setString(1, firstName);
            pstmt.setString(2, lastName);
            pstmt.setString(3, email);
            pstmt.setString(4, password);

            pstmt.executeUpdate();
            pstmt.close();
        }
        catch (SQLException e)
        {
            System.err.println(e.getMessage());
        }
    }
}
