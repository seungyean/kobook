package kobook.mypage.dao;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kobook.book.domain.Book;
import kobook.mypage.mapper.MypageMapper;

public class MypageDAO {

	private static MypageDAO dao = new MypageDAO();

	public static MypageDAO getInstance() {
		return dao;
	}

	// sql세션 팩토리객체 구현
	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream in = null;
		try {
			// 인풋스트림은 가져옴
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);
	}

	// ------------------------------------------------------------------------------------

	/* 판매내역 리스트 */
	public List<Book> sellList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Book> list = null;
		try {
			list = sqlSession.getMapper(MypageMapper.class).sellList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	/* 판매내역에 판매상태변경 */
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

	/* 구매내역 리스트 */
	public List<HashMap<String, String>> buyList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<HashMap<String, String>> list = null;
		try {
			list = sqlSession.getMapper(MypageMapper.class).buyList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	/* 마일리지 리스트 */
	public  List<HashMap<String, String>> mileageList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<HashMap<String, String>> list = null;
		try {
			list = sqlSession.getMapper(MypageMapper.class).mileageList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	public List<HashMap<String, String>> cart() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<HashMap<String, String>> list = null;
		try {
			list = sqlSession.getMapper(MypageMapper.class).mileageList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	/* 찜 리스트 */
	public List<HashMap<String, String>> pickList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<HashMap<String, String>> list = null;
		try {
			list = sqlSession.getMapper(MypageMapper.class).pickList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	/* 찜 삭제 */
	public int pickDelete(int pick_id){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(MypageMapper.class).pickDelete(pick_id);
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
