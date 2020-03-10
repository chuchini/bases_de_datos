package modelo;

import java.sql.Timestamp;

public class Infraccion {
	private int nNoExpediente;
	private Timestamp dFechaHora;
	private Agente agente;
	private Articulo articulo;
	private Ubicacion ubicacion;
	
	/**
	 * 
	 * @param nNoExpediente
	 * @param dFechaHora
	 * @param agente
	 * @param articulo
	 * @param ubicacion
	 */
	public Infraccion(int nNoExpediente, Timestamp dFechaHora, Agente agente, Articulo articulo, Ubicacion ubicacion) {
		super();
		this.nNoExpediente = nNoExpediente;
		this.dFechaHora = dFechaHora;
		this.agente = agente;
		this.articulo = articulo;
		this.ubicacion = ubicacion;
	}
	
	/**
	 * 
	 * @return
	 */
	public int getnNoExpediente() {
		return nNoExpediente;
	}
	
	/**
	 * 
	 * @param nNoExpediente
	 */
	public void setnNoExpediente(int nNoExpediente) {
		this.nNoExpediente = nNoExpediente;
	}
	
	/**
	 * 
	 * @return
	 */
	public Timestamp getdFechaHora() {
		return dFechaHora;
	}
	
	/**
	 * 
	 * @param dFechaHora
	 */
	public void setdFechaHora(Timestamp dFechaHora) {
		this.dFechaHora = dFechaHora;
	}
	
	/**
	 * 
	 * @return
	 */
	public Agente getAgente() {
		return agente;
	}
	
	/**
	 * 
	 * @param agente
	 */
	public void setAgente(Agente agente) {
		this.agente = agente;
	}
	
	/**
	 * 
	 * @return
	 */
	public Articulo getArticulo() {
		return articulo;
	}
	
	/**
	 * 
	 * @param articulo
	 */
	public void setArticulo(Articulo articulo) {
		this.articulo = articulo;
	}
	
	/**
	 * 
	 * @return
	 */
	public Ubicacion getUbicacion() {
		return ubicacion;
	}
	
	/**
	 * 
	 * @param ubicacion
	 */
	public void setUbicacion(Ubicacion ubicacion) {
		this.ubicacion = ubicacion;
	}
}
