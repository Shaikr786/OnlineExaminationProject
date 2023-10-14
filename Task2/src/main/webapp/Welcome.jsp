<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <style>
    body{
    background-image:url('onlineExamPic.jpeg') ;
    background-size: cover;
     background-repeat: no-repeat;
     color:#58287F;
      display: grid; 
      justify-content: center ;
      margin:20% 0 0 0;
      position:relative;
      line-height:10px
    
    }
    
    h1{
    justify-content: center ;
    }
    
    </style>
</head>
<body>
    <h1>   *\(^ o ^)/*</h1>
    
    <%
        String username = (String) session.getAttribute("username");
        if (username != null) {
    %>
        <h1>Welcome, <%= username %>!</h1>
        <form action="profile.jsp">
        <input type="submit" value="Go to HomePage" style="border:3px solid #816797;"/>
        </form>
    <%
        } else {
    %>
        <p>You are not logged in. <a href="login.jsp">Log in</a></p>
    <%
        }
    %>
</body>
</html>
