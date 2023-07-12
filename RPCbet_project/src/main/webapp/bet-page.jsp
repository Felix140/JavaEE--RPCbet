<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="Connessione.ConnessioneDB" import="Classi.*"
	import="Classi.Evento_Sportivo"
	import="Servlet.Servlet_GenerazioneEventi"
	import="Servlet.Servlet_MostraEventi" 
	import="Servlet.Servlet_IncrementaSaldo" 
	import="java.util.*"%>

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
	background-color:  #1C1E2E;
	justify-content: space-around;
	align-items: center;
}

.classe-prova {
	display: flex;
	flex-direction: row;
	border: 2px solid red;
}

.tables {
	border: 2px solid green;
	width: 100%;
}

#quoteForm {
	margin-top: 20px;
}

#quoteForm input {
	margin-right: 10px;
}

.schedina {
	border: 2px solid yellow;
	height: 100%;
}
.schedina__form {
	border: 2px solid red;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	
	row-gap: 20px;
}

.schedina__input {
	border: 2px solid green;
	background-color: white;
	border-radius: 30px;
	height: 500px;
	width: 300px;
	
	padding: 40px 40px;
}

.schedina__rowInput {
	display: flex;
	flex-direction: row;
	background-color: transparent;
}

.schedina_field {
	width: 100%;
	border: none;
	background-color: transparent;
}
.schedina_importo {
	width: 100%;
	border: 2px solid #1C1E2E;
	background-color: transparent;
	border-radius: 10px;
}

.header  {
	display: flex;
	flex-direction: column;
	width: 100%;
	border: 1px solid red;
	justify-content: center;
	align-items: center;
	
	color: white;
	background-color: #1C1E2E;
}

.header__actions {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	align-items: center;
	border: 1px solid green;
	width: 100%;
	height: 67px;
}
.header__sections {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	border: 1px solid yellow;
	width: 100%;

	background-color: #222637;
	height: 54px;

	column-gap: 20px;
}

