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
	
	// DB�� ��ϵǾ��ִ� ȸ�����Ը� ������ ������ ���� email�� ȸ���� ã�� ���� 
		public int searchP_id(String person_email){
			SqlSession sqlSession = getSqlSessionFactory().openSession();
			
			try {
				if(sqlSession.getMapper(PersonMapper.class).searchP_id(person_email) == null){	//�� email�� ���� ȸ���� ���� ���
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
