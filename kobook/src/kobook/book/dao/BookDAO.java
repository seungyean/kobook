package kobook.book.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kobook.book.domain.Book;
import kobook.book.domain.BookPick;
import kobook.book.domain.BookSearch;
import kobook.book.mapper.BookMapper;

public class BookDAO {

	private static BookDAO dao = new BookDAO();

	   public static BookDAO getInstance() {
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

	   public int selectBook_id() {
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      try {
	         if (sqlSession.getMapper(BookMapper.class).selectBook_id() == null) {
	            return 0;
	         } else {
	            return sqlSession.getMapper(BookMapper.class).selectBook_id();
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	         return 0;
	      } finally {
	         sqlSession.close();
	      }
	   }

	   public int insertBook(Book book) {
	      int re = -1;
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      try {
	         re = sqlSession.getMapper(BookMapper.class).insertBook(book);
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
	   
	   public List<Book> listBook(int startRow, BookSearch bookSearch) {
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      List<Book> list = null;
	      try {
	         list = sqlSession.getMapper(BookMapper.class).listBook(new RowBounds(startRow, 9), bookSearch);
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return list;
	   }
	   
	   public List<Book> locationBook(int startRow, BookSearch bookSearch) {
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      List<Book> list = null;
	      try {
	         list = sqlSession.getMapper(BookMapper.class).locationBook(new RowBounds(startRow, 9), bookSearch);
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return list;
	   }
	   
	   public Book selectBook(int book_id) {
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      Book book = null;
	      try {
	         book = sqlSession.getMapper(BookMapper.class).selectBook(book_id);
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return book;
	   }
	   
	   
	   
//	   public Integer Book_id(int book_id) {
//		      SqlSession sqlSession = getSqlSessionFactory().openSession();
//		      try {
//		         if (sqlSession.getMapper(BookMapper.class).Book_id(book_id) == null) {
//		            return 0;
//		         } else {
//		            return sqlSession.getMapper(BookMapper.class).Book_id(book_id);
//		         }
//		      } catch (Exception e) {
//		         e.printStackTrace();
//		         return 0;
//		      } finally {
//		         sqlSession.close();
//		      }
//		   }
	   
	   public Integer selectPick_id() {
		      SqlSession sqlSession = getSqlSessionFactory().openSession();
		      try {
		         if (sqlSession.getMapper(BookMapper.class).selectPick_id() == null) {
		            return 0;
		         } else {
		            return sqlSession.getMapper(BookMapper.class).selectPick_id();
		         }
		      } catch (Exception e) {
		         e.printStackTrace();
		         return 0;
		      } finally {
		         sqlSession.close();
		      }
		   }
	   
	   public int insertPick(BookPick bookpick) {
		      SqlSession sqlSession = getSqlSessionFactory().openSession();
		      int re=-1;

		      try {
		    	  re = sqlSession.getMapper(BookMapper.class).insertPick(bookpick);

			      if(re>0) {
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
	   
	   
	   
	   
	/*   public int searchBook(Book book){
	      int re = -1;
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      try {
	         re = sqlSession.getMapper(BookMapper.class).searchBook(book);
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
	      
	   }*/
	   
	/*   public int updateHit(int book_id) {
	      int re = -1;
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      try {
	         re = sqlSession.getMapper(BookMapper.class).updateHit(book_id);
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
	   }*/
	   
	/*   public void updateStep(HashMap<String, Integer> map) {
	      int re = -1;
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      try {
	         re = sqlSession.getMapper(BookMapper.class).updateStep(map);
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
	   }*/
	   
	   public int countBook(BookSearch bookSearch){
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      int re = -1;
	      try {
	         re = sqlSession.getMapper(BookMapper.class).countBook(bookSearch);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }finally {
	         sqlSession.close();
	      }

	      return re;
	   }   
	   
	   public int countlocationBook(BookSearch bookSearch){
		      SqlSession sqlSession = getSqlSessionFactory().openSession();
		      int re = -1;
		      try {
		         re = sqlSession.getMapper(BookMapper.class).countlocationBook(bookSearch);
		      } catch (Exception e) {
		         e.printStackTrace();
		      }finally {
		         sqlSession.close();
		      }

		      return re;
		   }   
	   
	   
	   
	   public int updateBook(Book book) {
	      int re = -1;
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      System.out.println(re);
	      try {
	         re = sqlSession.getMapper(BookMapper.class).updateBook(book);
	         System.out.println(re);
	         if(re > 0) {
	            System.out.println(re);
	            sqlSession.commit();
	            System.out.println(re);
	         }else {
	            sqlSession.rollback();
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      System.out.println(re);
	      return re;
	   }
	/*   

	   
	   public int selectR_id() {
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      try {
	         if (sqlSession.getMapper(BookMapper.class).selectR_id() == null) {
	            return 0;
	         } else {
	            return sqlSession.getMapper(BookMapper.class).selectR_id();
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	         return 0;
	      } finally {
	         sqlSession.close();
	      }
	   }
	   
	   public int insertReply(Reply reply) {
	      int re = -1;
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      try {
	         re = sqlSession.getMapper(BookMapper.class).insertReply(reply);
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
	   public List<Reply> listReply(int book_id){
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      List<Reply> list = null;
	      try {
	         list = sqlSession.getMapper(BookMapper.class).listReply(book_id);
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return list;
	   }
	   
	   public int deleteReply(int r_id) {
	      int re = -1;
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      try {
	         re = sqlSession.getMapper(BookMapper.class).deleteReply(r_id);
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
	   public int deleteBook(int book_id) {
	      int re = -1;
	      SqlSession sqlSession = getSqlSessionFactory().openSession();
	      try {
	         re = sqlSession.getMapper(BookMapper.class).deleteBook(book_id);
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
	   }*/

}
