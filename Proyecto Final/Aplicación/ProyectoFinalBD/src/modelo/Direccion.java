package modelo;

public class Direccion {
	private int nIdDireccion;
	private String sCalle;
	private String sColonia;
	private String sCP;
	private boolean bActivo;
	private CMunicipio municipio;
	
	/**
	 * 
	 * @param nIdDireccion
	 * @param sCalle
	 * @param sColonia
	 * @param sCP
	 * @param bActivo
	 * @param municipio
	 */
	public Direccion(int nIdDireccion, String sCalle, String sColonia, String sCP, boolean bActivo,
			CMunicipio municipio) {
		this.nIdDireccion = nIdDireccion;
		this.sCalle = sCalle;
		this.sColonia = sColonia;
		this.sCP = sCP;
		this.bActivo = bActivo;
		this.municipio = municipio;
	}

	/**
	 * 
	 * @return
	 */
	public int getnIdDireccion() {
		return nIdDireccion;
	}

	/**
	 * 
	 * @param nIdDireccion
	 */
	public void setnIdDireccion(int nIdDireccion) {
		this.nIdDireccion = nIdDireccion;
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
	public String getsColonia() {
		return sColonia;
	}

	/**
	 * 
	 * @param sColonia
	 */
	public void setsColonia(String sColonia) {
		this.sColonia = sColonia;
	}

	/**
	 * 
	 * @return
	 */
	public String getsCP() {
		return sCP;
	}

	/**
	 * 
	 * @param sCP
	 */
	public void setsCP(String sCP) {
		this.sCP = sCP;
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
