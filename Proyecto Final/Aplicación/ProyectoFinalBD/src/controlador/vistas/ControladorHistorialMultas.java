/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.vistas;

import controlador.consultas.ControladorConsultaMultas;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import modelo.Persona;
import vista.JFHistorialMultas;

/**
 *
 * @author chuch
 */
public class ControladorHistorialMultas implements ActionListener {
    JFHistorialMultas vistaHistorial = new JFHistorialMultas();
    ControladorConsultaMultas modeloMultas = new ControladorConsultaMultas();
    Persona p = new Persona();
    String loginInformacion;
    boolean loginTipo; // 1 = Placa, 0 = RFC.
    
    public ControladorHistorialMultas(JFHistorialMultas vistaHistorial, ControladorConsultaMultas modeloMultas) {
        this.vistaHistorial = vistaHistorial;
        this.modeloMultas = modeloMultas;
        this.vistaHistorial.jButtonGenHistorial.addActionListener(this);
    }
    
    public void inicializarUsuario(boolean loginTipo, String loginInformacion) {
        this.loginInformacion = loginInformacion;
        this.loginTipo = loginTipo;
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        if (loginTipo == true)
            p = modeloMultas.verificaUsuarioPlaca(loginInformacion);
        else
            p = modeloMultas.verificaUsuarioRFC(loginInformacion);
        
        vistaHistorial.listMultas.add(p.getsNombre() + " " + p.getsApp() + "\n");
    }
}
