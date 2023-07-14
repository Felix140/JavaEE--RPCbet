package Connessione;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletRequest;

import java.net.URL;
import java.sql.*;
import java.io.File;
import java.io.InputStream;

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

	// aumento importo
	
	float imp;

	ClasseEstrapolazioneTXT oggettotxt = new ClasseEstrapolazioneTXT();

	// credenziali database
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/rpcbet";
	String usernameDb = "root";
	// INSERISCI LA TUA PASSWORD
	String passwordDb = "ciao";

// 	REGISTRAZIONE USER
	public boolean inserimento_user(String a, String b, String c, String d, String f, String g, String h, float i,
			String l) {

		this.nome = a;
		this.cognome = b;
		this.username_utente = c;
		this.codice_fiscale = d;
		this.numero_documento = f;
		this.email = g;
		this.password_user = h;
		this.saldo = i;
		this.data_nascita = l;

		try {
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, usernameDb, passwordDb);
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
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("ERRORE PD!");

		}

		return false;

	}

//	*****************LOGIN ADMIN**********************
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

//	**************LOGIN USER********************
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

	// ***********************GET SALDO****************************

	public float getSaldo(String username_utente) {

//		this.username_utente = username_utente;
		try {
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, usernameDb, passwordDb);
			String query = "SELECT Saldo FROM rpcbet.utente WHERE Username_Utente = ?";
			PreparedStatement stat = conn.prepareStatement(query);
			
			stat.setString(1, username_utente);
			ResultSet rs = stat.executeQuery();

			if (rs.next()) {
				saldo = rs.getFloat("saldo");
				System.out.println(saldo);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return saldo;
		
	}
	
	

	
	
	// *********************SET SALDO*****************************
	public void incrementaSaldo(String username_utente , int valore) {
//	
//		this.username_utente = username_utente;
	
		try {
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, usernameDb, passwordDb);
			String query = "UPDATE rpcbet.utente SET Saldo = Saldo + ? WHERE Username_Utente = ?;";
			PreparedStatement stat = conn.prepareStatement(query);
            stat.setInt(1, valore);
			stat.setString(2, username_utente);
			stat.executeUpdate();
			System.out.println("Saldo incrementato. Il tuo salto attuale è: " + saldo);

			conn.close();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();

		}

	}
	
	
	//**************DECREMENTA SALDO CON IMPORTO SCHEDINA*****************
	
	public void decrementaSaldo (int importoGiocato, String username_utente) {
		
		
		try {
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, usernameDb, passwordDb);
			String query = "UPDATE rpcbet.utente SET Saldo = Saldo - ? WHERE Username_Utente = ?;";
			PreparedStatement stat = conn.prepareStatement(query);
			
			stat.setInt(1, importoGiocato);
			stat.setString(2, username_utente);

			stat.executeUpdate();
			System.out.println("Saldo decrementato. Il tuo salto attuale è: " + saldo);

			conn.close();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	//**********************INSERIMENTO SCHEDINA***********************
	int Codice_Partita;
	int Codice_Schedina;
	String Esito_Utente;
	String userschedina;
	String esitopartita;
	boolean risultatopartita;
	float importogiocato;
	
	public void InserimentoSchedina(int codiceschedina,int codicepartita,String user,String esitopartita, String esitoutente,boolean risultatopartita, float importogiocato) {
	this.Codice_Schedina = codiceschedina;
		this.Codice_Partita = codicepartita;
		this.Esito_Utente = esitoutente;
		this.userschedina =user;
		this.esitopartita =esitopartita;
		this.risultatopartita = risultatopartita;
		this.importogiocato = importogiocato;
		
		try {
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, usernameDb, passwordDb);
			String query = "INSERT INTO schedina  VALUES (0, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement stat = conn.prepareStatement(query);
			
			stat.setInt(1, this.Codice_Schedina);
			stat.setInt(2, this.Codice_Partita);
			stat.setString(3,this.userschedina);
			stat.setString(4,this.esitopartita);
			stat.setString(5,this.Esito_Utente);
			stat.setBoolean(6, this.risultatopartita);
			stat.setFloat(7, this.importogiocato);
			
			
			stat.executeUpdate();
			
			System.out.println("Scommessa piazzata");
			conn.close();
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		
		}
		
	}
	
	
	//**********************METODO INSERIMENTO DELLO STORICO DELLA SCHEDINA***********************
	boolean esitoschedina;
	String userstorico;
	int codiceschedinastorico;
		public void InserimentoStoricoSchedina(String user,int codiceschedina,boolean esitoschedina) {

			this.esitoschedina = esitoschedina;
			this.userstorico =user;
			this.codiceschedinastorico = codiceschedina;
				
				try {
					Class.forName(driver);
					Connection conn = DriverManager.getConnection(url, usernameDb, passwordDb);
					String query = "INSERT INTO storico_schedine  VALUES (0, ?, ?, ?)";
					PreparedStatement stat = conn.prepareStatement(query);
					stat.setString(1,this.userstorico);
					stat.setInt(2, this.codiceschedinastorico);		
					stat.setBoolean(3, this.esitoschedina);	
					stat.executeUpdate();
					
					System.out.println("storico inserito con successo ");
					conn.close();
					
				} catch (ClassNotFoundException | SQLException e) {

					e.printStackTrace();
				
				}
	}
}
