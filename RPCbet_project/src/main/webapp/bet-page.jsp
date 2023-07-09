<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="Connessione.ConnessioneDB" import="Classi.Calcio"
	import="Classi.Evento_Sportivo" import="Servlet.Servlet_EventoCalcio"
	import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String usernameUtente = (String) session.getAttribute("NomeUser");
	%>

	<h1>bet-page</h1>
	<h2>
		Benvenuto/a
		<%=usernameUtente%></h2>

	<!-- Tabella eventi calcio -->
	<table class="table table-striped">
		<tbody>
			<%
			boolean ciccio = (boolean) request.getAttribute("ForzaMagggggica");

			out.println(ciccio);
			%>
		</tbody>
	</table>




















</body>
</html>