package kobook.mypage.service;

import java.util.HashMap;
import java.util.List;

import kobook.book.domain.Book;
import kobook.mypage.dao.MypageDAO;

public class MypageService {
	
	// jsp�� ��û���� �����ϱ����� ������ ���� �ִ°� ���� 
	private static MypageService service = new MypageService();
	private static MypageDAO dao;
	
	// ���񽺴� �𿡿� ȣ���ؾ���
	public static MypageService getInstance(){
		dao = MypageDAO.getInstance();
		return service;
	}
	
	/* �Ǹų��� ����Ʈ */
	public List<Book> sellList(int person_id){
		List<Book> list = dao.sellList(person_id);
		return list;
	}
	
	/* �ǸŻ��� ���� */
	public int sellStateUpdate(Book book) {
		int result = dao.sellStateUpdate(book);
		return result;
	}
	
	/* ���ų��� ����Ʈ  */
	public List<HashMap<String, String>> buyList(int person_id){
		List<HashMap<String, String>> list = dao.buyList(person_id);
		return list;
	}
	
	/* ���ϸ��� ����Ʈ  */
	public List<HashMap<String, String>> mileageList(int person_id){
		List<HashMap<String, String>> list = dao.mileageList(person_id);
		return list;
	}
	
	/* �� ����Ʈ */
	public List<HashMap<String, String>> pickList(int person_id){
		List<HashMap<String, String>> list = dao.pickList(person_id);
		return list;
	}
	
	/* �� ���� */
	public int pickDelete(int pick_id){
		return dao.pickDelete(pick_id);
	}
}
