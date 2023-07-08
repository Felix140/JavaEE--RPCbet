package Connessione;

public class ConnessioneDB 
{
	//user
	 String nome;
	 String cognome;
	 String username_utente;
	 String codice_fiscale;
	 String numero_documento;
	 String email;
	 String password_user;
	 float saldo;
	 String data_nascita;
	
	//admin
	 
	  String nome_admin;
	  String password_admin;
	 
	 //credenziali database
	  
	  String url = "jdbc:mysql://localhost:3306/rpcbet ";
	  String UsernameDb= "root";
	  String PasswordDb= "root";

	  public void inserimento_user (String a,String b,String c,String d,String f,String g,String h,float i,String l)
	  {
		  this.nome =a;
		  this.cognome =b;
		  this.username_utente =c;
		  this.codice_fiscale =d;
		  this.numero_documento =f;
		  this.email =g;
		  this.password_user =h;
		  this.saldo =i;
		  this.data_nascita=l;
		  
		  
		  
		  
	  }
	  
	  
	  
	
	
	
}
