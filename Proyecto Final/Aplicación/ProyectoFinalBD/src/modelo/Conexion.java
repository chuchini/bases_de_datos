package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
  private Connection con;

  //Constructor por omisión.
  public Conexion() {}

  public Connection getConexion() {
    try {
      Class.forName("microsoft.sqlserver.jdbc.SQLServerDriver");
      String connectionURL = "jdbc:sqlserver://localhost;" +
                            "database=ProyectoFinalBD;" +
                            "user=sa;" +
                            "password=9573";
      con = DriverManager.getConnection(connectionURL);
    } catch (ClassNotFoundException | SQLException e) {
      System.out.println("SQLEception: " + e.getMessage() + " conectar =(");
    }
    return con;
  }

  public void desconectar() {

  }

}
