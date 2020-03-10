package modelo;

import java.sql.Date;

public class TarjetaDeCirculacion {
  private int nNoTarjeta;
  private Date dFechaExpedicion;
  private int vigencia;
  private Vehiculo vehiculo;

  /**
   * 
   * @param nNoTarjeta
   * @param dFechaExpedicion
   * @param vigencia
   * @param vehiculo
   */
  public TarjetaDeCirculacion(int nNoTarjeta, Date dFechaExpedicion, int vigencia, Vehiculo vehiculo) {
	  this.nNoTarjeta = nNoTarjeta;
	  this.dFechaExpedicion = dFechaExpedicion;
	  this.vigencia = vigencia;
	  this.vehiculo = vehiculo;
  }
  
  /**
   * 
   * @return
   */
  public int getnNoTarjeta() {
	  return nNoTarjeta;
  }

  /**
   * 
   * @param nNoTarjeta
   */
  public void setnNoTarjeta(int nNoTarjeta) {
	  this.nNoTarjeta = nNoTarjeta;
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
  public int getVigencia() {
	  return vigencia;
  }

  /**
   * 
   * @param vigencia
   */
  public void setVigencia(int vigencia) {
	  this.vigencia = vigencia;
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
}
