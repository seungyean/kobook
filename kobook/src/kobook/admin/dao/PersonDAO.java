package kobook.admin.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kobook.admin.domain.Search;
import kobook.admin.mapper.PersonMapper;
import kobook.admin.domain.Person;

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
	
	public List<Person> listPerson(int starRow, Search search){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Person> list = null;
		try {
			return sqlSession.getMapper(PersonMapper.class).listPerson(new RowBounds(starRow, 5), search);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		}
	
	public Person detailPerson(int person_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			return sqlSession.getMapper(PersonMapper.class).detailPerson(person_id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	return null;
	
	}
	
	public int deletePerson(int person_id){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(PersonMapper.class).deletePerson(person_id);
			if(re >0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return re;
	}
	
	public int gradeupdatePerson(Person person){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(PersonMapper.class).gradeupdatePerson(person);
			if(re >0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return re;
	}
	
	public int kindupdatePerson(Person person){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(PersonMapper.class).gradeupdatePerson(person);
			if(re >0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return re;
	}
	
	public int countPerson(Search search){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = sqlSession.getMapper(PersonMapper.class).countPerson(search);
			if(re > 0){
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
	
	public Person selectPerson(int person_id){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Person person = null;
		
		try {
			person = sqlSession.getMapper(PersonMapper.class).selectPerson(person_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return person;
	}
	
	public int selectP_id(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			if(sqlSession.getMapper(PersonMapper.class).selectP_id() == null){	//글이 하나도 없구나
				return 0;
			} else{
				return sqlSession.getMapper(PersonMapper.class).selectP_id();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			sqlSession.close();
		}
	}
	
}
