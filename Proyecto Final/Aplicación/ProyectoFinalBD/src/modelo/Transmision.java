package modelo;


public class Transmision {
  private int nIdTransmision;
  private String sTransmision;

  /**
   *
   * @param nIdTransmision
   * @param sTransmision
   */
  public Transmision(int nIdTransmision, String sTransmision) {
	this.nIdTransmision = nIdTransmision;
	this.sTransmision = sTransmision;
  }

  /**
   *
   * @return
   */
  public int getnIdTransmision() {
	  return nIdTransmision;
  }

  /**
   *
   * @param nIdTransmision
   */
  public void setnIdTransmision(int nIdTransmision) {
	  this.nIdTransmision = nIdTransmision;
  }

  /**
   *
   * @return
   */
  public String getsTransmision() {
	  return sTransmision;
  }

  /**
   *
   * @param sTransmision
   */
  public void setsTransmision(String sTransmision) {
	  this.sTransmision = sTransmision;
  }
}
