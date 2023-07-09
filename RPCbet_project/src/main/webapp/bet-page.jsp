<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page 
	import = "Connessione.ConnessioneDB" 
	import = "Classi.Calcio"
	import = "Classi.Evento_Sportivo"
	import = "Servlet.Servlet_EventoCalcio"
	import = "java.util.*"
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


    <h1>bet-page</h1>

<!-- Tabella eventi calcio -->
<table class="table table-striped">
    <tbody>
    <%  
    

  
				ArrayList<Evento_Sportivo> EventoSportivoRandom = (ArrayList<Evento_Sportivo>) request.getAttribute("ForzaMagggggica");
				for (int i = 0; i < EventoSportivoRandom.size(); i++) {
					
					out.println("<tr>");
			        out.println("<td>" + EventoSportivoRandom.get(i).getSq1().toString()+ "</td>");
			        out.println("<td>" + EventoSportivoRandom.get(i).getSq2().toString()+ "</td>");
			       /*  out.println("<td>"+userr.get(i).getPassword()+"</td>"); */
			        out.println("<td>Giuseppesnitch</td>");
			        out.println("</tr>");
			        }
 %>
    </tbody>
  </table>




















</body>
</html>