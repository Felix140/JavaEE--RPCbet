<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page 
	import = "Connessione.ConnessioneDB" 
	import = "Classi.Partite_Calcio"
	import = "Classi.Calcio"
	import = "Servlet.Servlet_SquadreCalcio"
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


        	ArrayList<Calcio> squadreCalcio = (ArrayList<Calcio>) request.getAttribute("ForzaRoma");
				for (int i = 0; i < squadreCalcio.size(); i++) {
					
					out.println("<tr>");
			        out.println("<td>" + squadreCalcio.get(i).getNome_squadra()+ "</td>");
			       /*  out.println("<td>"+userr.get(i).getPassword()+"</td>"); */
			        out.println("<td>Giuseppesnitch</td>");
			        out.println("</tr>");
			        }
 %>
    </tbody>
  </table>




















</body>
</html>