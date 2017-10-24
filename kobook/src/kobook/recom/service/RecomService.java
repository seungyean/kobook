package kobook.recom.service;

import java.util.List;

import kobook.recom.dao.RecommendDAO;
import kobook.recom.domain.Alarm;
import kobook.recom.domain.Favorite;
import kobook.recom.domain.FavoriteBook;

public class RecomService {
	
	private static RecomService service = new RecomService();
	private static RecommendDAO dao;
	
	public static RecomService getInstance(){
		dao = RecommendDAO.getinstance();
		return service;
	}
	
	public List<FavoriteBook> getFavoriteService(int person_id){

		List<FavoriteBook> list = dao.getFavorite(person_id);
		return list;
	}
	
	public int deleteFavoriteService(Favorite favorite){
		
		int re = dao.deleteFavorite(favorite);
		
		if(re > 0){
			System.out.println("성공적인 딜리트");
		}
		else{
			System.out.println("딜리트 실패");
		}
		
		return re;
	}

	public List<Alarm> AlarmListService(int person_id){

		List<Alarm> alarmList = dao.alarmList(person_id);
		return alarmList;
	}
	
	public int alarmUpdate(Alarm alarm){
		
		int re = dao.alarmUpdate(alarm);
		
		if(re > 0){
			System.out.println("조회해씀");
		}
		else{
			System.out.println("조회 바꾸기 실패 ㅠㅠㅠㅠㅠㅠ");
		}
		
		return re;
	}
}
