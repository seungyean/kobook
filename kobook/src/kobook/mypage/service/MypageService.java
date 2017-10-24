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
	public List<Book> sellList(){
		List<Book> list = dao.sellList();
		return list;
	}
	
	/* �ǸŻ��� ���� */
	public int sellStateUpdate(Book book) {
		int result = dao.sellStateUpdate(book);
		return result;
	}
	
	/* ���ų��� ����Ʈ  */
	public List<HashMap<String, String>> buyList(){
		List<HashMap<String, String>> list = dao.buyList();
		return list;
	}
	
	/* ���ϸ��� ����Ʈ  */
	public List<HashMap<String, String>> mileageList(){
		List<HashMap<String, String>> list = dao.mileageList();
		return list;
	}
	
	/* �� ����Ʈ */
	public List<HashMap<String, String>> pickList(){
		List<HashMap<String, String>> list = dao.pickList();
		return list;
	}
	
	/* �� ���� */
	public int pickDelete(int pick_id){
		return dao.pickDelete(pick_id);
	}
}
