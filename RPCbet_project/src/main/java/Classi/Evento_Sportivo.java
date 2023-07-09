package Classi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;

public class Evento_Sportivo {

	String driver ="com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/rpcbet";
	String usernameDb = "root";
	// INSERISCI LA TUA PASSWORD
	String passwordDb = "root";
	
	private ArrayList<Calcio> squadreCalcio = new ArrayList<>();
	private  ArrayList<Evento_Sportivo> eventosportivo = new ArrayList<>();
	
	
	private int codice_partita;
	private String sport;
	private String sq1;
	private String sq2;
	private float quota_1;
	private float quota_x;
	private float quota_2;
	private boolean evento_concluso;
	private String risultato_partita; //se la partita' e' finita in 1, x o 2
	
	
	
	public int getCodice_partita() {
		return codice_partita;
	}
	public void setCodice_partita(int codice_partita) {
		this.codice_partita = codice_partita;
	}
	public String getSport() {
		return sport;
	}
	public void setSport(String sport) {
		this.sport = sport;
	}
	public String getSq1() {
		return sq1;
	}
	public void setSq1(String sq1) {
		this.sq1 = sq1;
	}
	public String getSq2() {
		return sq2;
	}
	public void setSq2(String sq2) {
		this.sq2 = sq2;
	}
	public float getQuota_1() {
		return quota_1;
	}
	public void setQuota_1(float quota_1) {
		this.quota_1 = quota_1;
	}
	public float getQuota_x() {
		return quota_x;
	}
	public void setQuota_x(float quota_x) {
		this.quota_x = quota_x;
	}
	public float getQuota_2() {
		return quota_2;
	}
	public void setQuota_2(float quota_2) {
		this.quota_2 = quota_2;
	}
	public boolean isEvento_concluso() {
		return evento_concluso;
	}
	public void setEvento_concluso(boolean evento_concluso) {
		this.evento_concluso = evento_concluso;
	}
	public String getRisultato_partita() {
		return risultato_partita;
	}
	public void setRisultato_partita(String risultato_partita) {
		this.risultato_partita = risultato_partita;
	}
	
	
	public ArrayList<Evento_Sportivo> PartiteCalcio() 
	{
try {	
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, usernameDb, passwordDb);
			Statement stat = conn.createStatement();
			ResultSet rs = stat.executeQuery("SELECT Nome_Squadra FROM calcio");
			
			while(rs.next() ) {
				Calcio calcio = new Calcio();
				calcio.setNome_squadra(rs.getString("Nome_Squadra"));
				squadreCalcio.add(calcio);
			}
			
			   Collections.shuffle(squadreCalcio);
		        
		        for (int i = 0; i < squadreCalcio.size(); i+=2) {
		        	Evento_Sportivo evento = new Evento_Sportivo();
		        	evento.setSq1(squadreCalcio.get(i).getNome_squadra());
		        	 System.out.println(squadreCalcio.get(i).getNome_squadra());
		        	evento.setSq2(squadreCalcio.get(i+1).getNome_squadra());
		        	 System.out.println(squadreCalcio.get(i+1).getNome_squadra());
		        	eventosportivo.add(evento);
		        }   
		        
		        System.out.println(eventosportivo);
		} catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	
     
        return eventosportivo;
		
		
		
	}
	
	
	
	
}
