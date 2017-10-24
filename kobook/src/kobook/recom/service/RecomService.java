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
			System.out.println("失因旋昔 渠軒闘");
		}
		else{
			System.out.println("渠軒闘 叔鳶");
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
			System.out.println("繕噺背掌");
		}
		else{
			System.out.println("繕噺 郊荷奄 叔鳶 ばばばばばば");
		}
		
		return re;
	}
}
