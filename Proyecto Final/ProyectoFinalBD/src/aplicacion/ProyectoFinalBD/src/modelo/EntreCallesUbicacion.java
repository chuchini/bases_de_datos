package modelo;

public class EntreCallesUbicacion {
	private Ubicacion ubicacion;
	private String sEntreCalles;
	
	/**
	 * 
	 * @param ubicacion
	 * @param sEntreCalles
	 */
	public EntreCallesUbicacion(Ubicacion ubicacion, String sEntreCalles) {
		this.ubicacion = ubicacion;
		this.sEntreCalles = sEntreCalles;
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

	/**
	 * 
	 * @return
	 */
	public String getsEntreCalles() {
		return sEntreCalles;
	}
	
	/**
	 * 
	 * @param sEntreCalles
	 */
	public void setsEntreCalles(String sEntreCalles) {
		this.sEntreCalles = sEntreCalles;
	}

}
