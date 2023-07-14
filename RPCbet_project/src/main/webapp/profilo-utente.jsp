<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/profilo-utente__style.css">

<style>
	.header__userName  {
		background-color: red;
	}
</style>

</head>
<body class="body-profilo-utente">
    <h1>Profilo utente</h1>
	<a href="">Torna indietro</a>

	<div class="header__userName">
		<% String usernameUtente=(String) session.getAttribute("NomeUser"); %>
			<%=usernameUtente%>
	</div>

	<table class="table table-hover">
		<thead>
			<th class="col">Codice Schedina</th>
			<th class="col">Esito Schedina</th>
			<th class="col">Vincita</th>
		</thead>
		<tbody>
			<tr>
				<td>testo</td>
				<th>testo</th>
				<th>testo</th>
			</tr>
		</tbody>
	</table>
	



    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
		integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS"
		crossorigin="anonymous"></script>
</body>
</html>