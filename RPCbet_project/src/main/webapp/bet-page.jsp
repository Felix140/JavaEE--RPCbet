<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page 
	import = "Connessione.ConnessioneDB" 
	import = "Classi.Calcio"
	import = "Classi.Evento_Sportivo"
	import = "Servlet.Servlet_GenerazioneEventi"
	import = "java.util.*"
 %>
 
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


	<h3>Tabella Eventi Sport</h3>

		<table>
			<caption>CALCIO</caption>
			<thead>
				<tr>
					<th>Evento</th>
					<th>1</th>
					<th>X</th>
					<th>2</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td>Sq1 - Sq2</td>
					<td>Quota_1</td>
					<td>Quota_x</td>
					<td>Quota_2</td>
				</tr>

				<tr>
					<td>Sq1 - Sq2</td>
					<td>Quota_1</td>
					<td>Quota_x</td>
					<td>Quota_2</td>
				</tr>

				<tr>
					<td>Sq1 - Sq2</td>
					<td>Quota_1</td>
					<td>Quota_x</td>
					<td>Quota_2</td>
				</tr>
			</tbody>
		</table>

		<table>
			<caption>TENNIS</caption>
			<thead>
				<tr>
					<th>Evento</th>
					<th>1</th>
					<th>X</th>
					<th>2</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td>Sq1 - Sq2</td>
					<td>Quota_1</td>
					<td>Quota_x</td>
					<td>Quota_2</td>
				</tr>

				<tr>
					<td>Sq1 - Sq2</td>
					<td>Quota_1</td>
					<td>Quota_x</td>
					<td>Quota_2</td>
				</tr>

				<tr>
					<td>Sq1 - Sq2</td>
					<td>Quota_1</td>
					<td>Quota_x</td>
					<td>Quota_2</td>
				</tr>
			</tbody>
		</table>

		<table>
			<caption>BOXE</caption>
			<thead>
				<tr>
					<th>Evento</th>
					<th>1</th>
					<th>X</th>
					<th>2</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td>Sq1 - Sq2</td>
					<td>Quota_1</td>
					<td>Quota_x</td>
					<td>Quota_2</td>
				</tr>

				<tr>
					<td>Sq1 - Sq2</td>
					<td>Quota_1</td>
					<td>Quota_x</td>
					<td>Quota_2</td>
				</tr>

				<tr>
					<td>Sq1 - Sq2</td>
					<td>Quota_1</td>
					<td>Quota_x</td>
					<td>Quota_2</td>
				</tr>
			</tbody>
		</table>






















</body>
</html>