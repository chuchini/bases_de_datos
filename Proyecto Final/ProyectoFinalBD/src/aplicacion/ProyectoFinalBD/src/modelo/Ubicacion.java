package modelo;

public class Ubicacion {
	private int nIdUbicacion;
	private String sCalle;
	private String sReferencia;
	private CMunicipio municipio;
	
	/**
	 * 
	 * @param nIdUbicacion
	 * @param sCalle
	 * @param sReferencia
	 * @param municipio
	 */
	public Ubicacion(int nIdUbicacion, String sCalle, String sReferencia, CMunicipio municipio) {
		super();
		this.nIdUbicacion = nIdUbicacion;
		this.sCalle = sCalle;
		this.sReferencia = sReferencia;
		this.municipio = municipio;
	}

	/**
	 * 
	 * @return
	 */
	public int getnIdUbicacion() {
		return nIdUbicacion;
	}

	/**
	 * 
	 * @param nIdUbicacion
	 */
	public void setnIdUbicacion(int nIdUbicacion) {
		this.nIdUbicacion = nIdUbicacion;
	}

	/**
	 * 
	 * @return
	 */
	public String getsCalle() {
		return sCalle;
	}

	/**
	 * 
	 * @param sCalle
	 */
	public void setsCalle(String sCalle) {
		this.sCalle = sCalle;
	}

	/**
	 * 
	 * @return
	 */
	public String getsReferencia() {
		return sReferencia;
	}

	/**
	 * 
	 * @param sReferencia
	 */
	public void setsReferencia(String sReferencia) {
		this.sReferencia = sReferencia;
	}

	/**
	 * 
	 * @return
	 */
	public CMunicipio getMunicipio() {
		return municipio;
	}

	/**
	 * 
	 * @param municipio
	 */
	public void setMunicipio(CMunicipio municipio) {
		this.municipio = municipio;
	}
	
}
