package controlador.consultas;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import modelo.Conexion;
import modelo.Persona;
import modelo.Vehiculo;

public class ControladorConsultaMultas {
	Conexion conexion;
	
	public ControladorConsultaMultas() {
		conexion = new Conexion();
	}
	
	public Persona verificaUsuarioRFC(String sRFC) {
		Persona p = null;
		Connection accesoBD = conexion.getConexion();
		try {
			PreparedStatement ps = accesoBD.prepareStatement("SELECT sNombre, sApp FROM Persona WHERE sRFC = ?");
			ps.setString(1, sRFC);
			
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				p = new Persona();
				p.setsNombre(rs.getString(1));
				p.setsApp(rs.getString(2));
				return p;
			}
			rs.close();
			ps.close();
		} catch (Exception e) {
			
		}
		
		return p;
	}
	
	public Persona verificaUsuarioPlaca(String sNoPlaca) {
		Persona p = null;
		Connection accesoBD = conexion.getConexion();
		try {
			PreparedStatement ps = accesoBD.prepareStatement("SELECT sNombre, sApp FROM Persona INNER JOIN Vehiculo ON Vehiculo.sNoSerieMotor = Placa.sNoSerieMotor " +
															 "WHERE sNoPlaca = ?");
			ps.setString(1, sNoPlaca);
			
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				p = new Persona();
				p.setsNombre(rs.getString(1));
				p.setsApp(rs.getString(2));
				return p;
			}
			rs.close();
			ps.close();
		} catch (Exception e) {
			
		}
		
		return p;
	}
	
}
