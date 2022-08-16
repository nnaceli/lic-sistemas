package consultorio;

public class Paciente {
	
	//attributes
	private String firstName;
	private String lastName;
	private float weight;
	private float averge;
	
	
	//constructor
	public Paciente(String firstName, String lastName, float weight, float averge) {
		super(); /// ???
		this.firstName = firstName;
		this.lastName = lastName;
		this.weight = weight;
		this.averge = averge;
	}
	
	public String traerNombreCompleto() {
		String resultado = firstName+" "+lastName;
		return resultado;
	}
	
	
	// getters and setters
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public float getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

	public float getAverge() {
		return averge;
	}

	public void setAverge(float averge) {
		this.averge = averge;
	}
	
	
}
