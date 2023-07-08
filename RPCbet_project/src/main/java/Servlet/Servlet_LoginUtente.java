package Servlet;
import Connessione.ConnessioneDB;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

/**
 * Servlet implementation class Servlet_LoginUtente
 */
public class Servlet_LoginUtente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String usernameUtente = request.getParameter("usernameUtente");
		String passwordUtente = request.getParameter("passwordUtente");
		
		ConnessioneDB connect = new ConnessioneDB();
		HttpSession session = request.getSession();
		
		try {
			boolean checkLogin = connect.login_user(usernameUtente, passwordUtente);
			if (checkLogin) {
				//Spedisci
				RequestDispatcher dispatch = request.getRequestDispatcher("bet-page.jsp");
				session.setAttribute("NomeUser", usernameUtente);
				dispatch.forward(request, response);
			
			} else {
				
				response.sendRedirect("loginUtente.html");
				
			}
			
		} catch (SQLException e){
			e.printStackTrace();
			System.out.println("Errore servlet");
		}
	}

}
