package kobook.book.domain;

import java.util.Arrays;

public class BookSearch {
	private String[] area;
	private String[] safe_yn;
	private String[] location;
	private String searchKey;
	private String m_price;
	
	
	public BookSearch() {
	}

	

	public String[] getArea() {
		return area;
	}



	public void setArea(String[] area) {
		this.area = area;
	}



	public String[] getSafe_yn() {
		return safe_yn;
	}



	public void setSafe_yn(String[] safe_yn) {
		this.safe_yn = safe_yn;
	}



	public String[] getLocation() {
		return location;
	}



	public void setLocation(String[] location) {
		this.location = location;
	}



	public String getSearchKey() {
		return searchKey;
	}



	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}



	public String getm_price() {
		return m_price;
	}



	public void setm_price(String m_price) {
		this.m_price = m_price;
	}



	public BookSearch(String[] area, String[] safe_yn, String[] location, String searchKey, String m_price) {
		super();
		this.area = area;
		this.safe_yn = safe_yn;
		this.location = location;
		this.searchKey = searchKey;
		this.m_price = m_price;
	}



	@Override
	public String toString() {
		return "Search [area=" + Arrays.toString(area) + ", safe_yn=" + Arrays.toString(safe_yn) + ", location="
				+ Arrays.toString(location) + ", searchKey=" + searchKey + "]";
	}

	
}
