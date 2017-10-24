package kobook.admin.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class Board implements Serializable {

	private int board_id;
	private int board_hit;
	private Timestamp board_date;
	private String board_content;
	private String board_title;
	private String board_writer;
	
	
	public Board(){
	}


	public int getBoard_id() {
		return board_id;
	}


	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}


	public int getBoard_hit() {
		return board_hit;
	}


	public void setBoard_hit(int board_hit) {
		this.board_hit = board_hit;
	}


	public Timestamp getBoard_date() {
		return board_date;
	}


	public void setBoard_date(Timestamp board_date) {
		this.board_date = board_date;
	}


	public String getBoard_content() {
		return board_content;
	}


	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}


	public String getBoard_title() {
		return board_title;
	}


	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}


	public String getBoard_writer() {
		return board_writer;
	}


	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	
}
