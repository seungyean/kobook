package kobook.recom.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kobook.recom.domain.Alarm;
import kobook.recom.domain.Favorite;
import kobook.recom.domain.FavoriteBook;
import kobook.recom.mapper.RecomMapper;


public class RecommendDAO {

	private static RecommendDAO dao = new RecommendDAO();
	
	public static RecommendDAO getinstance(){
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		String resource = "mybatis-config.xml";
		InputStream in = null;
		
		try {
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);
	}
	
	public List<FavoriteBook> getFavorite(int person_id){
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			return sqlSession.getMapper(RecomMapper.class).getFavorite(person_id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return null;
	}

	public int deleteFavorite(Favorite favorite){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(RecomMapper.class).deleteFavorite(favorite);
			if(re > 0) {
	            sqlSession.commit();
	         }else {
	            sqlSession.rollback();
	         }
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return re;
	}	
	
	public List<Alarm> alarmList(int person_id){
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			return sqlSession.getMapper(RecomMapper.class).alarmList(person_id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return null;
	}
	
	public int alarmUpdate(Alarm alarm){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(RecomMapper.class).alarmUpdate(alarm);
			if(re > 0) {
	            sqlSession.commit();
	         }else {
	            sqlSession.rollback();
	         }
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return re;
	}

}
