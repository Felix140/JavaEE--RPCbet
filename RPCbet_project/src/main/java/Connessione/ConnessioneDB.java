package Connessione;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;



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
	String driver ="com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/rpcbet";
	String usernameDb = "root";
	// INSERISCI LA TUA PASSWORD
	String passwordDb = "root";
	
	
	
// 	REGISTRAZIONE USER
	public boolean inserimento_user(String a, String b, String c, String d, String f, String g, String h, float i,	String l)
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
			Class.forName(driver);
			  Connection conn = DriverManager.getConnection(url,usernameDb,passwordDb);
			  String query = "INSERT INTO utente VALUES(0,?,?,?,?,?,?,?,?,?)";
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
			
		   System.out.println("Registrazione eseguita con successo");
			conn.close();
			
			return true;
		}
		catch(SQLException | ClassNotFoundException e)
		{
			e.printStackTrace();
			   System.out.println("ERRORE PD!");

			
		}
		
		
		return false;

	}
	
	
//	LOGIN ADMIN
	public boolean login_admin(String nome_admin, String password_admin) throws SQLException {
		
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
			System.out.println("Non trovo la classe Driver");
		}
		
		
		Connection conn = DriverManager.getConnection(url, usernameDb, passwordDb);
		Statement query = conn.createStatement();
		ResultSet result = query.executeQuery("SELECT * FROM rpcbet.admin;");
		
		
		
		while (result.next()) {

			String admin = result.getString("Nome_Admin");
			String password = result.getString("Password");

			if (nome_admin.equals(admin) && password_admin.equals(password)) {
				System.out.println("Accesso effettuato come scommettitore di freccette");
				System.out.println("Nome: " + admin);
				System.out.println("Password: " + password);
				
				return true;

			} else {
				System.out.println("Credenziali errate");
			}
		}

		conn.close();
		return false;
	}	
	
	
//	LOGIN USER
	public boolean login_user(String username_utente, String password_user) throws SQLException {
		
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
			System.out.println("Non trovo la classe Driver");
		}
		
		
		Connection conn = DriverManager.getConnection(url, usernameDb, passwordDb);
		Statement query = conn.createStatement();
		ResultSet result = query.executeQuery("SELECT * FROM rpcbet.utente;");
		
		
		
		while (result.next()) {

			String user = result.getString("Username_Utente");
			String password = result.getString("Password");

			if (username_utente.equals(user) && password_user.equals(password)) {
				System.out.println("Accesso effettuato come scommettitore di freccette");
				System.out.println("Nome: " + user);
				System.out.println("Password: " + password);
				
				return true;

			} else {
				System.out.println("Credenziali errate");
			}
		}

		conn.close();
		return false;
	}	
	
	

}
