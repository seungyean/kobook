package kobook.mypage.mapper;

import java.util.HashMap;
import java.util.List;

import com.sun.javafx.collections.MappingChange.Map;

import kobook.mypage.domain.Book;

public interface MypageMapper {
  
	/* �Ǹų��� ����Ʈ */
	public List<Book> sellList();
	
	/* �ǸŻ��� ������Ʈ */
	public int sellStateUpdate(Book book);
	
	/* ���ų��� ����Ʈ */
	public List<HashMap<String, String>> buyList();
	
	/* ���ϸ��� ����Ʈ */
	public List<HashMap<String, String>> mileageList();
	
	/* �� ����Ʈ */
	public List<HashMap<String, String>> pickList();
	
	/* �� ���� */
	public int pickDelete(int pick_id);
  

}
