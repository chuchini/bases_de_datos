package modelo;

import java.sql.Date;

public class Vehiculo {
	private String sNoSerieMotor;
	private int nCapacidadTanque;
	private double dEspacioEquipaje;
	private int nLitrosMotor;
	private int nNoPasajeros;
	private Date dFechaInicioPropiedad;
	private Date dFechaFinPropiedad;
	private Persona persona;
	
	/**
	 * 
	 * @param sNoSerieMotor
	 * @param nCapacidadTanque
	 * @param dEspacioEquipaje
	 * @param nLitrosMotor
	 * @param nNoPasajeros
	 * @param dFechaInicioPropiedad
	 * @param dFechaFinPropiedad
	 * @param persona
	 */
	public Vehiculo(String sNoSerieMotor, int nCapacidadTanque, double dEspacioEquipaje, int nLitrosMotor,
			int nNoPasajeros, Date dFechaInicioPropiedad, Date dFechaFinPropiedad, Persona persona) {
		this.sNoSerieMotor = sNoSerieMotor;
		this.nCapacidadTanque = nCapacidadTanque;
		this.dEspacioEquipaje = dEspacioEquipaje;
		this.nLitrosMotor = nLitrosMotor;
		this.nNoPasajeros = nNoPasajeros;
		this.dFechaInicioPropiedad = dFechaInicioPropiedad;
		this.dFechaFinPropiedad = dFechaFinPropiedad;
		this.persona = persona;
	}

	/**
	 * 
	 * @return
	 */
	public String getsNoSerieMotor() {
		return sNoSerieMotor;
	}

	/**
	 * 
	 * @param sNoSerieMotor
	 */
	public void setsNoSerieMotor(String sNoSerieMotor) {
		this.sNoSerieMotor = sNoSerieMotor;
	}

	/**
	 * 
	 * @return
	 */
	public int getnCapacidadTanque() {
		return nCapacidadTanque;
	}

	/**
	 * 
	 * @param nCapacidadTanque
	 */
	public void setnCapacidadTanque(int nCapacidadTanque) {
		this.nCapacidadTanque = nCapacidadTanque;
	}

	/**
	 * 
	 * @return
	 */
	public double getdEspacioEquipaje() {
		return dEspacioEquipaje;
	}

	/**
	 * 
	 * @param dEspacioEquipaje
	 */
	public void setdEspacioEquipaje(double dEspacioEquipaje) {
		this.dEspacioEquipaje = dEspacioEquipaje;
	}

	/**
	 * 
	 * @return
	 */
	public int getnLitrosMotor() {
		return nLitrosMotor;
	}

	/*
	 * 
	 */
	public void setnLitrosMotor(int nLitrosMotor) {
		this.nLitrosMotor = nLitrosMotor;
	}

	/**
	 * 
	 * @return
	 */
	public int getnNoPasajeros() {
		return nNoPasajeros;
	}

	/**
	 * 
	 * @param nNoPasajeros
	 */
	public void setnNoPasajeros(int nNoPasajeros) {
		this.nNoPasajeros = nNoPasajeros;
	}

	/**
	 * 
	 * @return
	 */
	public Date getdFechaInicioPropiedad() {
		return dFechaInicioPropiedad;
	}

	/**
	 * 
	 * @param dFechaInicioPropiedad
	 */
	public void setdFechaInicioPropiedad(Date dFechaInicioPropiedad) {
		this.dFechaInicioPropiedad = dFechaInicioPropiedad;
	}

	/**
	 * 
	 * @return
	 */
	public Date getdFechaFinPropiedad() {
		return dFechaFinPropiedad;
	}

	/**
	 * 
	 * @param dFechaFinPropiedad
	 */
	public void setdFechaFinPropiedad(Date dFechaFinPropiedad) {
		this.dFechaFinPropiedad = dFechaFinPropiedad;
	}

	/**
	 * 
	 * @return
	 */
	public Persona getPersona() {
		return persona;
	}

	/**
	 * 
	 * @param persona
	 */
	public void setPersona(Persona persona) {
		this.persona = persona;
	}
	
}
