package modelo;

public class CMunicipio {
	private int nIdMunicipio;
	private String sMunicipio;
	private CEstado estado;
	
	/**
	 * 
	 * @param nIdMunicipio
	 * @param sMunicipio
	 * @param estado
	 */
	public CMunicipio(int nIdMunicipio, String sMunicipio, CEstado estado) {
		this.nIdMunicipio = nIdMunicipio;
		this.sMunicipio = sMunicipio;
		this.estado = estado;
	}

	/**
	 * 
	 * @return
	 */
	public int getnIdMunicipio() {
		return nIdMunicipio;
	}

	/**
	 * 
	 * @param nIdMunicipio
	 */
	public void setnIdMunicipio(int nIdMunicipio) {
		this.nIdMunicipio = nIdMunicipio;
	}

	/**
	 * 
	 * @return
	 */
	public String getsMunicipio() {
		return sMunicipio;
	}

	/**
	 * 
	 * @param sMunicipio
	 */
	public void setsMunicipio(String sMunicipio) {
		this.sMunicipio = sMunicipio;
	}

	/**
	 * 
	 * @return
	 */
	public CEstado getEstado() {
		return estado;
	}

	/**
	 * 
	 * @param estado
	 */
	public void setEstado(CEstado estado) {
		this.estado = estado;
	}
}
