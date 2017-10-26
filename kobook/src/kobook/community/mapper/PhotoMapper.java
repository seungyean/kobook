package kobook.community.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import kobook.community.domain.Photo;
import kobook.community.domain.CommunitySearch;

public interface PhotoMapper {
	public Integer selectPhoto_id();
	public int insertPhoto(Photo photo);	
	public List<Photo> listPhoto(RowBounds row, CommunitySearch search);
	public int countPhoto(CommunitySearch search);
	public Photo selectPhotoDetail(int photo_id);
	public int photoHitCount(int photo_id);
	public int updatePhoto(Photo photo);
	public int deletePhoto(int photo_id);
	public int updatePhoto_id(int photo_id);
	public int photoHeartUp(int photo_id);
	public int photoHeartDown(int photo_id);
	
/*
	
//	public Person selectPersonName(int person_id, int donate_id);

	*/
}
