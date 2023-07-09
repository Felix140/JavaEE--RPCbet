package Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import Classi.Utente;
import Connessione.ConnessioneDB;

/**
 * Servlet implementation class Servlet_RegistazioneUtente
 */
public class Servlet_RegistrazioneUtente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String username_utente = request.getParameter("username");
		String codice_fiscale = request.getParameter("codice_fiscale");
		String numero_documento = request.getParameter("numero_documento");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		float saldo = 10;
		String data_nascita = request.getParameter("data_nascita");

		
		ConnessioneDB OgConnessione = new ConnessioneDB();
		boolean check_Registrazione = OgConnessione.inserimento_user(nome, cognome, username_utente, codice_fiscale, numero_documento, email, password, saldo, data_nascita);
		
		// rimando l'utente al login una volta registrato
		if (check_Registrazione) {
			RequestDispatcher dispatch = request.getRequestDispatcher("loginUtente.html");
			dispatch.forward(request, response);
		} else {
			response.sendRedirect("registrazioneUtente.html");
		}
		
	}
}
