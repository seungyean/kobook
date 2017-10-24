package kobook.community.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import kobook.community.domain.CommunitySearch;
import kobook.community.domain.Donate;
import kobook.community.domain.DonateReply;

public interface DonateMapper {

	public Integer selectDonate_id();
	public int insertDonate(Donate donate);
	public List<Donate> listDonate(RowBounds row, CommunitySearch communitySearch);
	public int countDonate(CommunitySearch communitySearch);
	public Donate selectDonateDetail(int donate_id);
	public int donateHitCount(int donate_id);
	public int updateDonate(Donate donate);
	public int deleteDonate(int donate_id);
	public int updateDonate_id(int donate_id);
	public Integer selectReply_id();
	public int insertDonateReply(DonateReply reply);
	public List<DonateReply> listDonateReply(int donate_id);
	public int updateDonateReply(DonateReply reply);
	public int deleteDonateReply(int reply_id);
	public int updateReply_id(int donate_id);
	public int countReply(int donate_id);
	public int deleteAllReply(int donate_id);
	
}
