package modelo;

public class Telefono {
	private int nIdTelefono;
	private String sTelefono;
	
	/**
	 * 
	 * @param nIdTelefono
	 * @param sTelefono
	 */
	public Telefono(int nIdTelefono, String sTelefono) {
		this.nIdTelefono = nIdTelefono;
		this.sTelefono = sTelefono;
	}

	/**
	 * 
	 * @return
	 */
	public int getnIdTelefono() {
		return nIdTelefono;
	}

	/**
	 * 
	 * @param nIdTelefono
	 */
	public void setnIdTelefono(int nIdTelefono) {
		this.nIdTelefono = nIdTelefono;
	}

	/**
	 * 
	 * @return
	 */
	public String getsTelefono() {
		return sTelefono;
	}

	/**
	 * 
	 * @param sTelefono
	 */
	public void setsTelefono(String sTelefono) {
		this.sTelefono = sTelefono;
	}
	
}
