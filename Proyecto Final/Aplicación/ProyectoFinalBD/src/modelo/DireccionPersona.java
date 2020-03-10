package modelo;

public class DireccionPersona {
	private Direccion direccion;
	private Persona persona;
	
	/**
	 * 
	 * @param direccion
	 * @param persona
	 */
	public DireccionPersona(Direccion direccion, Persona persona) {
		this.direccion = direccion;
		this.persona = persona;
	}

	/**
	 * 
	 * @return
	 */
	public Direccion getDireccion() {
		return direccion;
	}

	/**
	 * 
	 * @param direccion
	 */
	public void setDireccion(Direccion direccion) {
		this.direccion = direccion;
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
