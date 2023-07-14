package Servlet;

import jakarta.servlet.RequestDispatcher;
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
		
		     String opzione = request.getParameter("opzione");
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
			 	 
			 	 
		         int numeroIntero = Integer.parseInt(opzione);
		         ConnessioneDB connessioneDB = new ConnessioneDB();
			
			    	 connessioneDB.incrementaSaldo(nomeUtente, numeroIntero);
			 
				
				
				
				
				float saldo = connessioneDB.getSaldo(nomeUtente);
				System.out.println("Hai " + saldo + "euro");
				request.setAttribute("saldo", saldo);
		        
				
				RequestDispatcher dispatch = request.getRequestDispatcher("Servlet_MostraEventi");
				dispatch.forward(request, response);
				
			 	
			
		}
}	
	
