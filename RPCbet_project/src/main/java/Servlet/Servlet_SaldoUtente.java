package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import Connessione.ConnessioneDB;


public class Servlet_SaldoUtente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
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
		 	
		ConnessioneDB connessioneDB = new ConnessioneDB();
		

		
   	    float saldo = connessioneDB.getSaldo(nomeUtente);
	    System.out.println("Hai " + saldo + "euro");
	    request.setAttribute("saldo", saldo);
	    response.setContentType("text/plain");
        response.getWriter().write(String.valueOf(saldo));
	    
	    
	    response.setContentType("text/plain");
        response.getWriter().write(String.valueOf(saldo));
	}

}
