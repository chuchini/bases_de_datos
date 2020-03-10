package modelo;

public class Pais {
  private int nIdPais;
  private String sPais;
  
  /**
   * 
   * @param nIdPais
   * @param sPais
   */
  public Pais(int nIdPais, String sPais) {
	  this.nIdPais = nIdPais;
	  this.sPais = sPais;
  }

  /**
   * 
   * @return
   */
  public int getnIdPais() {
	  return nIdPais;
  }

  /**
   * 
   * @param nIdPais
   */
  public void setnIdPais(int nIdPais) {
	  this.nIdPais = nIdPais;
  }

  /**
   * 
   * @return
   */
  public String getsPais() {
	  return sPais;
  }

  /**
   * 
   * @param sPais
   */
  public void setsPais(String sPais) {
	  this.sPais = sPais;
  }
}
