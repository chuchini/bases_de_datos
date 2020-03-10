package modelo;

import java.sql.Date;

public class Licencia {
	private String sNoLicencia;
	private int nPuntos;
	private Date dFechaExpedicion;
	private int nVigencia;
	private String sTatus;
	private Persona persona;
	private TipoDeLicencia tipo;
	
	/**
	 * 
	 * @param sNoLicencia
	 * @param nPuntos
	 * @param dFechaExpedicion
	 * @param nVigencia
	 * @param sTatus
	 * @param persona
	 * @param tipo
	 */
	public Licencia(String sNoLicencia, int nPuntos, Date dFechaExpedicion, int nVigencia, String sTatus,
			Persona persona, TipoDeLicencia tipo) {
		this.sNoLicencia = sNoLicencia;
		this.nPuntos = nPuntos;
		this.dFechaExpedicion = dFechaExpedicion;
		this.nVigencia = nVigencia;
		this.sTatus = sTatus;
		this.persona = persona;
		this.tipo = tipo;
	}

	/**
	 * 
	 * @return
	 */
	public String getsNoLicencia() {
		return sNoLicencia;
	}

	/**
	 * 
	 * @param sNoLicencia
	 */
	public void setsNoLicencia(String sNoLicencia) {
		this.sNoLicencia = sNoLicencia;
	}

	/**
	 * 
	 * @return
	 */
	public int getnPuntos() {
		return nPuntos;
	}

	/**
	 * 
	 * @param nPuntos
	 */
	public void setnPuntos(int nPuntos) {
		this.nPuntos = nPuntos;
	}

	/**
	 * 
	 * @return
	 */
	public Date getdFechaExpedicion() {
		return dFechaExpedicion;
	}

	/**
	 * 
	 * @param dFechaExpedicion
	 */
	public void setdFechaExpedicion(Date dFechaExpedicion) {
		this.dFechaExpedicion = dFechaExpedicion;
	}

	/**
	 * 
	 * @return
	 */
	public int getnVigencia() {
		return nVigencia;
	}

	/**
	 * 
	 * @param nVigencia
	 */
	public void setnVigencia(int nVigencia) {
		this.nVigencia = nVigencia;
	}

	/**
	 * 
	 * @return
	 */
	public String getsTatus() {
		return sTatus;
	}

	/**
	 * 
	 * @param sTatus
	 */
	public void setsTatus(String sTatus) {
		this.sTatus = sTatus;
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

	/**
	 * 
	 * @return
	 */
	public TipoDeLicencia getTipo() {
		return tipo;
	}

	/**
	 * 
	 * @param tipo
	 */
	public void setTipo(TipoDeLicencia tipo) {
		this.tipo = tipo;
	}
}
