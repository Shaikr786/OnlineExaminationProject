<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%! int score = 0; %>
<%
    String q1Answer = request.getParameter("q1");
    String q2Answer = request.getParameter("q2");
    String q3Answer = request.getParameter("q3");
    String q4Answer = request.getParameter("q4");
    String q5Answer = request.getParameter("q5");
    String q6Answer = request.getParameter("q6");
    String q7Answer = request.getParameter("q7");
    String q8Answer = request.getParameter("q8");
    String q9Answer = request.getParameter("q9");
    String q10Answer = request.getParameter("q10");

    if ("2".equals(q1Answer)) {
        score++;
    }
    if ("3".equals(q2Answer)) {
        score++;
    }
    if ("3".equals(q3Answer)) {
        score++;
    }
    if ("1".equals(q4Answer)) {
        score++;
    }
    if ("1".equals(q5Answer)) {
        score++;
    }
    if ("1".equals(q6Answer)) {
        score++;
    }
    if ("3".equals(q7Answer)) {
        score++;
    }
    if ("2".equals(q8Answer)) {
        score++;
    }
    if ("2".equals(q9Answer)) {
        score++;
    }
    if ("3".equals(q10Answer)) {
        score++;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exam Results:</title>
    <style>
	body{
    background-color:aqua ;
    justify-content:center;
    position:absolute;
    }
    h1{
    color:green;
    font-style:italic;
    }
    
    #heading{
    color:red;
    font-weight:bold;
    }
     #submit{
    background-color:green;
    color:white;
    height:50px;
    }
    
</style>
</head>
<body>
    <h1 id="heading">Exam Results</h1>
    <h1>Your score: <%= score %> out of 10 🎉..</h1>
    <form action="profile.jsp" method="post">
     <input type="submit" value="Go to profile page.!" id="submit">
    </form>
</body>
</html>






























