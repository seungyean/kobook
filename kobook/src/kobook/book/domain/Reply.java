package kobook.book.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class Reply implements Serializable {
	private int r_id;
	private String r_title;
	private String r_name;
	private String r_content;
	private Timestamp r_date;
	private int b_id;
	
	public Reply() {
	}

	public Reply(int r_id, String r_title, String r_name, String r_content, Timestamp r_date, int b_id) {
		super();
		this.r_id = r_id;
		this.r_title = r_title;
		this.r_name = r_name;
		this.r_content = r_content;
		this.r_date = r_date;
		this.b_id = b_id;
	}

	public int getR_id() {
		return r_id;
	}

	public void setR_id(int r_id) {
		this.r_id = r_id;
	}

	public String getR_title() {
		return r_title;
	}

	public void setR_title(String r_title) {
		this.r_title = r_title;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public Timestamp getR_date() {
		return r_date;
	}

	public void setR_date(Timestamp r_date) {
		this.r_date = r_date;
	}

	public int getB_id() {
		return b_id;
	}

	public void setB_id(int b_id) {
		this.b_id = b_id;
	}


	
	

}
