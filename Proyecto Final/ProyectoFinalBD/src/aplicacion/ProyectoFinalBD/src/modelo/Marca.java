package modelo;

public class Marca {
  private String sNombre;
  private String sNombreArmadora;
  
  /**
   * 
   * @param sNombre
   * @param sNombreArmadora
   */
  public Marca(String sNombre, String sNombreArmadora) {
	  this.sNombre = sNombre;
	  this.sNombreArmadora = sNombreArmadora;
  }

  /**
   * 
   * @return
   */
  public String getsNombre() {
	  return sNombre;
  }

  /**
   * 
   * @param sNombre
   */
  public void setsNombre(String sNombre) {
	  this.sNombre = sNombre;
  }

  /**
   * 
   * @return
   */
  public String getsNombreArmadora() {
	  return sNombreArmadora;
  }

  /**
   * 
   * @param sNombreArmadora
   */
  public void setsNombreArmadora(String sNombreArmadora) {
	  this.sNombreArmadora = sNombreArmadora;
  }
}
