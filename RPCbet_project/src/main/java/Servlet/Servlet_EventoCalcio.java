package Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import Classi.Calcio;
import Classi.Evento_Sportivo;

/**
 * Servlet implementation class Servlet_EventoCalcio
 */
public class Servlet_EventoCalcio extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		boolean generazioneEventiCalcio;


		
		for (int i = 0; i < 3; i++) {
			
			Evento_Sportivo eventosportivo = new Evento_Sportivo();
	     	generazioneEventiCalcio = eventosportivo.inserimento_eventocalcio();
	    	request.setAttribute("ForzaMagggggica", generazioneEventiCalcio);
		}
		

		RequestDispatcher disp = request.getRequestDispatcher("bet-page.jsp");
		disp.forward(request,  response);
		
		
		
		
	}

}
