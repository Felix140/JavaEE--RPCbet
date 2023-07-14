package Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import Connessione.ConnessioneDB;

/**
 * Servlet implementation class Servlet_RiccardoGay
 */
public class Servlet_RiccardoGay extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{   
		
		String valore2 = request.getParameter("opzione");
        request.setAttribute("Numero", valore2);

		RequestDispatcher dispatch = request.getRequestDispatcher("Servlet_IncrementaSaldo");
		dispatch.forward(request, response);

	}

	
}
