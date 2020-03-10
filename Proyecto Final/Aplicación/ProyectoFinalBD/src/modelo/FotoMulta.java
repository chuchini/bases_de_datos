package modelo;

public class FotoMulta {
	private int nNoCamara;
	private Ubicacion ubicacion;
	
	/**
	 * 
	 * @param nNoCamara
	 * @param ubicacion
	 */
	public FotoMulta(int nNoCamara, Ubicacion ubicacion) {
		this.nNoCamara = nNoCamara;
		this.ubicacion = ubicacion;
	}

	/**
	 * 
	 * @return
	 */
	public int getnNoCamara() {
		return nNoCamara;
	}

	/**
	 * 
	 * @param nNoCamara
	 */
	public void setnNoCamara(int nNoCamara) {
		this.nNoCamara = nNoCamara;
	}

	/**
	 * 
	 * @return
	 */
	public Ubicacion getUbicacion() {
		return ubicacion;
	}

	/**
	 * 
	 * @param ubicacion
	 */
	public void setUbicacion(Ubicacion ubicacion) {
		this.ubicacion = ubicacion;
	}
	
}
