<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ page import="Connessione.ConnessioneDB" import="Classi.*"
	import="Classi.Evento_Sportivo"
	import="Servlet.Servlet_GenerazioneEventi"
	import="Servlet.Servlet_MostraEventi"
	import="Servlet.Servlet_IncrementaSaldo" import="java.util.*"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" src="assets/css/profilo-utente_style.css">

<meta charset="UTF-8">
<title>Area Utente</title>
</head>

<body class="body-userProfile">

	<%
	Cookie[] cookies = request.getCookies();
	String nomeCookie = "a";
	String nomeUtente = "";
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals(nomeCookie)) {
		nomeUtente = cookie.getValue();
		break;
			}
		}
	}
	%>

	<header class="navbar">
		<img src="assets/img/logo/rpcbet-logo-2.svg" alt="" class="hero__logo">
		<div class="navbar__user">
			<span>Utente: </span>
			<%
			String usernameUtente = (String) session.getAttribute("NomeUser");
			%>
			<h5>
				<%=usernameUtente%>
			</h5>

		</div>
	</header>


	<!-- Storico tabella utente -->

	<%
	// Ottenere l'arraylist storico dalla richiesta
	ArrayList<Storico_Schedine> storico = (ArrayList<Storico_Schedine>) request.getAttribute("storico");

	// Verificare se l'arraylist non è vuoto e ottenere l'ultimo elemento
	String ultimoCodiceSchedina = "";
	if (storico != null && !storico.isEmpty()) {
		for (int i = storico.size() - 1; i >= 0; i--) {
			Storico_Schedine schedina = storico.get(i);
			if (schedina.getUsername_utente().equals(usernameUtente)) {
		ultimoCodiceSchedina = String.valueOf(schedina.getCodice_schedina());
		break;
			}
		}
	}
	%>

	<table class="table table-dark table-striped mx-auto d-block"
		style="margin-top: 40px; width: 500px;">

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
				<td style="color: white;"><%=ultimoCodiceSchedina%></td>
				<td>Inserisci qui Esito</td>
				<td>Inserisci qui importo</td>
				<td>Inserisci qui vincita</td>
			</tr>

		</tbody>
	</table>







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