package kobook.community.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class DonateReply implements Serializable {
	private int reply_id;
	private String reply_content;
	private Timestamp reply_date;
	private int donate_id;
	private int person_id;
	
	public DonateReply() {
	}

	public DonateReply(int reply_id, String reply_content, Timestamp reply_date, int donate_id, int person_id) {
		super();
		this.reply_id = reply_id;
		this.reply_content = reply_content;
		this.reply_date = reply_date;
		this.donate_id = donate_id;
		this.person_id = person_id;
	}

	public int getReply_id() {
		return reply_id;
	}

	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public Timestamp getReply_date() {
		return reply_date;
	}

	public void setReply_date(Timestamp reply_date) {
		this.reply_date = reply_date;
	}

	public int getDonate_id() {
		return donate_id;
	}

	public void setDonate_id(int donate_id) {
		this.donate_id = donate_id;
	}

	public int getPerson_id() {
		return person_id;
	}

	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}
		

}
