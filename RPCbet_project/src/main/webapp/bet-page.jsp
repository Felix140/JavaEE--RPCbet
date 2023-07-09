<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page 
	import = "Connessione.ConnessioneDB" 
	import = "Classi.Calcio"
	import = "Classi.Evento_Sportivo"
	import = "Servlet.Servlet_GenerazioneEventi"
	import = "Servlet.Servlet_MostraEventi"
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
			<caption>Eventi sportivi</caption>
			<thead>
				<tr>
					<th>Evento</th>
					<th>1</th>
					<th>X</th>
					<th>2</th>
				</tr>
			</thead>
	
			<% 
			ArrayList<Evento_Sportivo> event = (ArrayList<Evento_Sportivo>) request.getAttribute("table");
			
			for (int i = 0; i < event.size(); i++) {
				out.println("<tbody>");
				
					out.println("<tr>");
						out.println("<td>" + event.get(i).getSq1() + "-" + event.get(i).getSq2() + "</td>");
						out.println("<td>" + event.get(i).getQuota_1() + "</td>");
						out.println("<td>" + event.get(i).getQuota_x() + "</td>");
						out.println("<td>" + event.get(i).getQuota_2() + "</td>");
					out.println("</tr>");
				
				out.println("</tbody>");
			}
			
			%>

		</table>



</body>
</html>