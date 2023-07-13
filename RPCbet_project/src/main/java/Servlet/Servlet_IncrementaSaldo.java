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
		
	
			Cookie[] cookies = request.getCookies();
		 	String nomeCookie = "a";
		 	String valoreCookie = "";

		 	if (cookies != null) 
		 	{
		 		for (Cookie cookie : cookies) 
		 		{
		 			if (cookie.getName().equals(nomeCookie)) 
		 			{
		 				valoreCookie = cookie.getValue();
		 				break;
		 			}
		 		}
		 	}
		
			
			
//		String usernameUtentee = (String)request.getAttribute("user");
		ConnessioneDB connessioneDB = new ConnessioneDB();
		connessioneDB.incrementaSaldo(valoreCookie);
		float saldo = connessioneDB.getSaldo(valoreCookie);
		
//		String incrementaSaldoParam = request.getParameter("aumentosaldo");
		request.setAttribute("saldo", saldo);
		request.getRequestDispatcher("Servlet_MostraEventi").forward(request, response);

		

	    	
	    
	    	
	    
		
		
		
		}


}