package modelo;

import java.sql.Date;

public class Placa {
	private String sNoPlaca;
	private Date dFechaInicio;
	private Date dFechaFin;
	private Vehiculo vehiculo;
	private CEstado estado;
	
	/**
	 * 
	 * @param sNoPlaca
	 * @param dFechaInicio
	 * @param dFechaFin
	 * @param vehiculo
	 * @param estado
	 */
	public Placa(String sNoPlaca, Date dFechaInicio, Date dFechaFin, Vehiculo vehiculo, CEstado estado) {
		super();
		this.sNoPlaca = sNoPlaca;
		this.dFechaInicio = dFechaInicio;
		this.dFechaFin = dFechaFin;
		this.vehiculo = vehiculo;
		this.estado = estado;
	}

	/**
	 * 
	 * @return
	 */
	public String getsNoPlaca() {
		return sNoPlaca;
	}

	/**
	 * 
	 * @param sNoPlaca
	 */
	public void setsNoPlaca(String sNoPlaca) {
		this.sNoPlaca = sNoPlaca;
	}

	/**
	 * 
	 * @return
	 */
	public Date getdFechaInicio() {
		return dFechaInicio;
	}

	/**
	 * 
	 * @param dFechaInicio
	 */
	public void setdFechaInicio(Date dFechaInicio) {
		this.dFechaInicio = dFechaInicio;
	}

	/**
	 * 
	 * @return
	 */
	public Date getdFechaFin() {
		return dFechaFin;
	}

	/**
	 * 
	 * @param dFechaFin
	 */
	public void setdFechaFin(Date dFechaFin) {
		this.dFechaFin = dFechaFin;
	}

	/**
	 * 
	 * @return
	 */
	public Vehiculo getVehiculo() {
		return vehiculo;
	}

	/**
	 * 
	 * @param vehiculo
	 */
	public void setVehiculo(Vehiculo vehiculo) {
		this.vehiculo = vehiculo;
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
