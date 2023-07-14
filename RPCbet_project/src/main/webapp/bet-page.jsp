<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<%@ page import="Connessione.ConnessioneDB" import="Classi.*" import="Classi.Evento_Sportivo"
		import="Servlet.Servlet_GenerazioneEventi" import="Servlet.Servlet_MostraEventi"
		import="Servlet.Servlet_IncrementaSaldo" import="java.util.*" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
			<link rel="stylesheet" href="assets/css/style.css">
			<link rel="stylesheet" href="assets/css/bet-page_style.css">

		</head>

		<body>

			<div class="header">
				<nav class="header__actions">
					<img src="assets/img/logo/rpcbet-logo-2.svg" alt="" class="hero__logo">




					<div class="header__user">


						<form action="Servlet_IncrementaSaldo" method="POST" class="header__saldo">

							<p class="m-auto">
								€
								<%=request.getAttribute("saldo")%>
							</p>
							<input type="hidden" name="aumentosaldo">
							<button class="btn btn-danger btn-rounded" type="submit">Deposita</button>
						</form>

						<div class="header__userName">
							<% String usernameUtente=(String) session.getAttribute("NomeUser"); %>
								<a href="profilo-utente.jsp"><%=usernameUtente%></a>
						</div>

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
						<table class="table table-hover">

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
								<% ArrayList<Evento_Sportivo> eventCalcio = (ArrayList<Evento_Sportivo>)
										request.getAttribute("tableCalcio");

										for (int i = 0; i < eventCalcio.size(); i++) { Evento_Sportivo
											evento=eventCalcio.get(i); if (evento.getSport().equals("Calcio")) { %>

											<tr>
												<td class="tables__evento">
													<%=evento.getSq1() + " - " + evento.getSq2()%>
												</td>

												<th>
													<div class="btn--bet"
														onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_1()%>', '1', this)">
														<%=evento.getQuota_1()%>
													</div>
												</th>

												<th>
													<div class="btn--bet"
														onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_x()%>', 'x', this)">
														<%=evento.getQuota_x()%>
													</div>
												</th>


												<th>
													<div class="btn--bet"
														onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_2()%>', '2', this)">
														<%=evento.getQuota_2()%>
													</div>
												</th>

												<th>
													<%=evento.getCodice_partita() %>
												</th>
											</tr>


											<% } } %>
							</tbody>
						</table>
					</div>

					<!-- -----------------TENNIS---------------------- -->
					<div class="tables__tennis">

						<table class="table table-hover">

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
								<% ArrayList<Evento_Sportivo> eventTennis = (ArrayList<Evento_Sportivo>)
										request.getAttribute("tableTennis");

										for (int i = 0; i < eventTennis.size(); i++) { Evento_Sportivo
											evento=eventTennis.get(i); if (evento.getSport().equals("Tennis")) { %>

											<tr>
												<td class="tables__evento">
													<%=evento.getSq1() + " - " + evento.getSq2()%>
												</td>

												<th>
													<div class="btn--bet"
														onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_1()%>', '1', this)">
														<%=evento.getQuota_1()%>
													</div>
												</th>

												<th>
													<div class="btn--bet"
														onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_x()%>', 'x', this)">
														<%=evento.getQuota_x()%>
													</div>
												</th>

												<th>
													<div class="btn--bet"
														onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_2()%>', '2', this)">
														<%=evento.getQuota_2()%>
													</div>
												</th>

												<th>
													<%=evento.getCodice_partita() %>
												</th>
											</tr>

											<% } } %>

							</tbody>
						</table>
					</div>


					<!-- ------------------BOXE--------------------- -->
					<div class="tables__boxe">
						<table class="table table-hover">

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

								<% ArrayList<Evento_Sportivo> eventBoxe = (ArrayList<Evento_Sportivo>)
										request.getAttribute("tableBoxe");

										for (int i = 0; i < eventBoxe.size(); i++) { Evento_Sportivo
											evento=eventBoxe.get(i); if (evento.getSport().equals("Boxe")) { %>

											<tr>
												<td class="tables__evento">
													<%=evento.getSq1() + " - " + evento.getSq2()%>
												</td>

												<th>
													<div class="btn--bet"
														onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_1()%>', '1', this)">
														<%=evento.getQuota_1()%>
													</div>
												</th>

												<th>
													<div class="btn--bet"
														onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_x()%>', 'x', this)">
														<%=evento.getQuota_x()%>
													</div>
												</th>

												<th>
													<div class="btn--bet"
														onclick="returnQuota('<%=evento.getCodice_partita() %>','<%=evento.getQuota_2()%>', '2', this)">
														<%=evento.getQuota_2()%>
													</div>
												</th>

												<th>
													<%=evento.getCodice_partita() %>
												</th>
											</tr>

											<% } } %>

							</tbody>
						</table>
					</div>


				</div>


				<!-- CARD SCHEDINA -->
				<div class="schedina">
					<form id="quoteForm" action="Servlet_Schedina" method="post" class="schedina__form">
						<div class="schedina__input">
							<h3 class="schedina__title">La tua schedina</h3>
							<div class="schedina__rowInput">
								<input type="text" name="evento1_codice" id="eventoCodiceInput1" class="schedina__field"
									readonly>
								<input type="text" name="evento1_colonna" id="eventoColonnaInput1"
									class="schedina__field" readonly>
							</div>
							<div class="schedina__rowInput">
								<input type="text" name="evento2_codice" id="eventoCodiceInput2" class="schedina__field"
									readonly>
								<input type="text" name="evento2_colonna" id="eventoColonnaInput2"
									class="schedina__field" readonly>
							</div>
							<div class="schedina__rowInput">
								<input type="text" name="evento3_codice" id="eventoCodiceInput3" class="schedina__field"
									readonly>
								<input type="text" name="evento3_colonna" id="eventoColonnaInput3"
									class="schedina__field" readonly>
							</div>
							<div class="schedina__rowInput">
								<input type="text" name="evento4_codice" id="eventoCodiceInput4" class="schedina__field"
									readonly>
								<input type="text" name="evento4_colonna" id="eventoColonnaInput4"
									class="schedina__field" readonly>
							</div>
							<div class="schedina__rowInput">
								<input type="text" name="evento5_codice" id="eventoCodiceInput5" class="schedina__field"
									readonly>
								<input type="text" name="evento5_colonna" id="eventoColonnaInput5"
									class="schedina__field" readonly>
							</div>
							<div class="schedina__rowInput">
								<input type="text" name="evento6_codice" id="eventoCodiceInput6" class="schedina__field"
									readonly>
								<input type="text" name="evento6_colonna" id="eventoColonnaInput6"
									class="schedina__field" readonly>
							</div>
							<div class="schedina__rowInput">
								<input type="text" name="evento7_codice" id="eventoCodiceInput7" class="schedina__field"
									readonly>
								<input type="text" name="evento7_colonna" id="eventoColonnaInput7"
									class="schedina__field" readonly>
							</div>
							<div class="schedina__rowInput">
								<input type="text" name="evento8_codice" id="eventoCodiceInput8" class="schedina__field"
									readonly>
								<input type="text" name="evento8_colonna" id="eventoColonnaInput8"
									class="schedina__field" readonly>
							</div>
							<div class="schedina__rowInput">
								<input type="text" name="evento9_codice" id="eventoCodiceInput9" class="schedina__field"
									readonly>
								<input type="text" name="evento9_colonna" id="eventoColonnaInput9"
									class="schedina__field" readonly>
							</div>
							
							<!-- IMPORTO -->
							<div class="schedina__importo d-block m-auto">
								€
								<input type="number" name="importogiocato"  placeholder="importo" class="schedina__importofield">
							
							<% if (request.getAttribute("errore") != null) { %>
    						<p class="m-auto">€ <%=request.getAttribute("errore")%></p>
							<% } %>
							
							<% if (request.getAttribute("messaggioScommessa") != null) { %>
    						<p class="m-auto">€ <%=request.getAttribute("messaggioScommessa")%></p>
							<% } %>
							
							</div>

							<input type="number" name="importogiocato"  placeholder="Inserisci la cifra giocata" class="schedina__importo">

							<input type="text" name="NomeUser" value="<%=usernameUtente%>" hidden>

						</div>

						<div class="schedina__button">
							<input type="submit" value="Gioca schedina" class="btn btn-primary btn-rounded">
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


				// Aggiungi un event listener ai pulsanti di selezione
				const section = document.querySelector(".header__sections");
				section.addEventListener("click", function (event) {
					const selectedButton = event.target;
					const selectedTableName = selectedButton.textContent.toLowerCase();

					// Nascondi tutte le tabelle
					const tables = document.querySelectorAll(".tables > div");
					tables.forEach(function (table) {
						table.classList.remove("active");
					});

					// Mostra la tabella selezionata
					const selectedTable = document.querySelector(".tables__" + selectedTableName);
					selectedTable.classList.add("active");
				});

			</script>


			<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
				integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
				crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
				integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS"
				crossorigin="anonymous"></script>

		</body>

		</html>