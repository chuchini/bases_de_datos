package modelo;

public class TipoDeLicencia {
	private int nIdTipoDeLicencia;
	private String sTipoDeLicencia;
	
	/**
	 * 
	 * @param nIdTipoDeLicencia
	 * @param sTipoDeLicencia
	 */
	public TipoDeLicencia(int nIdTipoDeLicencia, String sTipoDeLicencia) {
		this.nIdTipoDeLicencia = nIdTipoDeLicencia;
		this.sTipoDeLicencia = sTipoDeLicencia;
	}

	/**
	 * 
	 * @return
	 */
	public int getnIdTipoDeLicencia() {
		return nIdTipoDeLicencia;
	}

	/**
	 * 
	 * @param nIdTipoDeLicencia
	 */
	public void setnIdTipoDeLicencia(int nIdTipoDeLicencia) {
		this.nIdTipoDeLicencia = nIdTipoDeLicencia;
	}

	/**
	 * 
	 * @return
	 */
	public String getsTipoDeLicencia() {
		return sTipoDeLicencia;
	}

	/**
	 * 
	 * @param sTipoDeLicencia
	 */
	public void setsTipoDeLicencia(String sTipoDeLicencia) {
		this.sTipoDeLicencia = sTipoDeLicencia;
	}
}
