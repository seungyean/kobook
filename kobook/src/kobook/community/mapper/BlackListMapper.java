package kobook.community.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import kobook.community.domain.BlackList;
import kobook.community.domain.CommunitySearch;
//import kobook.community.domain.Person;

public interface BlackListMapper {
	public Integer selectBlack_id();
	public int insertBlack(BlackList black);
	public List<BlackList> listBlackList(RowBounds row, CommunitySearch search);
	public int countBlack(CommunitySearch search);
//	public Person selectPersonName(int person_id);
	public BlackList selectBlackDetail(int black_id);
	public int updateBlackList(BlackList black);
	public int deleteBlackList(int black_id);
	public int updateBlack_id(int black_id);

}
