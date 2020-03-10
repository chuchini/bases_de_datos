package modelo;

import java.sql.Timestamp;

public class FotoMultaPlaca {
	private FotoMulta fotomulta;
	private Placa placa;
	private String sColorAuto;
	private Timestamp fechaHora;
	private double dVelocidadInfraccion; //FLOAT en la BD
	
	/**
	 * 
	 * @param fotomulta
	 * @param placa
	 * @param sColorAuto
	 * @param fechaHora
	 * @param dVelocidadInfraccion
	 */
	public FotoMultaPlaca(FotoMulta fotomulta, Placa placa, String sColorAuto, Timestamp fechaHora,
			double dVelocidadInfraccion) {
		this.fotomulta = fotomulta;
		this.placa = placa;
		this.sColorAuto = sColorAuto;
		this.fechaHora = fechaHora;
		this.dVelocidadInfraccion = dVelocidadInfraccion;
	}

	/**
	 * 
	 * @return
	 */
	public FotoMulta getFotomulta() {
		return fotomulta;
	}

	/**
	 * 
	 * @param fotomulta
	 */
	public void setFotomulta(FotoMulta fotomulta) {
		this.fotomulta = fotomulta;
	}

	/**
	 * 
	 * @return
	 */
	public Placa getPlaca() {
		return placa;
	}

	/**
	 * 
	 * @param placa
	 */
	public void setPlaca(Placa placa) {
		this.placa = placa;
	}

	/**
	 * 
	 * @return
	 */
	public String getsColorAuto() {
		return sColorAuto;
	}

	/**
	 * 
	 * @param sColorAuto
	 */
	public void setsColorAuto(String sColorAuto) {
		this.sColorAuto = sColorAuto;
	}

	/**
	 * 
	 * @return
	 */
	public Timestamp getFechaHora() {
		return fechaHora;
	}

	/**
	 * 
	 * @param fechaHora
	 */
	public void setFechaHora(Timestamp fechaHora) {
		this.fechaHora = fechaHora;
	}

	/**
	 * 
	 * @return
	 */
	public double getdVelocidadInfraccion() {
		return dVelocidadInfraccion;
	}

	/**
	 * 
	 * @param dVelocidadInfraccion
	 */
	public void setdVelocidadInfraccion(double dVelocidadInfraccion) {
		this.dVelocidadInfraccion = dVelocidadInfraccion;
	}
}
