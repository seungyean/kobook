package kobook.recom.domain;

import java.io.Serializable;

public class FavoriteBook implements Serializable {

	private String book_name;
	private int book_id;
	private int favorite_id;
	private String favorite_name;
	private String book_kind;
	private int person_id;
	private String favorite_major;
	
	public FavoriteBook(){}

	public FavoriteBook(String book_name, int book_id, int favorite_id, String favorite_name, String book_kind,
			int person_id, String favorite_major) {
		super();
		this.book_name = book_name;
		this.book_id = book_id;
		this.favorite_id = favorite_id;
		this.favorite_name = favorite_name;
		this.book_kind = book_kind;
		this.person_id = person_id;
		this.favorite_major = favorite_major;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}

	public int getFavorite_id() {
		return favorite_id;
	}

	public void setFavorite_id(int favorite_id) {
		this.favorite_id = favorite_id;
	}

	public String getFavorite_name() {
		return favorite_name;
	}

	public void setFavorite_name(String favorite_name) {
		this.favorite_name = favorite_name;
	}

	public String getBook_kind() {
		return book_kind;
	}

	public void setBook_kind(String book_kind) {
		this.book_kind = book_kind;
	}

	public int getPerson_id() {
		return person_id;
	}

	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}

	public String getFavorite_major() {
		return favorite_major;
	}

	public void setFavorite_major(String favorite_major) {
		this.favorite_major = favorite_major;
	}
}
