package Classi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Storico_Schedine {

	// credenziali database
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/rpcbet";
	String usernameDb = "root";
	// INSERISCI LA TUA PASSWORD
	String passwordDb = "user_mysql_14";

	private String username_utente;
	private int codice_schedina;
	private boolean esito_schedina;

	public String getUsername_utente() {
		return username_utente;
	}

	public void setUsername_utente(String username_utente) {
		this.username_utente = username_utente;
	}

	public int getCodice_schedina() {
		return codice_schedina;
	}

	public void setCodice_schedina(int codice_schedina) {
		this.codice_schedina = codice_schedina;
	}

	public boolean isEsito_schedina() {
		return esito_schedina;
	}

	public void setEsito_schedina(boolean esito_schedina) {
		this.esito_schedina = esito_schedina;
	}

	// ******** ESTRAI STORICO SCHEDINE UTENTE ************
	
	
	public ArrayList<Storico_Schedine> estrai_storicoUtente() throws SQLException {
		ArrayList<Storico_Schedine> storico = new ArrayList<>();


		try {
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, usernameDb, passwordDb);
			String query = "SELECT * FROM rpcbet.storico_schedine";
			PreparedStatement stat = conn.prepareStatement(query);
			ResultSet rs = stat.executeQuery();
			
			while (rs.next()) {
				
				// creo un oggetto di tipo Storico_Schedine
                Storico_Schedine schedina = new Storico_Schedine();
                
                schedina.setUsername_utente(rs.getString("Username_Utente"));
                schedina.setCodice_schedina(rs.getInt("Codice_Schedine"));
                schedina.setEsito_schedina(rs.getBoolean("Esito_Schedina"));
                
                
                storico.add(schedina);
            }
			
			
			conn.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("Driver non trovato");
		}
		
		return storico;
		
	}

}
