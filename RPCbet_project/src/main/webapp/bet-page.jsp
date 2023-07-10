<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="Connessione.ConnessioneDB" import="Classi.*"
	import="Classi.Evento_Sportivo"
	import="Servlet.Servlet_GenerazioneEventi"
	import="Servlet.Servlet_MostraEventi" import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- BOOTSTRAP -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">

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




	<h3>Tabella Eventi Sport</h3>


	<table class="table">
		<caption>Eventi sportivi - Calcio</caption>
		<thead>
			<tr>
				<th scope="col">Evento</th>
				<th scope="col">1</th>
				<th scope="col">X</th>
				<th scope="col">2</th>
			</tr>
		</thead>
		<tbody>
			<%
			ArrayList<Evento_Sportivo> event = (ArrayList<Evento_Sportivo>) request.getAttribute("tableCalcio");

			for (int i = 0; i < event.size(); i++) {

				Evento_Sportivo evento = event.get(i);

				if (evento.getSport().equals("Calcio")) {
			%>
			<tr>
				<td><%=evento.getSq1() + " - " + evento.getSq2()%></td>
				<td><%=evento.getQuota_1()%></td>
				<td><%=evento.getQuota_x()%></td>
				<td><%=evento.getQuota_2()%></td>
			</tr>
			<%
			}
			}
			%>
		</tbody>
	</table>

	<table class="table">
		<caption>Eventi sportivi - Tennis</caption>
		<thead>
			<tr>
				<th scope="col">Evento</th>
				<th scope="col">1</th>
				<th scope="col">X</th>
				<th scope="col">2</th>
			</tr>
		</thead>
		<tbody>
			<%
			ArrayList<Evento_Sportivo> eventTennis = (ArrayList<Evento_Sportivo>) request.getAttribute("tableTennis");

			for (int i = 0; i < eventTennis.size(); i++) {
				Evento_Sportivo evento = eventTennis.get(i);
				out.println("<tr>");
				out.println("<td>" + evento.getSq1() + " - " + evento.getSq2() + "</td>");
				out.println("<td>" + evento.getQuota_1() + "</td>");
				out.println("<td>" + evento.getQuota_x() + "</td>");
				out.println("<td>" + evento.getQuota_2() + "</td>");
				out.println("</tr>");
			}
			%>
		</tbody>
	</table>

	<table class="table">
		<caption>Eventi sportivi - Boxe</caption>
		<thead>
			<tr>
				<th scope="col">Evento</th>
				<th scope="col">1</th>
				<th scope="col">X</th>
				<th scope="col">2</th>
			</tr>
		</thead>
		<tbody>
			<%
			ArrayList<Evento_Sportivo> eventBoxe = (ArrayList<Evento_Sportivo>) request.getAttribute("tableBoxe");

			for (int i = 0; i < eventBoxe.size(); i++) {
				Evento_Sportivo evento = eventBoxe.get(i);
				out.println("<tr>");
				out.println("<td>" + evento.getSq1() + " - " + evento.getSq2() + "</td>");
				out.println("<td>" + evento.getQuota_1() + "</td>");
				out.println("<td>" + evento.getQuota_x() + "</td>");
				out.println("<td>" + evento.getQuota_2() + "</td>");
				out.println("</tr>");
			}
			%>
		</tbody>
	</table>









	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>

</body>
</html>