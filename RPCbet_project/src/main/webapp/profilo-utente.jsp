<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

	<%@ page import="Connessione.ConnessioneDB" import="Classi.*" import="Classi.Evento_Sportivo"
		import="Servlet.Servlet_GenerazioneEventi" import="Servlet.Servlet_MostraEventi"
		import="Servlet.Servlet_IncrementaSaldo" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Area Utente</title>
</head>
<body class="bg-dark">
<%
Cookie[] cookies = request.getCookies();
	String nomeCookie = "a";
	String nomeUtente = "";
	
	if (cookies != null) 
	{
		for (Cookie cookie : cookies) 
		{
			if (cookie.getName().equals(nomeCookie)) 
			{
				nomeUtente = cookie.getValue();
				break;
			}
		}
	}
%>
<div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" style="width: 280px;">
  <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
    <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>

  </a>

  <ul class="nav nav-pills flex-column mb-auto">
  
    <li class="nav-item">
      <a href="#" class="nav-link active" aria-current="page">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"/></svg>
        Home
      </a>
    </li>
   
  </ul>


</div>
<table class="table table-dark table-striped mx-auto d-block" style="margin-top:40px; width:500px; ">
   <thead>
      <tr>
        <th>Codice Schedina</th>
        <th>Esito</th>
        <th>Importo Scommesso</th>
        <th>Importo Vinto</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>132453</td>
        <td>Vinta</td>
        <td>50€</td>
        <td>250€</td>
      </tr>
    </tbody>
</table>








</body>
</html>