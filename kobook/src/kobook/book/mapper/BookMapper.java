package kobook.book.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import kobook.book.domain.Book;
import kobook.book.domain.BookPick;
import kobook.book.domain.BookSearch;

public interface BookMapper {
		public int insertBook(Book book);
	   public Integer selectBook_id();
	   public List<Book> listBook(RowBounds row, BookSearch bookSearch);
	   public List<Book> locationBook(RowBounds row, BookSearch bookSearch);
	   public Book selectBook(int book_id);
	   public int countBook(BookSearch bookSearch);
	   public int countlocationBook(BookSearch bookSearch);
//	   public Integer Book_id(int book_id);
	   public Integer selectPick_id();
	   public int insertPick(BookPick bookpick);
	   
	   public int updateBook(Book book);
}
