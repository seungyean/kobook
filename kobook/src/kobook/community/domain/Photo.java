package kobook.community.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class Photo implements Serializable {
	private int photo_id;
	private String photo_title;
	private Timestamp photo_date;
	private int photo_hit;
	private String photo_content;
	private String photo_img;
	private int photo_heart;
	private int person_id;
	
	public Photo() {}

	public Photo(int photo_id, String photo_title, Timestamp photo_date, int photo_hit, String photo_content,
			String photo_img, int photo_heart, int person_id) {
		super();
		this.photo_id = photo_id;
		this.photo_title = photo_title;
		this.photo_date = photo_date;
		this.photo_hit = photo_hit;
		this.photo_content = photo_content;
		this.photo_img = photo_img;
		this.photo_heart = photo_heart;
		this.person_id = person_id;
	}

	public int getPhoto_id() {
		return photo_id;
	}

	public void setPhoto_id(int photo_id) {
		this.photo_id = photo_id;
	}

	public String getPhoto_title() {
		return photo_title;
	}

	public void setPhoto_title(String photo_title) {
		this.photo_title = photo_title;
	}

	public Timestamp getPhoto_date() {
		return photo_date;
	}

	public void setPhoto_date(Timestamp photo_date) {
		this.photo_date = photo_date;
	}

	public int getPhoto_hit() {
		return photo_hit;
	}

	public void setPhoto_hit(int photo_hit) {
		this.photo_hit = photo_hit;
	}

	public String getPhoto_content() {
		return photo_content;
	}

	public void setPhoto_content(String photo_content) {
		this.photo_content = photo_content;
	}

	public String getPhoto_img() {
		return photo_img;
	}

	public void setPhoto_img(String photo_img) {
		this.photo_img = photo_img;
	}

	public int getPhoto_heart() {
		return photo_heart;
	}

	public void setPhoto_heart(int photo_heart) {
		this.photo_heart = photo_heart;
	}

	public int getPerson_id() {
		return person_id;
	}

	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}

	@Override
	public String toString() {
		return "Photo [photo_id=" + photo_id + ", photo_title=" + photo_title + ", photo_date=" + photo_date
				+ ", photo_hit=" + photo_hit + ", photo_content=" + photo_content + ", photo_img=" + photo_img
				+ ", photo_heart=" + photo_heart + ", person_id=" + person_id + "]";
	}
	
	
}
