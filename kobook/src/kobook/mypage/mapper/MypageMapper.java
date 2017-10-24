package kobook.mypage.mapper;

import java.util.HashMap;
import java.util.List;

import com.sun.javafx.collections.MappingChange.Map;

import kobook.mypage.domain.Book;

public interface MypageMapper {
  
	/* 판매내역 리스트 */
	public List<Book> sellList();
	
	/* 판매상태 업데이트 */
	public int sellStateUpdate(Book book);
	
	/* 구매내역 리스트 */
	public List<HashMap<String, String>> buyList();
	
	/* 마일리지 리스트 */
	public List<HashMap<String, String>> mileageList();
	
	/* 픽 리스트 */
	public List<HashMap<String, String>> pickList();
	
	/* 픽 삭제 */
	public int pickDelete(int pick_id);
  

}
