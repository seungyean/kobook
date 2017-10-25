package kobook.mypage.domain;

import java.sql.Timestamp;

public class PaySuccess {
	
	private int pay_id;
	private int pay_amount;
	private Timestamp pay_date;
	private int pick_id;
	
	public PaySuccess(){
		
	}
	
	public PaySuccess(int pay_id, int pay_amount, Timestamp pay_date, int pick_id) {
		super();
		this.pay_id = pay_id;
		this.pay_amount = pay_amount;
		this.pay_date = pay_date;
		this.pick_id = pick_id;
	}
	public int getPay_id() {
		return pay_id;
	}
	public void setPay_id(int pay_id) {
		this.pay_id = pay_id;
	}
	public int getPay_amount() {
		return pay_amount;
	}
	public void setPay_amount(int pay_amount) {
		this.pay_amount = pay_amount;
	}
	public Timestamp getPay_date() {
		return pay_date;
	}
	public void setPay_date(Timestamp pay_date) {
		this.pay_date = pay_date;
	}
	public int getPick_id() {
		return pick_id;
	}
	public void setPick_id(int pick_id) {
		this.pick_id = pick_id;
	}
	@Override
	public String toString() {
		return "PaySuccess [pay_id=" + pay_id + ", pay_amount=" + pay_amount + ", pay_date=" + pay_date + ", pick_id="
				+ pick_id + "]";
	}
	
	

}
