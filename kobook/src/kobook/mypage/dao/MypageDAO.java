package kobook.mypage.dao;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kobook.book.domain.Book;
import kobook.mypage.domain.PaySuccess;
import kobook.mypage.mapper.MypageMapper;

public class MypageDAO {

	private static MypageDAO dao = new MypageDAO();

	public static MypageDAO getInstance() {
		return dao;
	}

	// sql���� ���丮��ü ����
	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream in = null;
		try {
			// ��ǲ��Ʈ���� ������
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);
	}

	// ------------------------------------------------------------------------------------

	/* �Ǹų��� ����Ʈ */
	public List<Book> sellList(int person_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Book> list = null;
		try {
			list = sqlSession.getMapper(MypageMapper.class).sellList(person_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	/* �Ǹų����� �ǸŻ��º��� */
	public int sellStateUpdate(Book book) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int result = -1;
		try {
			result = sqlSession.getMapper(MypageMapper.class).sellStateUpdate(book);
			if (result > 0) {
		       sqlSession.commit();
		    } else {
		       sqlSession.rollback();
		    }
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	/* ���ų��� ����Ʈ */
	public List<HashMap<String, String>> buyList(int person_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<HashMap<String, String>> list = null;
		try {
			list = sqlSession.getMapper(MypageMapper.class).buyList(person_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	/* ���ϸ��� ����Ʈ */
	public  List<HashMap<String, String>> mileageList(int person_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<HashMap<String, String>> list = null;
		try {
			list = sqlSession.getMapper(MypageMapper.class).mileageList(person_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	public List<HashMap<String, String>> cart(int person_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<HashMap<String, String>> list = null;
		try {
			list = sqlSession.getMapper(MypageMapper.class).mileageList(person_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	/* �� ����Ʈ */
	public List<HashMap<String, String>> pickList(int person_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<HashMap<String, String>> list = null;
		try {
			list = sqlSession.getMapper(MypageMapper.class).pickList(person_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	/* �� ���� */
	public int pickUpdate(int pick_id){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(MypageMapper.class).pickUpdate(pick_id);
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
	
	/* ���ϸ��� ����Ʈ */
	public int sumMileage(int person_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int sum = 0;
		try {
			sum = sqlSession.getMapper(MypageMapper.class).sumMileage(person_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return sum;
	}
	
	/* ���� ��� */
	public int insertPay(PaySuccess paySuccess){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(MypageMapper.class).insertPay(paySuccess);
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
	
}
