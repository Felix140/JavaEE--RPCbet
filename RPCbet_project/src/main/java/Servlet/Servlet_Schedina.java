package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import Connessione.ConnessioneDB;

/**
 * Servlet implementation class Servlet_Schedina
 */
public class Servlet_Schedina extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	int contatore = 0;
	while(contatore<10) {
		contatore++;
		if(contatore==1) {
			//EVENTO 1
			int evento1Codice = Integer.parseInt(request.getParameter("evento1_codice"));
			String evento1Colonna = request.getParameter("evento1_colonna");
			ConnessioneDB conn1 = new ConnessioneDB();
			conn1.InserimentoSchedina(evento1Codice, evento1Colonna);
			break;
		} else if (contatore==2) {
			//EVENTO 2
			int evento2Codice = Integer.parseInt(request.getParameter("evento2_codice"));
			String evento2Colonna= request.getParameter("evento2_colonna");
			ConnessioneDB conn2 = new ConnessioneDB();
			conn2.InserimentoSchedina(evento2Codice, evento2Colonna);
			break;
		} else if (contatore==3) {
			//EVENTO 3
			int evento3Codice = Integer.parseInt(request.getParameter("evento3_codice"));
			String evento3Colonna= request.getParameter("evento3_colonna");
			ConnessioneDB conn3 = new ConnessioneDB();
			conn3.InserimentoSchedina(evento3Codice, evento3Colonna);
			break;
		} else if (contatore==4) {
			//EVENTO 4
			int evento4Codice = Integer.parseInt(request.getParameter("evento4_codice"));
			String evento4Colonna= request.getParameter("evento4_colonna");
			ConnessioneDB conn4 = new ConnessioneDB();
			conn4.InserimentoSchedina(evento4Codice, evento4Colonna);
			break;
		} else if (contatore==5) {
			//EVENTO 5
			int evento5Codice = Integer.parseInt(request.getParameter("evento5_codice"));
			String evento5Colonna= request.getParameter("evento5_colonna");
			ConnessioneDB conn5 = new ConnessioneDB();
			conn5.InserimentoSchedina(evento5Codice, evento5Colonna);
			break;
		} else if (contatore==6) {
			//EVENTO 6
			int evento6Codice = Integer.parseInt(request.getParameter("evento6_codice"));
			String evento6Colonna= request.getParameter("evento6_colonna");
			ConnessioneDB conn6 = new ConnessioneDB();
			conn6.InserimentoSchedina(evento6Codice, evento6Colonna);
			break;
		} else if (contatore==7) {
			//EVENTO 7
			int evento7Codice = Integer.parseInt(request.getParameter("evento7_codice"));
			String evento7Colonna= request.getParameter("evento7_colonna");
			ConnessioneDB conn7 = new ConnessioneDB();
			conn7.InserimentoSchedina(evento7Codice, evento7Colonna);
			break;
		} else if (contatore==8) {
			//EVENTO 8
			int evento8Codice = Integer.parseInt(request.getParameter("evento8_codice"));
			String evento8Colonna= request.getParameter("evento8_colonna");
			ConnessioneDB conn8 = new ConnessioneDB();
			conn8.InserimentoSchedina(evento8Codice, evento8Colonna);
			break;
		} else if (contatore==9) {
			//EVENTO 9
			int evento9Codice = Integer.parseInt(request.getParameter("evento9_codice"));
			String evento9Colonna= request.getParameter("evento9_colonna");
			ConnessioneDB conn9 = new ConnessioneDB();
			conn9.InserimentoSchedina(evento9Codice, evento9Colonna);
			break;
		}
	}
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	}

}