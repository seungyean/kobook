package kobook.person.domain;

public class Person {

	private int person_id;
	private String person_email;
	private String person_pwd;
	private String person_name;
	private String person_address;
	private String person_phone;
	private int person_mileage;
	private String person_school;
	private String person_sell_grade;
	private String person_kind;
	private String person_account;
	private int person_avg;
	
	public Person(){}
	
	public Person(int person_id, String person_email, String person_pwd, String person_name, String person_address,
			String person_phone, int person_mileage, String person_school, String person_sell_grade, String person_kind,
			String person_account, int person_avg) {
		super();
		this.person_id = person_id;
		this.person_email = person_email;
		this.person_pwd = person_pwd;
		this.person_name = person_name;
		this.person_address = person_address;
		this.person_phone = person_phone;
		this.person_mileage = person_mileage;
		this.person_school = person_school;
		this.person_sell_grade = person_sell_grade;
		this.person_kind = person_kind;
		this.person_account = person_account;
		this.person_avg = person_avg;
	}

	public int getPerson_id() {
		return person_id;
	}

	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}

	public String getPerson_email() {
		return person_email;
	}

	public void setPerson_email(String person_email) {
		this.person_email = person_email;
	}

	public String getPerson_pwd() {
		return person_pwd;
	}

	public void setPerson_pwd(String person_pwd) {
		this.person_pwd = person_pwd;
	}

	public String getPerson_name() {
		return person_name;
	}

	public void setPerson_name(String person_name) {
		this.person_name = person_name;
	}

	public String getPerson_address() {
		return person_address;
	}

	public void setPerson_address(String person_address) {
		this.person_address = person_address;
	}

	public String getPerson_phone() {
		return person_phone;
	}

	public void setPerson_phone(String person_phone) {
		this.person_phone = person_phone;
	}

	public int getPerson_mileage() {
		return person_mileage;
	}

	public void setPerson_mileage(int person_mileage) {
		this.person_mileage = person_mileage;
	}

	public String getPerson_school() {
		return person_school;
	}

	public void setPerson_school(String person_school) {
		this.person_school = person_school;
	}

	public String getPerson_sell_grade() {
		return person_sell_grade;
	}

	public void setPerson_sell_grade(String person_sell_grade) {
		this.person_sell_grade = person_sell_grade;
	}

	public String getPerson_kind() {
		return person_kind;
	}

	public void setPerson_kind(String person_kind) {
		this.person_kind = person_kind;
	}

	public String getPerson_account() {
		return person_account;
	}

	public void setPerson_account(String person_account) {
		this.person_account = person_account;
	}

	public int getPerson_avg() {
		return person_avg;
	}

	public void setPerson_avg(int person_avg) {
		this.person_avg = person_avg;
	}

}
