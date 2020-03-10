package modelo;

public class TipoDeAuto {
  private int nIdTipoDeAuto;
  private String sTipoDeAuto;

  /**
   *
   * @param nIdTipoDeAuto
   * @param sTipoDeAuto
   */
  public TipoDeAuto(int nIdTipoDeAuto, String sTipoDeAuto) {
		this.nIdTipoDeAuto = nIdTipoDeAuto;
		this.sTipoDeAuto = sTipoDeAuto;
	}

  /**
   *
   * @return
   */
  public int getnIdTipoDeAuto() {
	   return nIdTipoDeAuto;
  }
  /**
   *
   * @param nIdTipoDeAuto
   */
  public void setnIdTipoDeAuto(int nIdTipoDeAuto) {
	  this.nIdTipoDeAuto = nIdTipoDeAuto;
  }
  /**
   *
   * @return
   */
  public String getsTipoDeAuto() {
    return sTipoDeAuto;
  }
  /**
   *
   * @param sTipoDeAuto
   */
  public void setsTipoDeAuto(String sTipoDeAuto) {
    this.sTipoDeAuto = sTipoDeAuto;
  }

}
