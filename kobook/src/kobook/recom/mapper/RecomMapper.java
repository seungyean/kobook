package kobook.recom.mapper;

import java.util.List;

import kobook.recom.domain.Alarm;
import kobook.recom.domain.Favorite;
import kobook.recom.domain.FavoriteBook;
import kobook.recom.domain.NewAlarm;

public interface RecomMapper {

	public List<FavoriteBook> getFavorite(int person_id);
	public int deleteFavorite(Favorite favorite);
	public List<Alarm> alarmList(NewAlarm newAlarm);
	
}
