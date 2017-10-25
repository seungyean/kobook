package kobook.mypage.service;

import java.util.HashMap;
import java.util.List;

import kobook.book.domain.Book;
import kobook.mypage.dao.MypageDAO;
import kobook.mypage.domain.Mileage;
import kobook.mypage.domain.PaySuccess;

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
	public List<Book> sellList(int person_id){
		List<Book> list = dao.sellList(person_id);
		return list;
	}
	
	/* 판매상태 변경 */
	public int sellStateUpdate(Book book) {
		int result = dao.sellStateUpdate(book);
		return result;
	}
	
	/* 구매내역 리스트  */
	public List<HashMap<String, String>> buyList(int person_id){
		List<HashMap<String, String>> list = dao.buyList(person_id);
		return list;
	}
	
	/* 마일리지 리스트  */
	public List<HashMap<String, String>> mileageList(int person_id){
		List<HashMap<String, String>> list = dao.mileageList(person_id);
		return list;
	}
	
	/* 찜 리스트 */
	public List<HashMap<String, String>> pickList(int person_id){
		List<HashMap<String, String>> list = dao.pickList(person_id);
		return list;
	}
	
	/* 찜 삭제 */
	public int pickUpdate(int pick_id){
		int result = dao.pickUpdate(pick_id);
		return result;
	}
	
	/* 찜 리스트 */
	public int sumMileage(int person_id){
		int sum = dao.sumMileage(person_id);
		return sum;
	}
	
	/* 결제 등록 */
	public int insertPay(PaySuccess paySuccess){
		return dao.insertPay(paySuccess);
	}
	
	/* 마일리지 등록 */
	public int insertMileage(Mileage mileage){
		return dao.insertMileage(mileage);
	}
	
	/* 마일리지 적립 */
	public int mileagePointUpdate(HashMap<String, Integer> map){
		return dao.mileagePointUpdate(map);
	}

}
