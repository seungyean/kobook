package kobook.domain;

public class User {

	private int user_id;
	private String user_email;
	private String user_pwd;
	private String user_name;
	private String user_address;
	private String user_phone;
	private int user_mileage;
	private String user_school;
	private String user_sell_grade;
	private String user_kind;
	private String user_account;
	private int user_avg;

	public User() {

	}

	public User(int user_id, String user_email, String user_pwd, String user_name, String user_address,
			String user_phone, int user_mileage, String user_school, String user_sell_grade, String user_kind,
			String user_account, int user_avg) {
		super();
		this.user_id = user_id;
		this.user_email = user_email;
		this.user_pwd = user_pwd;
		this.user_name = user_name;
		this.user_address = user_address;
		this.user_phone = user_phone;
		this.user_mileage = user_mileage;
		this.user_school = user_school;
		this.user_sell_grade = user_sell_grade;
		this.user_kind = user_kind;
		this.user_account = user_account;
		this.user_avg = user_avg;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public int getUser_mileage() {
		return user_mileage;
	}

	public void setUser_mileage(int user_mileage) {
		this.user_mileage = user_mileage;
	}

	public String getUser_school() {
		return user_school;
	}

	public void setUser_school(String user_school) {
		this.user_school = user_school;
	}

	public String getUser_sell_grade() {
		return user_sell_grade;
	}

	public void setUser_sell_grade(String user_sell_grade) {
		this.user_sell_grade = user_sell_grade;
	}

	public String getUser_kind() {
		return user_kind;
	}

	public void setUser_kind(String user_kind) {
		this.user_kind = user_kind;
	}

	public String getUser_account() {
		return user_account;
	}

	public void setUser_account(String user_account) {
		this.user_account = user_account;
	}

	public int getUser_avg() {
		return user_avg;
	}

	public void setUser_avg(int user_avg) {
		this.user_avg = user_avg;
	}

}
