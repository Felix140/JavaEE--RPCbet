package Connessione;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class ClasseEstrapolazioneTXT
{
	 private String  contenutoFile = "";
	
	
	
	public String MetodoEstrapolazioneFile()
	{
		try (BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\laptop rpctech\\Desktop\\github\\RPCbet\\Password.txt"))) {
		    String linea;
		    while ((linea = br.readLine()) != null) {
		        contenutoFile += linea;
		    }
		} catch (IOException e) {
		    e.printStackTrace();    
		}
		
		 return contenutoFile;
		
	}

}
