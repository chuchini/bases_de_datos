package modelo;

public class PersonaTelefono {
	private Persona persona;
	private Telefono telefono;
	private boolean bActivo;
	
	/**
	 * 
	 * @param persona
	 * @param telefono
	 * @param bActivo
	 */
	public PersonaTelefono(Persona persona, Telefono telefono, boolean bActivo) {
		this.persona = persona;
		this.telefono = telefono;
		this.bActivo = bActivo;
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

	/**
	 * 
	 * @return
	 */
	public Telefono getTelefono() {
		return telefono;
	}

	/**
	 * 
	 * @param telefono
	 */
	public void setTelefono(Telefono telefono) {
		this.telefono = telefono;
	}

	/**
	 * 
	 * @return
	 */
	public boolean isbActivo() {
		return bActivo;
	}

	/**
	 * 
	 * @param bActivo
	 */
	public void setbActivo(boolean bActivo) {
		this.bActivo = bActivo;
	}
	
}
