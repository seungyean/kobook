package kobook.mypage.dao;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kobook.book.domain.Book;
import kobook.mypage.domain.Mileage;
import kobook.mypage.domain.PaySuccess;
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
	
	/* 마일리지 리스트 */
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
	
	/* 찜 리스트 */
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
	
	/* 찜 삭제 */
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
	
	/* 마일리지 리스트 */
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
	
	/* 결제 등록 */
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
	
	/* 결제번호 증가 */
	public int selectPay_id(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			if(sqlSession.getMapper(MypageMapper.class).selectPay_id() == null){
				return 0;
			}else {
				return sqlSession.getMapper(MypageMapper.class).selectPay_id();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			sqlSession.close();
		}
	}
	
	/* 결제 등록 */
	public int insertMileage(Mileage mileage){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(MypageMapper.class).insertMileage(mileage);
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
	
	/* 마일리지번호 증가 */
	public int selectM_id(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			if(sqlSession.getMapper(MypageMapper.class).selectM_id() == null){
				return 0;
			}else {
				return sqlSession.getMapper(MypageMapper.class).selectM_id();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			sqlSession.close();
		}
	}
	
	/* 마일리지 적립 */
	public int mileagePointUpdate(HashMap<String, Integer> map){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(MypageMapper.class).mileagePointUpdate(map);
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
