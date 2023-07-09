package Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import Classi.Evento_Sportivo;


public class Servlet_MostraEventi extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Evento_Sportivo event = new Evento_Sportivo();
		ArrayList<Evento_Sportivo> arr = new ArrayList<>();
		arr = event.estrai_eventi();
		request.setAttribute("table", arr);
		
		// Spedisci verso bet-page
		RequestDispatcher dispatch = request.getRequestDispatcher("bet-page.jsp");
		dispatch.forward(request, response); 

	}

}
