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
import Classi.Partite_Calcio;

/**
 * Servlet implementation class Servlet_SquadreCalcio
 */
public class Servlet_SquadreCalcio extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Calcio> squadreCalcio;
		Partite_Calcio partiteCalcio = new Partite_Calcio();
		squadreCalcio = partiteCalcio.getAll();
		
		request.setAttribute("ForzaRoma", squadreCalcio);
		RequestDispatcher disp = request.getRequestDispatcher("bet-page.jsp");
		disp.forward(request,  response);
		
		
		
		
	}

}
