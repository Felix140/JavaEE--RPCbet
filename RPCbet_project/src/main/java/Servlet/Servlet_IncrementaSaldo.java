package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import Classi.Utente;
import Connessione.ConnessioneDB;
import Servlet.Servlet_LoginUtente;


public class Servlet_IncrementaSaldo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	//INCREMENTA SALDO E VISUALIZZA
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int idUtente = 1; //ID utente
//		String usernameUtente;
		float importo = 100f; //importo da incrementare
		String usernameUtente = (String)request.getAttribute("user");
		

		ConnessioneDB connessioneDB = new ConnessioneDB();
		connessioneDB.incrementaSaldo(usernameUtente, importo);
		float saldo = connessioneDB.getSaldo(usernameUtente);
		request.setAttribute("saldo", saldo);
		request.getRequestDispatcher("Servlet_MostraEventi").forward(request, response);
		
		

		
		}


}