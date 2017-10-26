package kobook.community.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class Donate implements Serializable {

	private int donate_id;
	private String donate_title;
	private Timestamp donate_date;
	private int donate_hit;
	private String donate_content;
	private String donate_img;
	private int person_id;
	
	public Donate() {	}

	public int getDonate_id() {
		return donate_id;
	}

	public void setDonate_id(int donate_id) {
		this.donate_id = donate_id;
	}

	public String getDonate_title() {
		return donate_title;
	}

	public void setDonate_title(String donate_title) {
		this.donate_title = donate_title;
	}

	public Timestamp getDonate_date() {
		return donate_date;
	}

	public void setDonate_date(Timestamp donate_date) {
		this.donate_date = donate_date;
	}

	public int getDonate_hit() {
		return donate_hit;
	}

	public void setDonate_hit(int donate_hit) {
		this.donate_hit = donate_hit;
	}

	public String getDonate_content() {
		return donate_content;
	}

	public void setDonate_content(String donate_content) {
		this.donate_content = donate_content;
	}

	public String getDonate_img() {
		return donate_img;
	}

	public void setDonate_img(String donate_img) {
		this.donate_img = donate_img;
	}

	public int getPerson_id() {
		return person_id;
	}

	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}
	
}
