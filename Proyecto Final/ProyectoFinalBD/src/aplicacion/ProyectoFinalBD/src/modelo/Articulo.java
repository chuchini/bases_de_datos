package modelo;

public class Articulo {
	private int nIdArticulo;
	private String sArticulo;
	
	/**
	 * 
	 * @param nIdArticulo
	 * @param sArticulo
	 */
	public Articulo(int nIdArticulo, String sArticulo) {
		this.nIdArticulo = nIdArticulo;
		this.sArticulo = sArticulo;
	}

	/**
	 * 
	 * @return
	 */
	public int getnIdArticulo() {
		return nIdArticulo;
	}

	/**
	 * 
	 * @param nIdArticulo
	 */
	public void setnIdArticulo(int nIdArticulo) {
		this.nIdArticulo = nIdArticulo;
	}

	/**
	 * 
	 * @return
	 */
	public String getsArticulo() {
		return sArticulo;
	}

	/**
	 * 
	 * @param sArticulo
	 */
	public void setsArticulo(String sArticulo) {
		this.sArticulo = sArticulo;
	}

}
