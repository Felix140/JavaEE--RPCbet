package Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import Classi.Evento_Sportivo;
import Connessione.ConnessioneDB;


public class Servlet_MostraEventi extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Evento_Sportivo eventCalcio = new Evento_Sportivo();
		ArrayList<Evento_Sportivo> arrCalcio = eventCalcio.estrai_eventi("Calcio");
		request.setAttribute("tableCalcio", arrCalcio);
		
		//Creo l'array degli eventi di TENNIS
		Evento_Sportivo eventTennis = new Evento_Sportivo();
		ArrayList<Evento_Sportivo> arrTennis = eventTennis.estrai_eventi("Tennis");
		request.setAttribute("tableTennis", arrTennis);

		//Creo l'array degli eventi di BOXE
		Evento_Sportivo eventBoxe = new Evento_Sportivo();
		ArrayList<Evento_Sportivo> arrBoxe = eventBoxe.estrai_eventi("Boxe");
		request.setAttribute("tableBoxe", arrBoxe);
		
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
		
		
		
		
		
		RequestDispatcher dispatch = request.getRequestDispatcher("bet-page.jsp");
		dispatch.forward(request, response);
		

		
		
		
		
		
	 	
	}

}
