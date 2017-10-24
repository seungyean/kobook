package kobook.mypage.service;

import java.util.HashMap;
import java.util.List;

import kobook.book.domain.Book;
import kobook.mypage.dao.MypageDAO;

public class MypageService {
	
	// jsp의 요청들을 실행하기위한 로직이 전부 있는게 서비스 
	private static MypageService service = new MypageService();
	private static MypageDAO dao;
	
	// 서비스는 디에오 호출해야함
	public static MypageService getInstance(){
		dao = MypageDAO.getInstance();
		return service;
	}
	
	/* 판매내역 리스트 */
	public List<Book> sellList(){
		List<Book> list = dao.sellList();
		return list;
	}
	
	/* 판매상태 변경 */
	public int sellStateUpdate(Book book) {
		int result = dao.sellStateUpdate(book);
		return result;
	}
	
	/* 구매내역 리스트  */
	public List<HashMap<String, String>> buyList(){
		List<HashMap<String, String>> list = dao.buyList();
		return list;
	}
	
	/* 마일리지 리스트  */
	public List<HashMap<String, String>> mileageList(){
		List<HashMap<String, String>> list = dao.mileageList();
		return list;
	}
	
	/* 찜 리스트 */
	public List<HashMap<String, String>> pickList(){
		List<HashMap<String, String>> list = dao.pickList();
		return list;
	}
	
	/* 찜 삭제 */
	public int pickDelete(int pick_id){
		return dao.pickDelete(pick_id);
	}
}
