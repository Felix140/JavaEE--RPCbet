package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import Connessione.ConnessioneDB;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Servlet_LoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String usernameAdmin = request.getParameter("usernameAdmin");
		String passwordAdmin = request.getParameter("passwordAdmin");
		
		
		ConnessioneDB connect = new ConnessioneDB();
		HttpSession session = request.getSession();
		
		try {
			
			boolean checkLogin = connect.login_admin(usernameAdmin, passwordAdmin);
			if (checkLogin) {
				// Spedisci
				RequestDispatcher dispatch = request.getRequestDispatcher("admin-page.jsp");
				session.setAttribute("NomeAdmin", usernameAdmin);
				dispatch.forward(request, response);
				
			} else {
				
				response.sendRedirect("adminLogin.html");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Errore servlet");
		}
		
		

	}

}
