package kobook.recom.service;

import java.util.List;

import kobook.recom.dao.RecommendDAO;
import kobook.recom.domain.Alarm;
import kobook.recom.domain.Favorite;
import kobook.recom.domain.FavoriteBook;
import kobook.recom.domain.NewAlarm;

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
			System.out.println("¼º°øÀûÀÎ µô¸®Æ®");
		}
		else{
			System.out.println("µô¸®Æ® ½ÇÆÐ");
		}
		
		return re;
	}

	public List<Alarm> AlarmListService(NewAlarm newAlarm){

		List<Alarm> alarmList = dao.alarmList(newAlarm);
		return alarmList;
	}
	
}
