<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.Servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
</head>
<body>
	<%
	// faccio prima il cast
	String adminName = (String) session.getAttribute("NomeAdmin");
	%>
	<h1>admin</h1>
	
	<h2>Benvenuta/o <%= adminName %></h2>

</body>
</html>