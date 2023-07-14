package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
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
		
			//INIZIO COOKIE******************
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
		 	//FINE COOKIE*******************
		 	
		 	System.out.println(nomeUtente);
		 	
			ConnessioneDB connessioneDB = new ConnessioneDB();
			connessioneDB.incrementaSaldo(nomeUtente);
			float saldo = connessioneDB.getSaldo(nomeUtente);
			System.out.println("Hai " + saldo + "euro");
			request.setAttribute("saldo", saldo);
			request.getRequestDispatcher("Servlet_MostraEventi").forward(request, response);
//			response.sendRedirect("Servlet_MostraEventi");
			
		}
		
	
}