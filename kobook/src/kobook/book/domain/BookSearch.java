package kobook.book.domain;

import java.util.Arrays;

public class BookSearch {
	private String[] area;
	private String[] safe_yn;
	private String[] location;
	private String searchKey;
	private String sort;
	
	
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




	public String getSort() {
		return sort;
	}




	public void setSort(String sort) {
		this.sort = sort;
	}




	public BookSearch(String[] area, String[] safe_yn, String[] location, String searchKey, String sort) {
		super();
		this.area = area;
		this.safe_yn = safe_yn;
		this.location = location;
		this.searchKey = searchKey;
		this.sort = sort;
	}




	@Override
	public String toString() {
		return "BookSearch [area=" + Arrays.toString(area) + ", safe_yn=" + Arrays.toString(safe_yn) + ", location="
				+ Arrays.toString(location) + ", searchKey=" + searchKey + ", sort=" + sort + "]";
	}





	
}
