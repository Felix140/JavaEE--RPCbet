package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class Servlet_Risultato_Schedina extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ciao = (String)request.getAttribute("VincitaSchedina");
		String codice_schedina = (String)request.getAttribute("Codice_Schedina12");
	
		PrintWriter writer = response.getWriter();
		writer.println(ciao);
		writer.println(codice_schedina);
	}

}
