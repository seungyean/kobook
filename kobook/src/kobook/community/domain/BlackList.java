package kobook.community.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class BlackList implements Serializable {
	private int black_id;
	private String black_title;
	private Timestamp black_date;
	private String black_content;
	private String black_img;
	private String black_email;
	private int person_id;
	
	public BlackList() {	}

	public BlackList(int black_id, String black_title, Timestamp black_date, String black_content, String black_img,
			String black_email, int person_id) {
		super();
		this.black_id = black_id;
		this.black_title = black_title;
		this.black_date = black_date;
		this.black_content = black_content;
		this.black_img = black_img;
		this.black_email = black_email;
		this.person_id = person_id;
	}

	public int getBlack_id() {
		return black_id;
	}

	public void setBlack_id(int black_id) {
		this.black_id = black_id;
	}

	public String getBlack_title() {
		return black_title;
	}

	public void setBlack_title(String black_title) {
		this.black_title = black_title;
	}

	public Timestamp getBlack_date() {
		return black_date;
	}

	public void setBlack_date(Timestamp black_date) {
		this.black_date = black_date;
	}

	public String getBlack_content() {
		return black_content;
	}

	public void setBlack_content(String black_content) {
		this.black_content = black_content;
	}

	public String getBlack_img() {
		return black_img;
	}

	public void setBlack_img(String black_img) {
		this.black_img = black_img;
	}

	public String getBlack_email() {
		return black_email;
	}

	public void setBlack_email(String black_email) {
		this.black_email = black_email;
	}

	public int getPerson_id() {
		return person_id;
	}

	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}
	
}
