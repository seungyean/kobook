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
			in = Resources.getResourceAsStream(resource);  //InputStream���� �������°ű��� ��
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);  //SqlSessionFactoryBuilder �������°ű��� ��
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

	//�������� ���
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

	//�������� �߰�
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
	
	//�ش�Խ��� ����
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
	
	//�ۼ���
	public int selectB_id(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			if(sqlSession.getMapper(BoardMapper.class).selectB_id() == null){	//���� �ϳ��� ������
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
	
	//�������� ��ȸ��
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
