package kobook.mypage.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class Mileage implements Serializable{
	
	private int mileage_id;
	private char mileage_kind;
	private Timestamp mileage_date;
	private int mileage_point;
	private int pay_id;
	private int person_id;
	
	public Mileage(){
		
	}

	public Mileage(int mileage_id, char mileage_kind, Timestamp mileage_date, int mileage_point, int pay_id,
			int person_id) {
		super();
		this.mileage_id = mileage_id;
		this.mileage_kind = mileage_kind;
		this.mileage_date = mileage_date;
		this.mileage_point = mileage_point;
		this.pay_id = pay_id;
		this.person_id = person_id;
	}

	public int getMileage_id() {
		return mileage_id;
	}

	public void setMileage_id(int mileage_id) {
		this.mileage_id = mileage_id;
	}

	public char getMileage_kind() {
		return mileage_kind;
	}

	public void setMileage_kind(char mileage_kind) {
		this.mileage_kind = mileage_kind;
	}

	public Timestamp getMileage_date() {
		return mileage_date;
	}

	public void setMileage_date(Timestamp mileage_date) {
		this.mileage_date = mileage_date;
	}

	public int getMileage_point() {
		return mileage_point;
	}

	public void setMileage_point(int mileage_point) {
		this.mileage_point = mileage_point;
	}

	public int getPay_id() {
		return pay_id;
	}

	public void setPay_id(int pay_id) {
		this.pay_id = pay_id;
	}

	public int getPerson_id() {
		return person_id;
	}

	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}
	
	
	
	
	
	
	

}
