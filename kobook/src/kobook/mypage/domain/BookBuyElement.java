package kobook.mypage.domain;

public class BookBuyElement {
	
	private String pay_id;
	private String person_id;
	private String book_img;
	private String pay_date;
	private String book_name;
	private String book_m_price;
	
	public BookBuyElement(){}
	
	
	public BookBuyElement(String pay_id, String person_id, String book_img, String pay_date, String book_name,
			String book_m_price) {
		super();
		this.pay_id = pay_id;
		this.person_id = person_id;
		this.book_img = book_img;
		this.pay_date = pay_date;
		this.book_name = book_name;
		this.book_m_price = book_m_price;
	}




	public String getPay_id() {
		return pay_id;
	}
	public void setPay_id(String pay_id) {
		this.pay_id = pay_id;
	}
	public String getPerson_id() {
		return person_id;
	}
	public void setPerson_id(String person_id) {
		this.person_id = person_id;
	}
	public String getBook_img() {
		return book_img;
	}
	public void setBook_img(String book_img) {
		this.book_img = book_img;
	}
	public String getPay_date() {
		return pay_date;
	}
	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	
	@Override
	public String toString() {
		return "BookBuyList [pay_id=" + pay_id + ", person_id=" + person_id + ", book_img=" + book_img + ", pay_date="
				+ pay_date + ", book_name=" + book_name + ", book_o_price=" + book_m_price + "]";
	}
	public String getBook_m_price() {
		return book_m_price;
	}
	public void setBook_m_price(String book_m_price) {
		this.book_m_price = book_m_price;
	}
	
	

}
