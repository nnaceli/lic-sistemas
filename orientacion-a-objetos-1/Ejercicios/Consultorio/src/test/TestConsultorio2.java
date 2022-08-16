package test;

import consultorio.Paciente;
import consultorio.Medico;

public class TestConsultorio2 {

	public static void main(String[] args) {
		
		Medico medico1 = new Medico("Daniel", "Lopez", "Clinico");
		Paciente paciente1 = new Paciente("Jose", "Perez",1.80f,85);
		Paciente paciente2 = new Paciente("Jorge", "Fernandez",1.60f,90);
		
		paciente1.setAverge(75);
		paciente2.setAverge(65);
		
		System.out.println(medico1.traerNombreCompleto());
		System.out.println("Pacientes "+paciente1.traerNombreCompleto()+": IMC "+medico1.calcularIMC(paciente1));
		System.out.println("Pacientes "+paciente2.traerNombreCompleto()+": IMC "+medico1.calcularIMC(paciente2));
	}

}
