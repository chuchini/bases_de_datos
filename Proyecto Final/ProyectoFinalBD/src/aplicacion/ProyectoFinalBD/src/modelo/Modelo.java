package modelo;

public class Modelo {
  private String sModelo;
  private Marca marca;
  private Vehiculo vehiculo;
  private String sLugarDeFabricacion;
  private Direccion direccion;
  private Cilindro cilindro;
  private TipoDeAuto tipoDeAuto;
  private Transmision transmision;

  public Modelo(String sModelo, Marca marca, Vehiculo vehiculo, String sLugarDeFabricacion, Direccion direccion,
		Cilindro cilindro, TipoDeAuto tipoDeAuto, Transmision transmision) {
	  this.sModelo = sModelo;
	  this.marca = marca;
	  this.vehiculo = vehiculo;
	  this.sLugarDeFabricacion = sLugarDeFabricacion;
	  this.direccion = direccion;
	  this.cilindro = cilindro;
	  this.tipoDeAuto = tipoDeAuto;
	  this.transmision = transmision;
  	}
  
  /**
   * 
   * @return
   */
  public String getsModelo() {
	  return sModelo; 
  }

  /**
   * 
   * @param sModelo
   */
  public void setsModelo(String sModelo) {
	  this.sModelo = sModelo;
  }

  /**
   * 
   * @return
   */
  public Marca getMarca() {
	  return marca;
  }

  /**
   * 
   * @param marca
   */
  public void setMarca(Marca marca) {
	  this.marca = marca;
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
  public String getsLugarDeFabricacion() {
	  return sLugarDeFabricacion;
  }

  /**
   * 
   * @param sLugarDeFabricacion
   */
  public void setsLugarDeFabricacion(String sLugarDeFabricacion) {
	  this.sLugarDeFabricacion = sLugarDeFabricacion;
  }

  /**
   * 
   * @return
   */
  public Direccion getDireccion() {
	  return direccion;
  }

  /**
   * 
   * @param direccion
   */
  public void setDireccion(Direccion direccion) {
	  this.direccion = direccion;
  }

  /**
   * 
   * @return
   */
  public Cilindro getCilindro() {
	  return cilindro;
  }

  /**
   * 
   * @param cilindro
   */
  public void setCilindro(Cilindro cilindro) {
	  this.cilindro = cilindro;
  }

  /**
   * 
   * @return
   */
  public TipoDeAuto getTipoDeAuto() {
	  return tipoDeAuto;
  }

  /**
   * 
   * @param tipoDeAuto
   */
  public void setTipoDeAuto(TipoDeAuto tipoDeAuto) {
	  this.tipoDeAuto = tipoDeAuto;
  }

  /**
   * 
   * @return
   */
  public Transmision getTransmision() {
	  return transmision;
  }

  /**
   * 
   * @param transmision
   */
  public void setTransmision(Transmision transmision) {
	  this.transmision = transmision;
  }
}
  
  
