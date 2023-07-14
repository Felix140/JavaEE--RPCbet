package Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

import Connessione.ConnessioneDB;

/**
 * Servlet implementation class Servlet_Schedina
 */
public class Servlet_Schedina extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	 int counter = 0;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String evento1Codice = request.getParameter("evento1_codice");
		String evento2Codice = request.getParameter("evento2_codice");
		String evento3Codice = request.getParameter("evento3_codice");
		String evento4Codice = request.getParameter("evento4_codice");
		String evento5Codice = request.getParameter("evento5_codice");
		String evento6Codice = request.getParameter("evento6_codice");
		String evento7Codice = request.getParameter("evento7_codice");
		String evento8Codice = request.getParameter("evento8_codice");
		String evento9Codice = request.getParameter("evento9_codice");
		boolean risultatoschedina = true;
		String user = request.getParameter("NomeUser");
		int generacodiceschedina =GeneraCodiceSchedina();
		int codiceschedina =  generacodiceschedina;

		String importogiocato = request.getParameter("importogiocato");
		
		
		
		
		
		 {
			//EVENTO 1
			if (evento1Codice == null || evento1Codice.isEmpty()) {
				
			
			} else {
				boolean risultatoconfronto;
				
             	String evento1Colonna = request.getParameter("evento1_colonna");
             	String esitopartita = GeneraRisultatoPartita();
				int parametro = Integer.parseInt(evento1Codice);
				float importogiocatofloat = Float.parseFloat(importogiocato);
		    	ConnessioneDB conn1 = new ConnessioneDB();
		    	
		    	
		    	if(evento1Colonna.equals(esitopartita))
		    	{risultatoconfronto = true; }
		    	else
		    	{risultatoconfronto = false;risultatoschedina =false;}
		    	
			    conn1.InserimentoSchedina(generacodiceschedina,parametro,user,esitopartita,evento1Colonna,risultatoconfronto,importogiocatofloat);
			    
			}
			
			//EVENTO 2
           if (evento2Codice == null || evento2Codice.isEmpty()) {
				   
				
			} else {
		    	String esitopartita = GeneraRisultatoPartita();
	            String evento2Colonna = request.getParameter("evento2_colonna");
	            float importogiocatofloat = Float.parseFloat(importogiocato);
				int parametro = Integer.parseInt(evento2Codice);
		    	ConnessioneDB conn1 = new ConnessioneDB();
		    	boolean risultatoconfronto;
		    	if(evento2Colonna.equals(esitopartita))
		    	{risultatoconfronto = true; }
		    	else
		    	{risultatoconfronto = false;risultatoschedina =false;}
		    	
		    	conn1.InserimentoSchedina(codiceschedina,parametro,user,esitopartita,evento2Colonna,risultatoconfronto,importogiocatofloat);
			
	
			}
			//EVENTO 3	
	if (evento3Codice == null || evento3Codice.isEmpty()) {
				   
				
			} else {
		    	String esitopartita = GeneraRisultatoPartita();
	            String evento3Colonna = request.getParameter("evento3_colonna");
	            float importogiocatofloat = Float.parseFloat(importogiocato);
				int parametro = Integer.parseInt(evento3Codice);
		    	ConnessioneDB conn1 = new ConnessioneDB();
		    	boolean risultatoconfronto;
		    	if(evento3Colonna.equals(esitopartita))
		    	{risultatoconfronto = true; }
		    	else
		    	{risultatoconfronto = false;risultatoschedina =false;}
		    	conn1.InserimentoSchedina(codiceschedina,parametro,user,esitopartita,evento3Colonna,risultatoconfronto,importogiocatofloat);
			
	
			}
	//EVENTO 4
	if (evento4Codice == null || evento4Codice.isEmpty()) {
		   
		
	} else {
    	String esitopartita = GeneraRisultatoPartita();
        String evento4Colonna = request.getParameter("evento4_colonna");
        float importogiocatofloat = Float.parseFloat(importogiocato);
		int parametro = Integer.parseInt(evento4Codice);
    	ConnessioneDB conn1 = new ConnessioneDB();
    	boolean risultatoconfronto;
    	if(evento4Colonna.equals(esitopartita))
    	{risultatoconfronto = true; }
    	else
    	{risultatoconfronto = false;risultatoschedina =false;}
    	conn1.InserimentoSchedina(codiceschedina,parametro,user,esitopartita,evento4Colonna,risultatoconfronto,importogiocatofloat);
	

	}
	//EVENTO 5
	if (evento5Codice == null || evento5Codice.isEmpty()) {
		   
		
	} else {
    	String esitopartita = GeneraRisultatoPartita();
        String evento5Colonna = request.getParameter("evento5_colonna");
        float importogiocatofloat = Float.parseFloat(importogiocato);
		int parametro = Integer.parseInt(evento5Codice);
    	ConnessioneDB conn1 = new ConnessioneDB();
    	boolean risultatoconfronto;
    	if(evento5Colonna.equals(esitopartita))
    	{risultatoconfronto = true; }
    	else
    	{risultatoconfronto = false;risultatoschedina =false;}
    	conn1.InserimentoSchedina(codiceschedina,parametro,user,esitopartita,evento5Colonna,risultatoconfronto,importogiocatofloat);
	

	}
	//EVENTO 6
	if (evento6Codice == null || evento6Codice.isEmpty()) {
		   
		
	} else {
    	String esitopartita = GeneraRisultatoPartita();
        String evento6Colonna = request.getParameter("evento6_colonna");
        float importogiocatofloat = Float.parseFloat(importogiocato);
		int parametro = Integer.parseInt(evento6Codice);
    	ConnessioneDB conn1 = new ConnessioneDB();
    	boolean risultatoconfronto;
    	if(evento6Colonna.equals(esitopartita))
    	{risultatoconfronto = true; }
    	else
    	{risultatoconfronto = false;risultatoschedina =false;}
    	conn1.InserimentoSchedina(codiceschedina,parametro,user,esitopartita,evento6Colonna,risultatoconfronto,importogiocatofloat);
	

	}
	//EVENTO 7
	if (evento7Codice == null || evento7Codice.isEmpty()) {
		   
		
	} else {
    	String esitopartita = GeneraRisultatoPartita();
        String evento7Colonna = request.getParameter("evento7_colonna");
        float importogiocatofloat = Float.parseFloat(importogiocato);
		int parametro = Integer.parseInt(evento7Codice);
    	ConnessioneDB conn1 = new ConnessioneDB();
    	boolean risultatoconfronto;
    	if(evento7Colonna.equals(esitopartita))
    	{risultatoconfronto = true; }
    	else
    	{risultatoconfronto = false;risultatoschedina =false;}
    	conn1.InserimentoSchedina(codiceschedina,parametro,user,esitopartita,evento7Colonna,risultatoconfronto,importogiocatofloat);
	

	}
	//EVENTO 8
	if (evento8Codice == null || evento8Codice.isEmpty()) {
		   
		
	} else {
    	String esitopartita = GeneraRisultatoPartita();
        String evento8Colonna = request.getParameter("evento8_colonna");
        float importogiocatofloat = Float.parseFloat(importogiocato);
		int parametro = Integer.parseInt(evento8Codice);
    	ConnessioneDB conn1 = new ConnessioneDB();
    	boolean risultatoconfronto;
    	if(evento8Colonna.equals(esitopartita))
    	{risultatoconfronto = true; }
    	else
    	{risultatoconfronto = false;risultatoschedina =false;}
    	conn1.InserimentoSchedina(codiceschedina,parametro,user,esitopartita,evento8Colonna,risultatoconfronto,importogiocatofloat);
	

	}
	//EVENTO 9
	if (evento9Codice == null || evento9Codice.isEmpty()) {
		   
		
	} else {
    	String esitopartita = GeneraRisultatoPartita();
        String evento9Colonna = request.getParameter("evento9_colonna");
        float importogiocatofloat = Float.parseFloat(importogiocato);
		int parametro = Integer.parseInt(evento9Codice);
    	ConnessioneDB conn1 = new ConnessioneDB();
    	boolean risultatoconfronto;
    	if(evento9Colonna.equals(esitopartita))
    	{risultatoconfronto = true; }
    	else
    	{risultatoconfronto = false;risultatoschedina =false;}
    	conn1.InserimentoSchedina(codiceschedina,parametro,user,esitopartita,evento9Colonna,risultatoconfronto,importogiocatofloat);
	

	}
	ConnessioneDB conn1 = new ConnessioneDB();
	conn1.InserimentoStoricoSchedina(user,codiceschedina,risultatoschedina); 

			
			
	}	
	}
	
	
	
	
	
	
	
	public int GeneraCodiceSchedina() {
		Random random = new Random();
		return random.nextInt(1000000); // Genera un intero compreso tra 0 e 999999 (massimo 6 cifre)
	}
	
	
	public  String GeneraRisultatoPartita() {
        Random random = new Random();
        int randomNumber = random.nextInt(3);  // Genera un numero casuale tra 0 e 2
        
        if (randomNumber == 0) {
            return "1";
        } else if (randomNumber == 1) {
            return "x";
        } else {
            return "2";
        }
	
	

}}