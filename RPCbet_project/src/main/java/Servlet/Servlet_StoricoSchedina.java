package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import Classi.Storico_Schedine;

@WebServlet("/Servlet_StoricoSchedina")
public class Servlet_StoricoSchedina extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// creo l'oggetto di tipo Storico_Schedine
        Storico_Schedine storicoSchedine = new Storico_Schedine();

        try {
        	// richiamo il metodo 
            ArrayList<Storico_Schedine> storico = storicoSchedine.estrai_storicoUtente();
            request.setAttribute("storico", storico);
            request.getRequestDispatcher("storico_schedina.jsp").forward(request, response);
            
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Errore Servlet");
        }
    }
}