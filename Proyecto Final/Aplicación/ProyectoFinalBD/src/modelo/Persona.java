package modelo;

import java.sql.Date;

public class Persona {
	private String sRFC;
	private String sNombre;
	private String sApp;
	private String sApm;
	private String sGenero;
	private String sCorreo;
	private Date dFechaNacimiento;

	/**
	 *
	 * @param sRFC
	 * @param sNombre
	 * @param sApp
	 * @param sApm
	 * @param sGenero
	 * @param sCorreo
	 * @param dFechaNacimiento
	 */
	public Persona(String sRFC, String sNombre, String sApp, String sApm, String sGenero, String sCorreo,
			Date dFechaNacimiento) {
		super();
		this.sRFC = sRFC;
		this.sNombre = sNombre;
		this.sApp = sApp;
		this.sApm = sApm;
		this.sGenero = sGenero;
		this.sCorreo = sCorreo;
		this.dFechaNacimiento = dFechaNacimiento;
	}

	public Persona() {}

	/**
	 *
	 * @return
	 */
	public String getsRFC() {
		return sRFC;
	}

	/**
	 *
	 * @param sRFC
	 */
	public void setsRFC(String sRFC) {
		this.sRFC = sRFC;
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
	public String getsApp() {
		return sApp;
	}

	/**
	 *
	 * @param sApp
	 */
	public void setsApp(String sApp) {
		this.sApp = sApp;
	}

	/**
	 *
	 * @return
	 */
	public String getsApm() {
		return sApm;
	}

	/**
	 *
	 * @param sApm
	 */
	public void setsApm(String sApm) {
		this.sApm = sApm;
	}

	/**
	 *
	 * @return
	 */
	public String getsGenero() {
		return sGenero;
	}

	/**
	 *
	 * @param sGenero
	 */
	public void setsGenero(String sGenero) {
		this.sGenero = sGenero;
	}

	/**
	 *
	 * @return
	 */
	public String getsCorreo() {
		return sCorreo;
	}

	/**
	 *
	 * @param sCorreo
	 */
	public void setsCorreo(String sCorreo) {
		this.sCorreo = sCorreo;
	}

	/**
	 *
	 * @return
	 */
	public Date getdFechaNacimiento() {
		return dFechaNacimiento;
	}

	/**
	 *
	 * @param dFechaNacimiento
	 */
	public void setdFechaNacimiento(Date dFechaNacimiento) {
		this.dFechaNacimiento = dFechaNacimiento;
	}
}
