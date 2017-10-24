package kobook.message.dao;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kobook.message.dao.MessageDAO;
import kobook.message.domain.Message;
import kobook.message.mapper.MessageMapper;

public class MessageDAO {
private static MessageDAO dao = new MessageDAO();
	
	public static MessageDAO getInstance(){
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		String resource = "mybatis-config.xml";
		InputStream in = null;
		try {
			in = Resources.getResourceAsStream(resource);	//inputstream으로 가져오는거까지 됨
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return new SqlSessionFactoryBuilder().build(in);	//sqlsessionfactory를 리턴
	}
	
	public int selectM_id(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			if(sqlSession.getMapper(MessageMapper.class).selectM_id() == null){	//글이 하나도 없구나
				return 0;
			} else{
				return sqlSession.getMapper(MessageMapper.class).selectM_id();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			sqlSession.close();
		}
	}
	
	public int sendMessage(Message message){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(MessageMapper.class).sendMessage(message);
			if(re > 0 ){
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return re;
	}
}
