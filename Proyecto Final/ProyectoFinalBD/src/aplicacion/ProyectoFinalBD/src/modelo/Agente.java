package modelo;

public class Agente {
	private int nNoIdentificacion;
	private String sSector;
	private Persona persona;
	
	/**
	 * 
	 * @param nNoIdentificacion
	 * @param sSector
	 * @param persona
	 */
	public Agente(int nNoIdentificacion, String sSector, Persona persona) {
		this.nNoIdentificacion = nNoIdentificacion;
		this.sSector = sSector;
		this.persona = persona;
	}

	/**
	 * 
	 * @return
	 */
	public int getnNoIdentificacion() {
		return nNoIdentificacion;
	}

	/**
	 * 
	 * @param nNoIdentificacion
	 */
	public void setnNoIdentificacion(int nNoIdentificacion) {
		this.nNoIdentificacion = nNoIdentificacion;
	}

	/**
	 * 
	 * @return
	 */
	public String getsSector() {
		return sSector;
	}

	/**
	 * 
	 * @param sSector
	 */
	public void setsSector(String sSector) {
		this.sSector = sSector;
	}

	/**
	 * 
	 * @return
	 */
	public Persona getPersona() {
		return persona;
	}

	/**
	 * 
	 * @param persona
	 */
	public void setPersona(Persona persona) {
		this.persona = persona;
	}
	
}
