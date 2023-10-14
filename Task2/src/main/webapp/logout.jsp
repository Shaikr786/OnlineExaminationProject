<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
    <style>
	    body{
    background-image:url('bgp.jpeg') ;
    background-size: cover;
     background-repeat: no-repeat;
     color:#FFFBF5;
      display: grid; 
      justify-content: center ;
      margin:20% 0 0 0;
      position:relative;
      line-height:10px;
      
      
     
      
      
    
    }
</style>
</head>
<body>
    <h1>Logout</h1>
    <%
        session.invalidate();
    %>
    <p>You have been logged out.</p>
    <p><a href="login.jsp" style="color:pink">Login Again</a></p>
</body>
</html>
