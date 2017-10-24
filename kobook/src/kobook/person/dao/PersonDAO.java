package kobook.person.dao;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kobook.person.mapper.PersonMapper;


public class PersonDAO {

	private static PersonDAO dao = new PersonDAO();

	public static PersonDAO getInstance() {
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
	
	// DB에 등록되어있는 회원에게만 쪽지를 보내기 위해 email로 회원을 찾는 과정 
		public int searchP_id(String person_email){
			SqlSession sqlSession = getSqlSessionFactory().openSession();
			
			try {
				if(sqlSession.getMapper(PersonMapper.class).searchP_id(person_email) == null){	//그 email을 가진 회원이 없을 경우
					return -1;
				} else{
					return sqlSession.getMapper(PersonMapper.class).searchP_id(person_email);
				}
			} catch (Exception e) {
				e.printStackTrace();
				return -1;
			} finally {
				sqlSession.close();
			}
		}
}
