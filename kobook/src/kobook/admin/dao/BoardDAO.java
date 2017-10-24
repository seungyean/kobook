package kobook.admin.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kobook.admin.domain.Board;
import kobook.admin.domain.Search;
import kobook.admin.mapper.BoardMapper;
import kobook.admin.mapper.PersonMapper;

public class BoardDAO {
	
	private static BoardDAO dao = new BoardDAO();

	public static BoardDAO getInstance() {
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		String resource = "mybatis-config.xml";
		InputStream in = null;
		try {
			in = Resources.getResourceAsStream(resource);  //InputStream으로 가져오는거까지 됨
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);  //SqlSessionFactoryBuilder 가져오는거까지 됨
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

	//공지사항 출력
	public List<Board> listBoard(int starRow, Search search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Board> list = null;
		
		try {
			return sqlSession.getMapper(BoardMapper.class).listBoard(new RowBounds(starRow, 5), search);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}

	//공지사항 추가
	public int insertBoard(Board board) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(BoardMapper.class).insertBoard(board);
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
	
	//해당게시판 선택
	public Board selectBoard(int board_id){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Board board = null;
		
		try {
			board = sqlSession.getMapper(BoardMapper.class).selectBoard(board_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return board;
	}
	
	//글선택
	public int selectB_id(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			if(sqlSession.getMapper(BoardMapper.class).selectB_id() == null){	//글이 하나도 없구나
				return 0;
			} else{
				return sqlSession.getMapper(BoardMapper.class).selectB_id();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			sqlSession.close();
		}
	}
	
	//공지사항 조회수
	public int increaseHit(int board_id){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		try {
			re = sqlSession.getMapper(BoardMapper.class).increaseHit(board_id);
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
	
	public int countBoard(Search search){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = sqlSession.getMapper(BoardMapper.class).countBoard(search);
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
	
	public Board detailNoti(int board_id){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			return sqlSession.getMapper(BoardMapper.class).detailNoti(board_id);

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			sqlSession.close();
		}

	}
	
	public int deleteNoti(int board_id){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = sqlSession.getMapper(BoardMapper.class).deleteNoti(board_id);
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
	
	public int updateNoti(int board_id){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		try {
			re = sqlSession.getMapper(BoardMapper.class).updateNoti(board_id);
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
