package Classi;

public class Schedina {

	private int codice_schedina;
	private int codice_partita;
	private String username_utente;
	private String esito_partita;
	private String esito_utente;
	private boolean risultato_partita;   //confronto tra esito partita e esito utente se uguali allora ritorna true
	private float importo_giocato;
	public int getCodice_schedina() {
		return codice_schedina;
	}
	public void setCodice_schedina(int codice_schedina) {
		this.codice_schedina = codice_schedina;
	}
	public int getCodice_partita() {
		return codice_partita;
	}
	public void setCodice_partita(int codice_partita) {
		this.codice_partita = codice_partita;
	}
	public String getUsername_utente() {
		return username_utente;
	}
	public void setUsername_utente(String username_utente) {
		this.username_utente = username_utente;
	}
	public String getEsito_partita() {
		return esito_partita;
	}
	public void setEsito_partita(String esito_partita) {
		this.esito_partita = esito_partita;
	}
	public String getEsito_utente() {
		return esito_utente;
	}
	public void setEsito_utente(String esito_utente) {
		this.esito_utente = esito_utente;
	}
	public boolean isRisultato_partita() {
		return risultato_partita;
	}
	public void setRisultato_partita(boolean risultato_partita) {
		this.risultato_partita = risultato_partita;
	}
	public float getImporto_giocato() {
		return importo_giocato;
	}
	public void setImporto_giocato(float importo_giocato) {
		this.importo_giocato = importo_giocato;
	} 
	
	
	
}
