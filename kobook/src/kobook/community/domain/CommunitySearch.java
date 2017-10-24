package kobook.community.domain;

public class CommunitySearch {

	private String[] area;
	private String searchKey;

	public CommunitySearch() {
	}

	public CommunitySearch(String[] area, String searchKey) {
		this.area = area;
		this.searchKey = searchKey;
	}

	public String[] getArea() {
		return area;
	}

	public void setArea(String[] area) {
		this.area = area;
	}

	public String getSearchKey() {
		return searchKey;
	}

	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	
}
