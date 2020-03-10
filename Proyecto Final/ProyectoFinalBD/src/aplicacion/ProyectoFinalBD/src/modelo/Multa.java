package modelo;

public class Multa {
	private int nIdMulta;
	private CEstado estado;
	private double importe; // Tipo FLOAT en la BD.
	private Infraccion infraccion;
	private FotoMulta fotoMulta;
	
	/**
	 * 
	 * @param nIdMulta
	 * @param estado
	 * @param importe
	 * @param infraccion
	 * @param fotoMulta
	 */
	public Multa(int nIdMulta, CEstado estado, double importe, Infraccion infraccion, FotoMulta fotoMulta) {
		this.nIdMulta = nIdMulta;
		this.estado = estado;
		this.importe = importe;
		this.infraccion = infraccion;
		this.fotoMulta = fotoMulta;
	}

	/**
	 * 
	 * @return
	 */
	public int getnIdMulta() {
		return nIdMulta;
	}

	/**
	 * 
	 * @param nIdMulta
	 */
	public void setnIdMulta(int nIdMulta) {
		this.nIdMulta = nIdMulta;
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

	/**
	 * 
	 * @return
	 */
	public double getImporte() {
		return importe;
	}

	/**
	 * 
	 * @param importe
	 */
	public void setImporte(double importe) {
		this.importe = importe;
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

	/**
	 * 
	 * @return
	 */
	public FotoMulta getFotoMulta() {
		return fotoMulta;
	}

	/**
	 * 
	 * @param fotoMulta
	 */
	public void setFotoMulta(FotoMulta fotoMulta) {
		this.fotoMulta = fotoMulta;
	}
	
}
