<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <style>
    body{
    background-image:url('bg2.jpg') ;
    background-size: cover;
    height:100vh;
    background-repeat: no-repeat; 
    position:relative;
    }
    .total{
    display: grid; 
    margin:5% 1% 0 830px;
    position:absolute;
    line-height:30px;
    height:100%;
    }
    .main{
    justify-content: right ;
    height:486px;
    position:fixed;
    width:280px;
    background-image:url('profile.jpeg'); 
    background-size: cover;
    background-repeat: no-repeat; 
    color:white;
    border:2px solid black;
    }
    img{
    justigy-content:center;
    position:relative;
     display: grid;
     border:3px solid ;
     border-radius: 100px;
    
    }
    .parent{
    display: grid; 
    justify-content: center;
    align-items: center; 
    }
    
    .forms{
    margin:0 1%;
    display:flex;
    position:fixed;text-align: left;padding: 1% 1%; background-color: rgba(0, 100, 255, 0.2);
    width:1060px;
    }
    #form1{
    margin:5px ;
    }
    #form2{
    margin:5px 900px;
    }

    </style>
</head>
<body>
<div class="forms">
<form action="mcqs.jsp" method="post" id="form1" style="border:1px solid black;">
<input type="submit" value="Attempt Test" height="100px"/>
</form>
<form action="logout.jsp" method="post" id="form2" style="border:1px solid black;">
<input type="submit" value="logout"/>
</form>
</div>
<div class="total">
<div main>
<div class="main">
 <div class="parent">
    <h1>User Profile</h1>
   
    <img alt="Logo" src="profilelogoimage.png">
     </div>
    <%
    String fname = (String)session.getAttribute("fname");
    String lname = (String)session.getAttribute("lname");
    String user = (String)session.getAttribute("username");
    String email = (String)session.getAttribute("email");
    String mobile = (String)session.getAttribute("mobile");
    String address = (String)session.getAttribute("address");

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            
            // Create a connection to the database
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students", "root", "Reshma@123");
            String usernameToFetch = user;
            String query = "SELECT * FROM users WHERE username = ?";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, usernameToFetch);
            ResultSet result = statement.executeQuery();

            if (result.next()) {
                // Extract user data
                String retrieveFname = result.getString("fname");
                String retriveEmail = result.getString("email");
                String retrieveLname = result.getString("lname");
                String retrieveMobile = result.getString("mobile");
                String retrieveAddress = result.getString("address");
                String retrieveUsername = result.getString("username");

                // Display user information
    %>
                <p><strong>Username</strong> <%= retrieveUsername %></p>
                <p><strong>Full Name:</strong> <%= retrieveFname %>&nbsp;<%= retrieveLname %></p>
                <p><strong>Email:</strong> <%= retriveEmail %></p>
                <p><strong>Mobile</strong> <%= retrieveMobile %></p>
                <p><strong>Address:</strong> <%= retrieveAddress %></p>
                </div>
    <%
            } else {
                out.println("User not found");
            }
            conn.close();
            result.close();
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    %>
</div>
</body>
</html>
