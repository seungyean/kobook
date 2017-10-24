package kobook.community.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class DonateReply implements Serializable {

	private int reply_id;
	private String reply_content;
	private Timestamp reply_date;
	private int donate_id;
	private int user_id;
	
	public DonateReply() {
	}

	public DonateReply(int reply_id, String reply_content, Timestamp reply_date, int donate_id, int user_id) {
		super();
		this.reply_id = reply_id;
		this.reply_content = reply_content;
		this.reply_date = reply_date;
		this.donate_id = donate_id;
		this.user_id = user_id;
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

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
}
