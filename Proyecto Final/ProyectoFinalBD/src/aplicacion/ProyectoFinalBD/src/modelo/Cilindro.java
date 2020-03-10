package modelo;

public class Cilindro {
  private int nIdCilindro;
  private int nCilindros;

  /**
   *
   * @param nIdCilindro
   * @param nCilindros
   */
  public Cilindro(int nIdCilindro, int nCilindros) {
	  this.nIdCilindro = nIdCilindro;
	  this.nCilindros = nCilindros;
  }

  /**
   *
   * @return
   */
  public int getnIdCilindro() {
	  return nIdCilindro;
  }

  /**
   *
   * @param nIdCilindro
   */
  public void setnIdCilindro(int nIdCilindro) {
	  this.nIdCilindro = nIdCilindro;
  }

  /**
   *
   * @return
   */
  public int getnCilindros() {
	  return nCilindros;
  }

  /**
   *
   * @param nCilindros
   */
  public void setnCilindros(int nCilindros) {
	  this.nCilindros = nCilindros;
  }
}
