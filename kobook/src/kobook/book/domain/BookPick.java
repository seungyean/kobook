package kobook.book.domain;

import java.io.Serializable;

public class BookPick implements Serializable{
	 private int pick_id;
	 private int person_id;
	 private int book_id;
	 
	 public BookPick(){}

	public BookPick(int pick_id, int person_id, int book_id) {
		super();
		this.pick_id = pick_id;
		this.person_id = person_id;
		this.book_id = book_id;
	}

	public int getPick_id() {
		return pick_id;
	}

	public void setPick_id(int pick_id) {
		this.pick_id = pick_id;
	}

	public int getPerson_id() {
		return person_id;
	}

	public void setPerson_id(int person_id) {
		this.person_id = person_id;
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	 
	
}
