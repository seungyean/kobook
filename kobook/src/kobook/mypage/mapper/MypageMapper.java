package kobook.mypage.mapper;

import java.util.HashMap;
import java.util.List;

import kobook.book.domain.Book;


public interface MypageMapper {
  
	/* 판매내역 리스트 */
	public List<Book> sellList(int person_id);
	
	/* 판매상태 업데이트 */
	public int sellStateUpdate(Book book);
	
	/* 구매내역 리스트 */
	public List<HashMap<String, String>> buyList(int person_id);
	
	/* 마일리지 리스트 */
	public List<HashMap<String, String>> mileageList(int person_id);
	
	/* 픽 리스트 */
	public List<HashMap<String, String>> pickList(int person_id);
	
	/* 픽 삭제 */
	public int pickUpdate(int pick_id);
	
	public int sumMileage(int pick_id);
  

}
