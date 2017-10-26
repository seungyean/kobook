package kobook.community.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kobook.community.domain.BlackList;
import kobook.community.domain.CommunitySearch;
import kobook.community.mapper.BlackListMapper;

public class BlackListDAO {
	private static BlackListDAO dao = new BlackListDAO();

	public static BlackListDAO getInstance() {
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

	public Integer selectBlack_id() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			if (sqlSession.getMapper(BlackListMapper.class).selectBlack_id() == null) {
				return 0;
			} else {
				return sqlSession.getMapper(BlackListMapper.class).selectBlack_id();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			sqlSession.close();
		}
	}

	public int insertBlack(BlackList black) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(BlackListMapper.class).insertBlack(black);
			if (re > 0) {
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

	public List<BlackList> listBlackList(int startRow, CommunitySearch search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<BlackList> list = null;
		try {
			list = sqlSession.getMapper(BlackListMapper.class).listBlackList(new RowBounds(startRow, 5), search);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	public int countBlack(CommunitySearch search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = sqlSession.getMapper(BlackListMapper.class).countBlack(search);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return re;
	}

	// public Person selectPersonName(int person_id) {
	// SqlSession sqlSession = getSqlSessionFactory().openSession();
	// Person person = null;
	// try {
	// person =
	// sqlSession.getMapper(BlackListMapper.class).selectPersonName(person_id);
	// } catch (Exception e) {
	// e.printStackTrace();
	// } finally {
	// sqlSession.close();
	// }
	// return person;
	// }

	public BlackList selectBlackDetail(int black_id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		BlackList black = null;
		try {
			black = sqlSession.getMapper(BlackListMapper.class).selectBlackDetail(black_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return black;
	}
	
	public int updateBlackList(BlackList black) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(BlackListMapper.class).updateBlackList(black);
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
	
	public int deleteBlackList(int black_id) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(BlackListMapper.class).deleteBlackList(black_id);
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
	
	public int updateBlack_id(int black_id) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(BlackListMapper.class).updateBlack_id(black_id);
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
	
}
