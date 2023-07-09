package Classi;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.sql.SQLException;
import java.util.ArrayList;
import Classi.Calcio;


public class Partite_Calcio {

	String driver ="com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/rpcbet";
	String usernameDb = "root";
	// INSERISCI LA TUA PASSWORD
	String passwordDb = "Zinni.17";
	
	private ArrayList<Calcio> squadreCalcio = new ArrayList<>();
	
	
	public ArrayList<Calcio> getAll() {
		
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
			
		} catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return squadreCalcio;
	}
}
