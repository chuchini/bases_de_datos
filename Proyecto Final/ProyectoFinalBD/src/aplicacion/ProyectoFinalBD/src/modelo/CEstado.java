package modelo;

public class CEstado {
	private int nIdEstado;
	private String sEstado;

	/**
	 *
	 * @param nIdEstado
	 * @param sEstado
	 */
	public CEstado(int nIdEstado, String sEstado) {
		super();
		this.nIdEstado = nIdEstado;
		this.sEstado = sEstado;
	}

	/**
	 *
	 * @return
	 */
	public int getnIdEstado() {
		return nIdEstado;
	}

	/**
	 *
	 * @param nIdEstado
	 */
	public void setnIdEstado(int nIdEstado) {
		this.nIdEstado = nIdEstado;
	}

	/**
	 *
	 * @return
	 */
	public String getsEstado() {
		return sEstado;
	}

	/**
	 *
	 * @param sEstado
	 */
	public void setsEstado(String sEstado) {
		this.sEstado = sEstado;
	}
}
