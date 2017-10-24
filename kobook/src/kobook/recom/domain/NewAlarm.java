package kobook.recom.domain;

import java.io.Serializable;

public class NewAlarm implements Serializable {

	private int person_id;
	private int alarm_new;	//새로운 알림의 갯수
	
	public NewAlarm(){}

	public NewAlarm(int person_id, int alarm_new, int list_old) {
		super();
		this.person_id = person_id;
		this.alarm_new = alarm_new;
	}

	public int getPerson_id() {
		return person_id;
	}

	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}

	public int getAlarm_new() {
		return alarm_new;
	}

	public void setAlarm_new(int alarm_new) {
		this.alarm_new = alarm_new;
	}
	
}
