package consultorio;

//import consultorio.Paciente;

public class Medico {
	
	//attributes
	private String firstName;
	private String lastName;
	private String specialty;
	
	//constructor
	public Medico(String fisrtName, String lastName, String specialty) {
		super();
		this.firstName = fisrtName;
		this.lastName = lastName;
		this.specialty = specialty;
	}
	
	public String traerNombreCompleto() {
		String resultado = firstName+" "+lastName;
		return resultado;
	}
	
	public float calcularIMC(Paciente paciente) {
		float averge = paciente.getAverge();
		float weight = paciente.getWeight();
		float imc = averge / (weight * weight);
		return imc;
	}
	
	//getters and setters
	public String getFisrtName() {
		return firstName;
	}

	public void setFisrtName(String fisrtName) {
		this.firstName = fisrtName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	
	
}
