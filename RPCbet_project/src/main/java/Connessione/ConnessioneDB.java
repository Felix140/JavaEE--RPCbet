package Connessione;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ConnessioneDB {
	// user
	String nome;
	String cognome;
	String username_utente;
	String codice_fiscale;
	String numero_documento;
	String email;
	String password_user;
	float saldo;
	String data_nascita;

	// admin
	String nome_admin;
	String password_admin;
	
	
	// credenziali database

	String url = "jdbc:mysql://localhost:3306/rpcbet ";
	String usernameDb = "root";
	String passwordDb = "root";

	public void inserimento_user(String a, String b, String c, String d, String f, String g, String h, float i,	String l)
	{

		this.nome = a;
		this.cognome = b;
		this.username_utente = c;
		this.codice_fiscale = d;
		this.numero_documento = f;
		this.email = g;
		this.password_user = h;
		this.saldo = i;
		this.data_nascita = l;
		
		try 
		{
			  Connection conn = DriverManager.getConnection(url,usernameDb,passwordDb);
			  String query = "INSERT INTO utente VALUES(0,?,?,?,?,?,?,?)";
			  PreparedStatement stat = conn.prepareStatement(query);
			
			stat.setString(1, this.nome);
			stat.setString(2, this.cognome);
			stat.setString(3, this.username_utente);
			stat.setString(4, this.codice_fiscale);
			stat.setString(5, this.numero_documento);
			stat.setString(6, this.email);
			stat.setString(7, this.password_user);
			stat.setFloat (8, this.saldo);
			stat.setString(9, this.data_nascita);

			
		   stat.executeUpdate();
			
		   System.out.println("inserimento eseguito con successo");
			conn.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
			
			
		}
		
		
		

	}

}
