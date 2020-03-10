package controlador.vistas;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import controlador.consultas.ControladorConsultaMultas;
import javax.swing.JOptionPane;
import modelo.Persona;
import vista.JFHistorialMultas;
import vista.JFLoginUsuario;

public class ControladorLoginUsuarioHistorial implements ActionListener {
	JFLoginUsuario vistaLogin = new JFLoginUsuario();
	ControladorConsultaMultas modeloConsultaMultas = new ControladorConsultaMultas();
	Persona p = new Persona();
        
	public ControladorLoginUsuarioHistorial(JFLoginUsuario vistaLogin,
			ControladorConsultaMultas modeloConsultaMultas) {
		this.vistaLogin = vistaLogin;
		this.modeloConsultaMultas = modeloConsultaMultas;
		this.vistaLogin.jButtonLogin.addActionListener(this);
	}
        
        public void inicializarLogin() {}

	@Override
	public void actionPerformed(ActionEvent arg0) {
            String loginOpcion = String.valueOf(vistaLogin.jComboBoxLogin.getSelectedItem());
            String loginInformacion = String.valueOf(vistaLogin.jTextFieldLogin.getText());
            JFHistorialMultas vistaHM = new JFHistorialMultas();
            
            if (loginOpcion == "Placa") {
                p = modeloConsultaMultas.verificaUsuarioPlaca(loginInformacion);
                ControladorHistorialMultas chm = new ControladorHistorialMultas(vistaHM ,modeloConsultaMultas);
                chm.inicializarUsuario(true, loginInformacion);
                vistaHM.setVisible(true);
                vistaLogin.setVisible(false);
            } else {
                p = modeloConsultaMultas.verificaUsuarioRFC(loginInformacion);
                ControladorHistorialMultas chm = new ControladorHistorialMultas(vistaHM ,modeloConsultaMultas);
                chm.inicializarUsuario(false, loginInformacion);
                vistaHM.setVisible(true);
                vistaLogin.setVisible(false);
            }
            if (p == null)
                JOptionPane.showMessageDialog(vistaLogin, "Los datos que has ingresado no están registrados.");
	}
        
        
        
}
