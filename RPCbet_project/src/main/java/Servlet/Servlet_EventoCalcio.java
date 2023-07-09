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
		
		ArrayList<Calcio> squadreCalcio;
		ArrayList<Evento_Sportivo> Eventosportivorandom;


		Evento_Sportivo eventosportivo = new Evento_Sportivo();
		
		Eventosportivorandom = eventosportivo.PartiteCalcio();
		
		request.setAttribute("ForzaMagggggica", Eventosportivorandom);

		RequestDispatcher disp = request.getRequestDispatcher("bet-page.jsp");
		disp.forward(request,  response);
		
		
		
		
	}

}
