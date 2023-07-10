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
<!-- <link rel="stylesheet" href="assets/css/style.css"> -->
<style type="text/css">
.classe-prova {
	display: flex;
	flex-direction: row;
	border: 2px solid red;
}
</style>
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


	<!-- --------------------------------------- -->
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
			for (int i = 0; i < event.size(); i++) {

				Evento_Sportivo evento = event.get(i);

				if (evento.getSport().equals("Calcio")) {
			%>
			˙
			<tr>
				<td><%=evento.getSq1() + " - " + evento.getSq2()%></td>
				<div class="classe-prova">
					<button
						onclick="returnQuota('<%=evento.getSq1() + " - " + evento.getSq2()%>','<%=evento.getQuota_1()%>', '1')"><%=evento.getQuota_1()%></button>

					<button
						onclick="returnQuota('<%=evento.getSq1() + " - " + evento.getSq2()%>','<%=evento.getQuota_x()%>', 'x')"><%=evento.getQuota_x()%></button>

					<button
						onclick="returnQuota('<%=evento.getSq1() + " - " + evento.getSq2()%>','<%=evento.getQuota_2()%>', '2')"><%=evento.getQuota_2()%></button>

				</div>
			</tr>
			˙

			<%
			}
			}
			%>
		</tbody>
	</table>
	<!-- --------------------------------------- -->



	<script>
		function returnQuota(evento, quota, colonna) {
			console.log("Evento: " + evento + ", Scelta selezionata: " + colonna);
		}
	</script>

	˙


	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
		integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS"
		crossorigin="anonymous"></script>

</body>
</html>