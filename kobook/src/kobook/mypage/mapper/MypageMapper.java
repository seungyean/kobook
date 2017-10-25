package kobook.mypage.mapper;

import java.util.HashMap;
import java.util.List;

import kobook.book.domain.Book;


public interface MypageMapper {
  
	/* �Ǹų��� ����Ʈ */
	public List<Book> sellList(int person_id);
	
	/* �ǸŻ��� ������Ʈ */
	public int sellStateUpdate(Book book);
	
	/* ���ų��� ����Ʈ */
	public List<HashMap<String, String>> buyList(int person_id);
	
	/* ���ϸ��� ����Ʈ */
	public List<HashMap<String, String>> mileageList(int person_id);
	
	/* �� ����Ʈ */
	public List<HashMap<String, String>> pickList(int person_id);
	
	/* �� ���� */
	public int pickUpdate(int pick_id);
	
	public int sumMileage(int pick_id);
  

}
