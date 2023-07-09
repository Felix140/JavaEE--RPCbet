<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.Servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String usernameUtente = (String) session.getAttribute("NomeUser"); %>
    <h1>bet-page</h1>
    
    <h2>Benvenuto/a <%= usernameUtente %></h2>

</body>
</html>