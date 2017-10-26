package kobook.community.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kobook.community.domain.CommunitySearch;
import kobook.community.domain.Photo;
import kobook.community.mapper.PhotoMapper;



public class PhotoDAO {
	private static PhotoDAO dao = new PhotoDAO();

	public static PhotoDAO getInstance() {
		return dao;
	}

	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream in = null;
		try {
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);
	}
	
	public Integer selectPhoto_id() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			if (sqlSession.getMapper(PhotoMapper.class).selectPhoto_id() == null) {
				return 0;
			} else {
				return sqlSession.getMapper(PhotoMapper.class).selectPhoto_id();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			sqlSession.close();
		}
	}
	
	public int insertPhoto(Photo photo) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(PhotoMapper.class).insertPhoto(photo);
			if(re > 0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}
	
	public List<Photo> listPhoto(int startRow, CommunitySearch search){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Photo> list = null;
		try {
			list = sqlSession.getMapper(PhotoMapper.class).listPhoto(new RowBounds(startRow, 9), search);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	public int countPhoto(CommunitySearch search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = sqlSession.getMapper(PhotoMapper.class).countPhoto(search);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return re;
	}

	public Photo selectPhotoDetail(int photo_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Photo photo = null;
		try {
			photo = sqlSession.getMapper(PhotoMapper.class).selectPhotoDetail(photo_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return photo;
	}

	public int photoHitCount(int photo_id) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(PhotoMapper.class).photoHitCount(photo_id);
			if(re > 0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}

	public int updatePhoto(Photo photo) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(PhotoMapper.class).updatePhoto(photo);
			if(re > 0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}
	
	public int deletePhoto(int photo_id) {
		int re= -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(PhotoMapper.class).deletePhoto(photo_id);
			if(re > 0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}
	
	public int updatePhoto_id(int photo_id) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(PhotoMapper.class).updatePhoto_id(photo_id);
			if(re > 0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}
	
	public int photoHeartUp(int photo_id){
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(PhotoMapper.class).photoHeartUp(photo_id);
			if(re > 0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
		return re;
	}
	public int photoHeartDown(int photo_id){
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(PhotoMapper.class).photoHeartDown(photo_id);
			if(re > 0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
		return re;		
	}
		
/*	

	
//	public Person selectPersonName(int person_id, int donate_id) {
//		SqlSession sqlSession = getSqlSessionFactory().openSession();
//		Person person = null;
//		try {
//			person = sqlSession.getMapper(PhotoMapper.class).selectPersonName(person_id, donate_id);
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			sqlSession.close();
//		}
//		return person;
//	}

	*/

	
}