.header__user {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
}
.header__saldo {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	
	border: 2px solid green;
}
.hero__logo {
	width: 150px;
}
</style>
</head>
<body>

	<div class="header">
		<nav class="header__actions">
			<img src="assets/img/logo/rpcbet-logo-2.svg" alt="" class="hero__logo">
			
	
	
	
				<div class="header__user">
	
	
					<form action="Servlet_IncrementaSaldo" method="POST" class="header__saldo">
						<p>Saldo Corrente</p>
						<p>
							<%=request.getAttribute("saldo")%>
						</p>
						<input type="hidden" name="aumentosaldo">
						<button name="buttonSaldo" class="btn btn-danger " type="submit">Desposita</button>
					</form>
					<% String usernameUtente=(String) session.getAttribute("NomeUser"); %>
					<p>
						Benvenuto/a
						<%=usernameUtente%>
					</p>
	
				</div>
	
		</nav>
	
		<nav class="header__sections">
			<button class="btn btn-secondary">Calcio</button>
			<button class="btn btn-secondary">Tennis</button>
			<button class="btn btn-secondary">Boxe</button>
		</nav>
	
	</div>
	

	
		

	<!-- Tabella eventi calcio -->
	<!-- <table class="table table-striped">
		<tbody>
 <%
			/* boolean ciccio = (boolean) request.getAttribute("ForzaMagggggica");

			out.println(ciccio); */ 
			%> 			
		</tbody>
	</table> -->




	

	<div class="mainView">

		<div class="tables">

			<!-- -----------------CALCIO---------------------- -->
			<div class="tables__calcio">
				<table class="table">
					
					<thead>
						<tr>
							<th scope="col">Evento</th>
							<th scope="col">1</th>
							<th scope="col">X</th>
							<th scope="col">2</th>
							<th scope="col">Codice</th>
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
										onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_1()%>', '1', this)"><%=evento.getQuota_1()%></button></th>

								<th><button	class="btn btn-primary"
										onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_x()%>', 'x', this)"><%=evento.getQuota_x()%></button></th>


								<th><button class="btn btn-primary" onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_2()%>', '2', this)"><%=evento.getQuota_2()%></button>
								</th>

								<th><%=evento.getCodice_partita() %></th>
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
							<th scope="col">Codice</th>
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
										onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_1()%>', '1', this)"><%=evento.getQuota_1()%></button></th>

								<th><button	class="btn btn-primary"
										onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_x()%>', 'x', this)"><%=evento.getQuota_x()%></button></th>

								<th><button	class="btn btn-primary"
										onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_2()%>', '2', this)"><%=evento.getQuota_2()%></button></th>

								<th><%=evento.getCodice_partita() %></th>
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
							<th scope="col">Codice</th>
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
										onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_1()%>', '1', this)"><%=evento.getQuota_1()%></button></th>

								<th><button	class="btn btn-primary"
										onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_x()%>', 'x', this)"><%=evento.getQuota_x()%></button></th>

								<th><button	class="btn btn-primary"
										onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_2()%>', '2', this)"><%=evento.getQuota_2()%></button></th>

								<th><%=evento.getCodice_partita() %></th>
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
			<form id="quoteForm" action="Servlet_Schedina" method="POST" class="schedina__form">
				<div class="schedina__input">
					<div class="schedina__rowInput">
						<input type="text" name="evento1_codice" id="eventoCodiceInput1" class="schedina_field" readonly>
						<input type="text" name="evento1_colonna" id="eventoColonnaInput1" class="schedina_field" readonly>
					</div>
					<div class="schedina__rowInput">
						<input type="text" name="evento2_codice" id="eventoCodiceInput2" class="schedina_field" readonly>
						<input type="text" name="evento2_colonna" id="eventoColonnaInput2" class="schedina_field" readonly>
					</div>
					<div class="schedina__rowInput">
						<input type="text" name="evento3_codice" id="eventoCodiceInput3" class="schedina_field" readonly>
						<input type="text" name="evento3_colonna" id="eventoColonnaInput3" class="schedina_field" readonly>
					</div>
					<div class="schedina__rowInput">
						<input type="text" name="evento4_codice" id="eventoCodiceInput4" class="schedina_field" readonly>
						<input type="text" name="evento4_colonna" id="eventoColonnaInput4" class="schedina_field" readonly>
					</div>
					<div class="schedina__rowInput">
						<input type="text" name="evento5_codice" id="eventoCodiceInput5" class="schedina_field" readonly>
						<input type="text" name="evento5_colonna" id="eventoColonnaInput5" class="schedina_field" readonly>
					</div>
					<div class="schedina__rowInput">
						<input type="text" name="evento6_codice" id="eventoCodiceInput6" class="schedina_field" readonly>
						<input type="text" name="evento6_colonna" id="eventoColonnaInput6" class="schedina_field" readonly>
					</div>
					<div class="schedina__rowInput">
						<input type="text" name="evento7_codice" id="eventoCodiceInput7" class="schedina_field" readonly>
						<input type="text" name="evento7_colonna" id="eventoColonnaInput7" class="schedina_field" readonly>
					</div>
					<div class="schedina__rowInput">
						<input type="text" name="evento8_codice" id="eventoCodiceInput8" class="schedina_field" readonly>
						<input type="text" name="evento8_colonna" id="eventoColonnaInput8" class="schedina_field" readonly>
					</div>
					<div class="schedina__rowInput">
						<input type="text" name="evento9_codice" id="eventoCodiceInput9" class="schedina_field" readonly>
						<input type="text" name="evento9_colonna" id="eventoColonnaInput9" class="schedina_field" readonly>
					</div>
					
					<input type="text" name="importogiocato" placeholder="Inserisci la cifra giocata" class="schedina_importo">
					
				</div>
				
				<div class="schedina__button">
					<input type="submit" value="Gioca schedina" class="btn btn-primary">
				</div>
	
			</form>
		</div>

	</div>







	

	<script>
		const eventiSelezionati = []; // Dichiarazione dell'array eventiSelezionati

		function returnQuota(codicePartita, quota, colonna, button) {
			let index = eventiSelezionati.findIndex(function (item) {
				return item.startsWith(codicePartita);
			});

			if (index !== -1) {
				// Sostituisci il valore per lo stesso evento
				eventiSelezionati[index] = codicePartita + ' - ' + colonna;
			} else if (eventiSelezionati.length < 9) {
				// Aggiungi il nuovo valore se l'array non è pieno
				eventiSelezionati.push(codicePartita + ' - ' + colonna);
			}

			updateInputValues();
		}

		function updateInputValues() {
			for (let i = 0; i < eventiSelezionati.length; i++) {
				const inputCodice = document.getElementById('eventoCodiceInput' + (i + 1));
				const inputColonna = document.getElementById('eventoColonnaInput' + (i + 1));
				const eventiSelezionato = eventiSelezionati[i].split(' - ');

				inputCodice.value = eventiSelezionato[0];
				inputColonna.value = eventiSelezionato[1];
			}

			for (let i = eventiSelezionati.length; i < 9; i++) {
				const inputCodice = document.getElementById('eventoCodiceInput' + (i + 1));
				const inputColonna = document.getElementById('eventoColonnaInput' + (i + 1));

				inputCodice.value = '';
				inputColonna.value = '';
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