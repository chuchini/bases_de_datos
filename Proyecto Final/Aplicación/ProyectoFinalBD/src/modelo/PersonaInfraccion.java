package modelo;

public class PersonaInfraccion {
	private Persona persona;
	private Infraccion infraccion;
	
	/**
	 * 
	 * @param persona
	 * @param infraccion
	 */
	public PersonaInfraccion(Persona persona, Infraccion infraccion) {
		this.persona = persona;
		this.infraccion = infraccion;
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
	public Infraccion getInfraccion() {
		return infraccion;
	}

	/**
	 * 
	 * @param infraccion
	 */
	public void setInfraccion(Infraccion infraccion) {
		this.infraccion = infraccion;
	}
	
	
}
