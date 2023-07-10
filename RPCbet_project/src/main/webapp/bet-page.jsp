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
 <link rel="stylesheet" href="assets/css/style.css">
<style type="text/css">

.mainView {
	display: flex;
	flex-direction: row;
	background-color: blue;
	justify-content: space-around;
	align-items: center;
}

.classe-prova {
	display: flex;
	flex-direction: row;
	border: 2px solid red;
}

#quoteForm {
	margin-top: 20px;
}

#quoteForm input {
	margin-right: 10px;
}

.schedina {
	border: 2px solid red;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}
.schedina__form {
	width: 300px;
	border: 2px solid green;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}
input {
	width: 100%;
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

	<div class="mainView">

		<div class="tabels">

			<!-- -----------------CALCIO---------------------- -->
			<div class="tables__calcio">
				<table class="table">
					
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
						ArrayList<Evento_Sportivo> eventCalcio = (ArrayList<Evento_Sportivo>) request.getAttribute("tableCalcio");
						
						for (int i = 0; i < eventCalcio.size(); i++) {

							Evento_Sportivo evento = eventCalcio.get(i);

							if (evento.getSport().equals("Calcio")) {
						%>

						<tr>
							<td><%=evento.getSq1() + " - " + evento.getSq2()%></td>
							
								<th><button	class="btn btn-primary"
										onclick="returnQuota('<%=evento.getSq1() + " - " + evento.getSq2()%>','<%=evento.getQuota_1()%>', '1', this)"><%=evento.getQuota_1()%></button></th>

								<th><button	class="btn btn-primary"
										onclick="returnQuota('<%=evento.getSq1() + " - " + evento.getSq2()%>','<%=evento.getQuota_x()%>', 'x', this)"><%=evento.getQuota_x()%></button></th>


								<th><button class="btn btn-primary" onclick="returnQuota('<%=evento.getSq1() + " - " + evento.getSq2()%>','<%=evento.getQuota_2()%>', '2', this)"><%=evento.getQuota_2()%></button>
								</th>

								
						</tr>


						<%
						}
						}
						%>
					</tbody>
				</table>
			</div>

			<!-- -----------------TENNIS---------------------- -->
			<div class="tables__tennis">

				<table class="table">
					
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

							if (evento.getSport().equals("Tennis")) {
						%>

						<tr>
							<td><%=evento.getSq1() + " - " + evento.getSq2()%></td>
							
								<th><button	class="btn btn-primary"
										onclick="returnQuota('<%=evento.getSq1() + " - " + evento.getSq2()%>','<%=evento.getQuota_1()%>', '1', this)"><%=evento.getQuota_1()%></button></th>

								<th><button	class="btn btn-primary"
										onclick="returnQuota('<%=evento.getSq1() + " - " + evento.getSq2()%>','<%=evento.getQuota_x()%>', 'x', this)"><%=evento.getQuota_x()%></button></th>

								<th><button	class="btn btn-primary"
										onclick="returnQuota('<%=evento.getSq1() + " - " + evento.getSq2()%>','<%=evento.getQuota_2()%>', '2', this)"><%=evento.getQuota_2()%></button></th>

							
						</tr>

						<%
						}
						}
						%>

					</tbody>
				</table>
			</div>

			
			<!-- ------------------BOXE--------------------- -->
			<div class="tables__boxe">
				<table class="table">
					
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

							if (evento.getSport().equals("Boxe")) {
						%>
						
						<tr>
							<td><%=evento.getSq1() + " - " + evento.getSq2()%></td>
							
								<th><button class="btn btn-primary"
										onclick="returnQuota('<%=evento.getSq1() + " - " + evento.getSq2()%>','<%=evento.getQuota_1()%>', '1', this)"><%=evento.getQuota_1()%></button></th>

								<th><button	class="btn btn-primary"
										onclick="returnQuota('<%=evento.getSq1() + " - " + evento.getSq2()%>','<%=evento.getQuota_x()%>', 'x', this)"><%=evento.getQuota_x()%></button></th>

								<th><button	class="btn btn-primary"
										onclick="returnQuota('<%=evento.getSq1() + " - " + evento.getSq2()%>','<%=evento.getQuota_2()%>', '2', this)"><%=evento.getQuota_2()%></button></th>

							
						</tr>
						
						<%
						}
						}
						%>
						
					</tbody>
				</table>
			</div>


		</div>


			<!-- CARD SCHEDINA -->
		<div class="schedina">
			<form id="quoteForm" action="" method="post" class="schedina__form">
				<input type="text" name="evento1" id="eventoInput1" name="" readonly>
				<br> <input type="text" name="evento2" id="eventoInput2" name="" readonly>
				<br> <input type="text" name="evento3" id="eventoInput3" name="" readonly>
				<br> <input type="text" name="evento4" id="eventoInput4" name="" readonly>
				<br> <input type="text" name="evento5" id="eventoInput5" name="" readonly>
				<br> <input type="text" name="evento6" id="eventoInput6" name="" readonly>
				<br> <input type="text" name="evento7" id="eventoInput7" name="" readonly>
				<br> <input type="text" name="evento8" id="eventoInput8" name="" readonly>
				<br> <input type="text" name="evento9" id="eventoInput9" name="" readonly>
				
				
				<br> <input type="submit" value="Gioca schedina" class="btn btn-primary">

			</form>
		</div>

	</div>







	

	<script>
		var eventiSelezionati = []; // Dichiarazione dell'array eventiSelezionati

		function returnQuota(evento, quota, colonna, button) {
			var index = eventiSelezionati.findIndex(function (item) {
				return item.startsWith(evento);
			});

			if (index !== -1) {
				// Sostituisci il valore per lo stesso evento
				eventiSelezionati[index] = evento + ' - ' + colonna;
			} else if (eventiSelezionati.length < 9) {
				// Aggiungi il nuovo valore se l'array non è pieno
				eventiSelezionati.push(evento + ' - ' + colonna);

			}

			updateInputValues();
		}

		function updateInputValues() {
			var inputElements = document.querySelectorAll('#quoteForm input[type="text"]');

			for (var i = 0; i < inputElements.length; i++) {
				var inputValue = (i < eventiSelezionati.length) ? eventiSelezionati[i] : '';
				inputElements[i].value = inputValue;
			}
		}
		
	</script>


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