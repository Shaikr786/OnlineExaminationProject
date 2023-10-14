<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
    <%
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String mobile = request.getParameter("mobile");
        String address = request.getParameter("address");
        

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the database
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/students", "root", "Reshma@123");

            // Check if the user is already registered
            String checkSql = "SELECT COUNT(*) AS count FROM users WHERE username = ?";
            PreparedStatement checkStatement = connection.prepareStatement(checkSql);
            checkStatement.setString(1, username);
            ResultSet resultSet = checkStatement.executeQuery();
            resultSet.next();
            int count = resultSet.getInt("count");
            
            // Close the resources for the check
            resultSet.close();
            checkStatement.close();

            if (count > 0) {
    %>
                <p>Sorry, <%= username %> is already registered.</p>
    <%
            } else {
                // Create a prepared statement to insert user data
                String insertSql = "INSERT INTO users (fname,lname, email,username, password, mobile, address) VALUES (?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement insertStatement = connection.prepareStatement(insertSql);
                insertStatement.setString(1, fname);
                insertStatement.setString(2, lname);
                insertStatement.setString(3, email);
                insertStatement.setString(4, username);
                insertStatement.setString(5, password);
                insertStatement.setString(6, mobile);
                insertStatement.setString(7, address);

                // Execute the query
                int rowsAffected = insertStatement.executeUpdate();
                
                // Close the resources for insertion
                insertStatement.close();
                connection.close();

                // Check if the registration was successful
                if (rowsAffected > 0) {
    %>
                    <p>Registration successful! Welcome, <%= username %></p>
                    <% 
                    session.setAttribute("fname", fname);
                    session.setAttribute("lname", lname);
                    session.setAttribute("username", username);
                    session.setAttribute("email", email);
                    session.setAttribute("mobile", mobile);
                    session.setAttribute("address", address);
                    response.sendRedirect("profile.jsp");
                    %>
                    
    <%		
                } else {
    %>
                    <p>Registration failed. Please try again.</p>
    <%
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("An error occurred: " + e.getMessage());
        }
    %>
</body>
</html>

